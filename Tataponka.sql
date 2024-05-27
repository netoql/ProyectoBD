CREATE OR REPLACE TRIGGER HIST_REG
BEFORE INSERT ON TRATAMIENTO_AFILIADO
FOR EACH ROW
DECLARE
    vIdHist CHAR(10);
BEGIN
    SELECT idHist
    INTO vIdHist
    FROM HISTORIAL h
    WHERE :NEW.idCedula = h.idCedula;
    :NEW.idHist := vIdHist;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20001, 'El afiliado no tiene un historial asociado');
END;
/
/*
---------------------- Testing Data ----------------------------------------------------------------
INSERT INTO CITA (idCita, idCedula, nombreSuc, cedulaOdont, fechaCita, numConsultorio, finalizadoCita) VALUES 
(12, '8899001122', 'Sucursal10', 'ODONT55566', TO_DATE('2024-05-28', 'YYYY-MM-DD'),110,'s');
INSERT INTO TRATAMIENTO_AFILIADO (idCedula, idOdoTrat, fechaInicio, finalizado, pagoTratamiento) VALUES 
('8899001122', 3, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 's', 1000.00);

select * from TRATAMIENTO_AFILIADO;
DELETE FROM TRATAMIENTO_AFILIADO WHERE IDHIST='0000000000';
------------------------------------------------------------------------------------------------------
*/