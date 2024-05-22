--INICIO PROYECTO V1 BD

--BORRAR TABLAS
DROP TABLE SUCURSAL CASCADE CONSTRAINTS;
DROP TABLE CONSULTORIO CASCADE CONSTRAINTS;
DROP TABLE EQUIPAMIENTO CASCADE CONSTRAINTS;
DROP TABLE CONSULTORIO_ODONTOLOGO CASCADE CONSTRAINTS;
DROP TABLE SUCURSAL_ODONTOLOGO CASCADE CONSTRAINTS;
DROP TABLE ODONTOLOGO CASCADE CONSTRAINTS;
DROP TABLE ODONTOLOGO_TRATAMIENTO CASCADE CONSTRAINTS;
DROP TABLE ATENCION_PACIENTE CASCADE CONSTRAINTS;
DROP TABLE TRATAMIENTO CASCADE CONSTRAINTS;
DROP TABLE TRATAMIENTO_AFILIADO CASCADE CONSTRAINTS;
DROP TABLE AFILIACION CASCADE CONSTRAINTS;
DROP TABLE INDIVIDUAL CASCADE CONSTRAINTS;
DROP TABLE GRUPAL CASCADE CONSTRAINTS;
--SUCURSAL
CREATE TABLE SUCURSAL(
nombreSuc VARCHAR2(20),
ciudad VARCHAR2(20),
calle VARCHAR2(20),
numero NUMERIC(10),
CONSTRAINT PK_SUCURSAL PRIMARY KEY (nombreSuc)
);

CREATE TABLE CONSULTORIO(
numConsultorio NUMERIC(10),
nombreSuc VARCHAR2(20), --viene de sucursal
CONSTRAINT PK_CONSULTORIO PRIMARY KEY(numConsultorio,nombreSuc),
CONSTRAINT FK_CONSULTORIO FOREIGN KEY(nombreSuc) REFERENCES SUCURSAL(numSuc)
)

CREATE TABLE EQUIPAMIENTO(
numSerie NUMERIC(10),--cambie el nombre de noSerie a numSerie para que todos los numeros se represente como num
nombreEquip VARCHAR2(20),
fechaMantenimiento DATE,
numConsultorio NUMERIC(10),
nombreSuc VARCHAR2(2O),
CONSTRAINT PK_EQUIPAMIENTO PRIMARY KEY(numSerie),
CONSTRAINT FK_EQUIPAMIENTO FOREIGN KEY(numConsultorio,nombreSuc) REFERENCES CONSULTORIO(numConsultorio,nombreSuc)
)

CREATE TABLE CONSULTORIO_ODONTOLOGO(
nombreSuc VARCHAR2(20),
cedulaOdont CHAR(10),
numConsultorio NUMERIC(10),
CONSTRAINT PK_CONSULTORIO_ODONTOLOGO PRIMARY KEY(nombreSuc,cedulaOdont,numConsultorio),
CONSTRAINT FK_CONSULTORIO_ODONTOLOGO_C FOREIGN KEY(numConsultorio,nombreSuc) REFERENCES CONSULTORIO(numConsultorio,nombreSuc),
CONSTRAINT FK_CONSULTORIO_ODONTOLOGO_SO FOREIGN KEY(cedulaOdonT) REFERENCES SUCURSAL_ODONTOLOGO(cedulaOdont)
);

CREATE TABLE SUCURSAL_ODONTOLOGO(
nombreSuc VARCHAR2(20),
cedulaOdont CHAR(10),
CONSTRAINT PK_SUCURSAL_ODONTOLOGO PRIMARY KEY(nombreSuc,cedulaOdont),
CONSTRAINT FK_SUCURSAL_ODONTOLOGO_S FOREIGN KEY(nombreSuc) REFERENCES SUCURSAL(nombreSuc),
CONSTRAINT FK_SUCURSAL_ODONTOLOGO_O FOREIGN KEY(cedulaOdont) REFERENCES ODONTOLOGO(cedulaOdont)
);

