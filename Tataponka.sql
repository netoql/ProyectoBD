
--1-
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
--10.-Obtenga el monto mensual obtenido de los tratamientos realizados por sucursal.
CREATE OR REPLACE VIEW vwMONTOSUC
AS
SELECT nombreSuc, MES, SUM(PAGO) AS MONTO
FROM (SELECT T.idOdoTrat, TO_CHAR(T.fechaInicio, 'MM') AS MES, T.pagoTratamiento AS PAGO, O.nombreSuc
        FROM (SELECT idOdoTrat, fechaInicio, pagoTratamiento 
                FROM TRATAMIENTO_AFILIADO) T
        JOIN 
            (SELECT idOdoTrat, nombreSuc 
                FROM ODONTOLOGO_TRATAMIENTO) O
        ON T.idOdoTrat = O.idOdoTrat)
GROUP BY nombreSuc, MES;

--5-Realizar una función que realice el cálculo del costo del tratamiento de los afiliados grupales.
CREATE OR REPLACE FUNCTION ftCOSTO(vTratamiento IN VARCHAR2, vNom IN VARCHAR2)
RETURN NUMBER
IS
vMonto TRATAMIENTO.costoTratamiento%TYPE;
vDesc GRUPAL.rebajaProcentaje%TYPE;
BEGIN
SELECT rebajaProcentaje INTO vDesc
FROM GRUPAL
WHERE nomConvenio=vNom;
SELECT costoTratamiento INTO vMonto
FROM TRATAMIENTO
WHERE nombreTratamiento=vTratamiento;
RETURN(vMonto-(vMonto*(vDesc/100)));
END ftCOSTO;
/

SELECT ftCOSTO('Coronas','ConvenioXYZ') FROM DUAL;

--7.-Muestre los nombres de los afiliados y todos los datos de los tratamientos que les fueron aplicados por sucursal.
CREATE OR REPLACE VIEW vwDATOS_AFI_TRAT
AS
SELECT 
    ot.nombreSuc, a.nombreAfi, a.apePatAfi, a.apeMatAfi, ot.cedulaOdont,ot.nombreTratamiento,t.costoTratamiento
FROM 
    AFILIACION a
JOIN 
    TRATAMIENTO_AFILIADO ta ON a.idCedula = ta.idCedula
JOIN 
    ODONTOLOGO_TRATAMIENTO ot ON ta.idOdoTrat = ot.idOdoTrat
JOIN 
    TRATAMIENTO t ON ot.nombreTratamiento = t.nombreTratamiento;
