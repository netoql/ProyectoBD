--Restriccion 1:Los odontólogos trabajan en diferentes sucursales y cada odontólogo puede tener distintos horarios de atención en cada sucursal.
CREATE OR REPLACE TRIGGER Horario_Check
BEFORE INSERT OR UPDATE 
ON ODONTOLOGO_SUCURSAL
FOR EACH ROW
DECLARE
    CURSOR horario_cursor IS
        SELECT horario
        FROM ODONTOLOGO_SUCURSAL
        WHERE cedulaOdont = :NEW.cedulaOdont
          AND ROWID != :NEW.ROWID; -- Ensure we are not checking against the same row in case of update
    vHorario ODONTOLOGO_SUCURSAL.horario%TYPE;
BEGIN
    OPEN horario_cursor;
    LOOP
        FETCH horario_cursor INTO vHorario;
        EXIT WHEN horario_cursor%NOTFOUND;
        
        IF :NEW.horario = vHorario THEN
            RAISE_APPLICATION_ERROR(-20002, 'El horario del odontólogo ya está ocupado');
        END IF;
    END LOOP;
    CLOSE horario_cursor;
END Horario_Check;
/
/*
SHOW ERRORS;
----------------TESTING DATA--------------------------------------------------------------------
INSERT INTO ODONTOLOGO_SUCURSAL (nombreSuc, cedulaOdont, horario) VALUES 
('Sucursal2', 'ODONT12345', TO_DATE('09:00:00', 'HH24:MI:SS'));
INSERT INTO ODONTOLOGO_SUCURSAL (nombreSuc, cedulaOdont, horario) VALUES 
('Sucursal2', 'ODONT12345', TO_DATE('10:00:00', 'HH24:MI:SS'));
-------------------------------------------------------------------------------------------------
*/
-----------------SQL EXPERT
CREATE OR REPLACE TRIGGER AFILIADO_ATENDIDO_CHECK
BEFORE INSERT ON TRATAMIENTO_AFILIADO
FOR EACH ROW
DECLARE
    v_finalizadoCita CHAR(1);
BEGIN
    -- Nested SELECT to find if there exists a matching CITA entry
    BEGIN
        SELECT c.finalizadoCita
        INTO v_finalizadoCita
        FROM CITA c
        WHERE c.idCedula = :NEW.idCedula
          AND c.cedulaOdont = (SELECT o.cedulaOdont 
                               FROM ODONTOLOGO_TRATAMIENTO o
                               WHERE o.idOdoTrat = :NEW.idOdoTrat);
        IF v_finalizadoCita = 'n' THEN
            RAISE_APPLICATION_ERROR(-20001, 'El paciente no ha terminado ninguna cita con el odontólogo.');
        END IF;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE_APPLICATION_ERROR(-20001, 'El paciente no ha tenido ninguna cita con el odontólogo.');
    END;
END AFILIADO_ATENDIDO_CHECK;
/
/*
----------------TESTING DATA--------------------------------------------------------------------
INSERT INTO TRATAMIENTO_AFILIADO (idCedula, idOdoTrat, fechaInicio, finalizado, pagoTratamiento, idHist) VALUES 
('7788990011', 8, TO_DATE('2024-06-05', 'YYYY-MM-DD'), 'n', 800.00, 'HIST1222');
INSERT INTO CITA (idCita, idHist, idCedula, nombreSuc, cedulaOdont, fechaCita, numConsultorio, finalizadoCita) VALUES 
(11, 'HIST9201', '6677889900', 'Sucursal8', 'ODONT33344', TO_DATE('2024-04-24', 'YYYY-MM-DD'), 108, 's');
INSERT INTO TRATAMIENTO_AFILIADO (idCedula, idOdoTrat, fechaInicio, finalizado, pagoTratamiento, idHist) VALUES 
('6677889900', 9, TO_DATE('2024-06-01', 'YYYY-MM-DD'), 's', 950.00, 'HIST9201');
-------------------------------------------------------------------------------------------------
*/

--Un odontólogo sólo puede practicar un tratamiento por vez a cada afiliado.
CREATE OR REPLACE TRIGGER TRATAMIENTO_CHECK
BEFORE INSERT OR UPDATE ON TRATAMIENTO_AFILIADO
FOR EACH ROW
DECLARE
    vFinalizado CHAR(1);
BEGIN
    BEGIN
        SELECT finalizado
        INTO vFinalizado
        FROM TRATAMIENTO_AFILIADO
        WHERE idCedula = :NEW.idCedula
          AND idOdoTrat = :NEW.idOdoTrat
          AND ROWNUM = 1; -- Ensure we get at most one record, if it exists

        IF vFinalizado = 'n' THEN
            RAISE_APPLICATION_ERROR(-20003, 'El paciente ya lleva un tratamiento con este odontólogo');
        END IF;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            -- No existing record found, so it's safe to insert or update
            NULL;
    END;
END TRATAMIENTO_CHECK;
/

/*
----------------TESTING DATA--------------------------------------------------------------------
INSERT INTO TRATAMIENTO_AFILIADO (idCedula, idOdoTrat, fechaInicio, finalizado, pagoTratamiento, idHist) VALUES 
('1234567890', 1, TO_DATE('2024-06-01', 'YYYY-MM-DD'), 'n', 500.00, 'HIST1234');
INSERT INTO TRATAMIENTO_AFILIADO (idCedula, idOdoTrat, fechaInicio, finalizado, pagoTratamiento, idHist) VALUES 
('1234567890', 2, TO_DATE('2024-05-01', 'YYYY-MM-DD'), 'n', 500.00, 'HIST1234');
-------------------------------------------------------------------------------------------------
*/