CREATE TABLE ODONTOLOGO(
cedulaOdont CHAR(10),
nombre VARCHAR2(20),
apePatOdont VARCHAR2(20),
apeMatOdont VARCHAR2(2O),
tratamientoOdont VARCHAR2(20),--CREO QUE EN ELLA SE PONIA UNA CS1
especialidad VARCHAR2(20),
horaAten DATE,
CONSTRAINT PK_ODONTOLOGO PRIMARY KEY(cedulaOdont) 
);

CREATE TABLE ODONTOLOGO_TRATAMIENTO(
cedulaOdont CHAR(10),
nombreTratamiento VARCHAR2(20),--CHECAR
CONSTRAINT FK_ODONTOLOGO_TRATAMIENTO_O FOREIGN KEY(cedulaOdont) REFERENCES ODONTOLOGO(cedulaOdont),
CONSTRAINT FK_ODONTOLOGO_TRATAMIENTO_T FOREIGN KEY(nombreTratamiento) REFERENCES TRATAMIENTO(nombreTratamiento)
);

CREATE TABLE TRATAMIENTO(
nombreTratamiento VARCHAR2(20),
costoTratamiento NUMERIC(8,2),
CONSTRAINT PK_TRATAMIENTO PRIMARY KEY(nombreTratamiento)
);

CREATE TABLE ATENCION_PACIENTE(
nombreSuc VARCHAR2(20),
cedulaOdont CHAR(10),
idCelula CHAR(10),
fechaConsult DATE,
CONSTRAINT PK_ATENCION_PACIENTE PRIMARY KEY(nombreSuc,cedulaOdont,idCelula),
CONSTRAINT FK_ATENCION_PACIENTE_S FOREIGN KEY(nombreSuc) REFERENCES SUCURSAL(nombreSuc),
CONSTRAINT FK_ATENCION_PACIENTE_O FOREIGN KEY(cedulaOdont) REFERENCES ODONTOLOGO(cedulaOdont),
CONSTRAINT FK_ATENCION_PACIENTE_A FOREIGN KEY(idCelula) REFERENCES AFILIACION(idCelula)  
);

CREATE TABLE TRATAMIENTO_AFILIADO(
idCelula CHAR(10),
nombreSuc VARCHAR2(20),
cedulaOdont CHAR(10),
fechaInicio DATE,
finalizado CHAR(1),--CHECAR
pagoTratamiento NUMERIC(8,2),
CONSTRAINT PK_TRATAMIENTO_AFILIADO PRIMARY KEY(idCelula,nombreSuc,cedulaOdont),
CONSTRAINT FK_TRATAMIENTO_AFILIADO_A FOREIGN KEY(idCelula) REFERENCES AFILIACION(idCelula),
CONSTRAINT FK_TRATAMIENTO_AFILIADO_SO FOREIGN KEY(nombreSuc,cedulaOdont) REFERENCES SUCURSAL_ODONTOLOGO(nombreSuc,cedulaOdont)
);

CREATE TABLE AFILIACION(
idCelula CHAR(10),
nombreAfi VARCHAR2(20),
apePatAfi VARCHAR2(20),
apeMatAfi VARCHAR2(2O),
telefonoAfi NUMERIC(10),
tipo CHAR(10),--checar
CONSTRAINT PK_AFILIACION PRIMARY KEY(idCelula)
)

CREATE TABLE INDIVIDUAL(
idCelula CHAR(10),
CONSTRAINT PK_INDIVIDUAL PRIMARY KEY(idCelula),
CONSTRAINT FK_INDIVIDUAL FOREIGN KEY(idCelula) REFERENCES AFILIACION(idCelula)
);

CREATE TABLE GRUPAL(
idCelula CHAR(10),
nomConvenio VARCHAR2(20),
cuotaMensual NUMERIC(8,2),
rebajaProcentaje NUMERIC(8,2),
CONSTRAINT PK_GRUPAL PRIMARY KEY(idCelula),
CONSTRAINT FK_GRUPAL FOREIGN KEY(idCelula) REFERENCES AFILIACION(idCelula)
);


