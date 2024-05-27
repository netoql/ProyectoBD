
-- Insertar datos en AFILIACION
INSERT INTO AFILIACION (idCedula, nombreAfi, apePatAfi, apeMatAfi, cuotaMensual, tipo) VALUES 
('1234567890', 'Juan', 'Perez', 'Gomez', 100.00, 'i');
INSERT INTO AFILIACION (idCedula, nombreAfi, apePatAfi, apeMatAfi, cuotaMensual, tipo) VALUES 
('0987654321', 'Maria', 'Lopez', 'Diaz', 150.00, 'g');
INSERT INTO AFILIACION (idCedula, nombreAfi, apePatAfi, apeMatAfi, cuotaMensual, tipo) VALUES 
('1122334455', 'Carlos', 'Ramirez', 'Sanchez', 120.00, 'i');
INSERT INTO AFILIACION (idCedula, nombreAfi, apePatAfi, apeMatAfi, cuotaMensual, tipo) VALUES 
('2233445566', 'Ana', 'Martinez', 'Vega', 130.00, 'g');
INSERT INTO AFILIACION (idCedula, nombreAfi, apePatAfi, apeMatAfi, cuotaMensual, tipo) VALUES 
('3344556677', 'Luis', 'Fernandez', 'Ortiz', 110.00, 'i');
INSERT INTO AFILIACION (idCedula, nombreAfi, apePatAfi, apeMatAfi, cuotaMensual, tipo) VALUES 
('4455667788', 'Elena', 'Garcia', 'Mendez', 140.00, 'g');
INSERT INTO AFILIACION (idCedula, nombreAfi, apePatAfi, apeMatAfi, cuotaMensual, tipo) VALUES 
('5566778899', 'Marta', 'Diaz', 'Torres', 115.00, 'i');
INSERT INTO AFILIACION (idCedula, nombreAfi, apePatAfi, apeMatAfi, cuotaMensual, tipo) VALUES 
('6677889900', 'Jorge', 'Hernandez', 'Reyes', 155.00, 'g');
INSERT INTO AFILIACION (idCedula, nombreAfi, apePatAfi, apeMatAfi, cuotaMensual, tipo) VALUES 
('7788990011', 'Laura', 'Santos', 'Castro', 125.00, 'i');
INSERT INTO AFILIACION (idCedula, nombreAfi, apePatAfi, apeMatAfi, cuotaMensual, tipo) VALUES 
('8899001122', 'Rafael', 'Guzman', 'Molina', 135.00, 'g');

-- Insertar datos en INDIVIDUAL
INSERT INTO INDIVIDUAL (idCedula) VALUES 
('1234567890');
INSERT INTO INDIVIDUAL (idCedula) VALUES 
('1122334455');
INSERT INTO INDIVIDUAL (idCedula) VALUES 
('3344556677');
INSERT INTO INDIVIDUAL (idCedula) VALUES 
('5566778899');
INSERT INTO INDIVIDUAL (idCedula) VALUES 
('7788990011');

-- Insertar datos en GRUPAL
INSERT INTO GRUPAL (idCedula, nomConvenio, rebajaProcentaje) VALUES 
('0987654321', 'ConvenioXYZ', 10.00);
INSERT INTO GRUPAL (idCedula, nomConvenio, rebajaProcentaje) VALUES 
('2233445566', 'ConvenioABC', 15.00);
INSERT INTO GRUPAL (idCedula, nomConvenio, rebajaProcentaje) VALUES 
('4455667788', 'Convenio123', 12.50);
INSERT INTO GRUPAL (idCedula, nomConvenio, rebajaProcentaje) VALUES 
('6677889900', 'ConvenioDEF', 10.00);
INSERT INTO GRUPAL (idCedula, nomConvenio, rebajaProcentaje) VALUES 
('8899001122', 'Convenio456', 20.00);

-- Insertar datos en TEL_AFI
INSERT INTO TEL_AFI (idCedula, telefonoAfi) VALUES 
('1234567890', 5551234567);
INSERT INTO TEL_AFI (idCedula, telefonoAfi) VALUES 
('0987654321', 5559876543);
INSERT INTO TEL_AFI (idCedula, telefonoAfi) VALUES 
('1122334455', 5551112222);
INSERT INTO TEL_AFI (idCedula, telefonoAfi) VALUES 
('2233445566', 5553334444);
INSERT INTO TEL_AFI (idCedula, telefonoAfi) VALUES 
('3344556677', 5555556666);
INSERT INTO TEL_AFI (idCedula, telefonoAfi) VALUES 
('4455667788', 5557778888);
INSERT INTO TEL_AFI (idCedula, telefonoAfi) VALUES 
('5566778899', 5559990000);
INSERT INTO TEL_AFI (idCedula, telefonoAfi) VALUES 
('6677889900', 5550001111);
INSERT INTO TEL_AFI (idCedula, telefonoAfi) VALUES 
('7788990011', 5552223333);
INSERT INTO TEL_AFI (idCedula, telefonoAfi) VALUES 
('8899001122', 5554445555);

-- Insertar datos en HISTORIAL
INSERT INTO HISTORIAL (idHist, idCedula) VALUES 
('HIST1234', '1234567890');
INSERT INTO HISTORIAL (idHist, idCedula) VALUES 
('HIST5678', '0987654321');
INSERT INTO HISTORIAL (idHist, idCedula) VALUES 
('HIST9101', '1122334455');
INSERT INTO HISTORIAL (idHist, idCedula) VALUES 
('HIST1121', '2233445566');
INSERT INTO HISTORIAL (idHist, idCedula) VALUES 
('HIST3141', '3344556677');
INSERT INTO HISTORIAL (idHist, idCedula) VALUES 
('HIST5161', '4455667788');
INSERT INTO HISTORIAL (idHist, idCedula) VALUES 
('HIST7181', '5566778899');
INSERT INTO HISTORIAL (idHist, idCedula) VALUES 
('HIST9201', '6677889900');
INSERT INTO HISTORIAL (idHist, idCedula) VALUES 
('HIST1222', '7788990011');
INSERT INTO HISTORIAL (idHist, idCedula) VALUES 
('HIST3242', '8899001122');
INSERT INTO HISTORIAL (idHist, idCedula) VALUES 

-- Insertar datos en SUCURSAL
INSERT INTO SUCURSAL (nombreSuc, ciudad, calle, numero) VALUES 
('Smart Dental', 'Ciudad de México', 'Av. Insurgentes', 123);
INSERT INTO SUCURSAL (nombreSuc, ciudad, calle, numero) VALUES 
('Smart Dental Sur', 'Guadalajara', 'Calle Chapultepec', 456);
INSERT INTO SUCURSAL (nombreSuc, ciudad, calle, numero) VALUES 
('Smart Dental Norte', 'Monterrey', 'Av. Constitución', 789);
INSERT INTO SUCURSAL (nombreSuc, ciudad, calle, numero) VALUES 
('Smart Dental Poniente', 'Puebla', 'Blvd. 5 de Mayo', 101);
INSERT INTO SUCURSAL (nombreSuc, ciudad, calle, numero) VALUES 
('Smart Dental Noreste', 'Toluca', 'Av. Morelos', 202);
INSERT INTO SUCURSAL (nombreSuc, ciudad, calle, numero) VALUES 
('Smart Dental Este', 'Querétaro', 'Av. Zaragoza', 303);
INSERT INTO SUCURSAL (nombreSuc, ciudad, calle, numero) VALUES 
('Smart Dental Oeste', 'Cancún', 'Blvd. Kukulkán', 404);
INSERT INTO SUCURSAL (nombreSuc, ciudad, calle, numero) VALUES 
('Smart Dental Suroeste', 'Tijuana', 'Av. Revolución', 505);
INSERT INTO SUCURSAL (nombreSuc, ciudad, calle, numero) VALUES 
('Smart Dental Noroeste', 'Mérida', 'Paseo de Montejo', 606);
INSERT INTO SUCURSAL (nombreSuc, ciudad, calle, numero) VALUES 
('Smart Dental Sureste', 'Leon', 'Blvd. Adolfo Lopez Mateos',707);

-- Insertar datos en CONSULTORIO
INSERT INTO CONSULTORIO (numConsultorio, nombreSuc) VALUES 
(101, 'Smart Dental');
INSERT INTO CONSULTORIO (numConsultorio, nombreSuc) VALUES 
(102, 'Smart Dental Sur');
INSERT INTO CONSULTORIO (numConsultorio, nombreSuc) VALUES 
(103, 'Smart Dental Norte');
INSERT INTO CONSULTORIO (numConsultorio, nombreSuc) VALUES 
(104, 'Smart Dental Poniente');
INSERT INTO CONSULTORIO (numConsultorio, nombreSuc) VALUES 
(105, 'Smart Dental Noreste');
INSERT INTO CONSULTORIO (numConsultorio, nombreSuc) VALUES 
(106, 'Smart Dental Este');
INSERT INTO CONSULTORIO (numConsultorio, nombreSuc) VALUES 
(107, 'Smart Dental Oeste');
INSERT INTO CONSULTORIO (numConsultorio, nombreSuc) VALUES 
(108, 'Smart Dental Suroeste');
INSERT INTO CONSULTORIO (numConsultorio, nombreSuc) VALUES 
(109, 'Smart Dental Noroeste');
INSERT INTO CONSULTORIO (numConsultorio, nombreSuc) VALUES 
(110, 'Smart Dental Sureste');

-- Insertar datos en EQUIPAMIENTO
INSERT INTO EQUIPAMIENTO (numSerie, nombreEquip, fechaMantenimiento, numConsultorio, nombreSuc) VALUES 
('EQUI123456', 'Equip1', TO_DATE('2024-01-15', 'YYYY-MM-DD'), 101, 'Smart Dental');
INSERT INTO EQUIPAMIENTO (numSerie, nombreEquip, fechaMantenimiento, numConsultorio, nombreSuc) VALUES 
('EQUI654321', 'Equip2', TO_DATE('2024-02-20', 'YYYY-MM-DD'), 102, 'Smart Dental Sur');
INSERT INTO EQUIPAMIENTO (numSerie, nombreEquip, fechaMantenimiento, numConsultorio, nombreSuc) VALUES 
('EQUI112233', 'Equip3', TO_DATE('2024-03-10', 'YYYY-MM-DD'), 103, 'Smart Dental Norte');
INSERT INTO EQUIPAMIENTO (numSerie, nombreEquip, fechaMantenimiento, numConsultorio, nombreSuc) VALUES 
('EQUI334455', 'Equip4', TO_DATE('2024-04-05', 'YYYY-MM-DD'), 104, 'Smart Dental Poniente');
INSERT INTO EQUIPAMIENTO (numSerie, nombreEquip, fechaMantenimiento, numConsultorio, nombreSuc) VALUES 
('EQUI556677', 'Equip5', TO_DATE('2024-05-15', 'YYYY-MM-DD'), 105, 'Smart Dental Noreste');
INSERT INTO EQUIPAMIENTO (numSerie, nombreEquip, fechaMantenimiento, numConsultorio, nombreSuc) VALUES 
('EQUI778899', 'Equip6', TO_DATE('2024-06-25', 'YYYY-MM-DD'), 106, 'Smart Dental Este');
INSERT INTO EQUIPAMIENTO (numSerie, nombreEquip, fechaMantenimiento, numConsultorio, nombreSuc) VALUES 
('EQUI990011', 'Equip7', TO_DATE('2024-07-15', 'YYYY-MM-DD'), 107, 'Smart Dental Oeste');
INSERT INTO EQUIPAMIENTO (numSerie, nombreEquip, fechaMantenimiento, numConsultorio, nombreSuc) VALUES 
('EQUI112244', 'Equip8', TO_DATE('2024-08-20', 'YYYY-MM-DD'), 108, 'Smart Dental Suroeste');
INSERT INTO EQUIPAMIENTO (numSerie, nombreEquip, fechaMantenimiento, numConsultorio, nombreSuc) VALUES 
('EQUI334466', 'Equip9', TO_DATE('2024-09-30', 'YYYY-MM-DD'), 109, 'Smart Dental Noroeste');
INSERT INTO EQUIPAMIENTO (numSerie, nombreEquip, fechaMantenimiento, numConsultorio, nombreSuc) VALUES 
('EQUI556688', 'Equip10', TO_DATE('2024-10-10', 'YYYY-MM-DD'), 110, 'Smart Dental Sureste');

-- Insertar datos en ODONTOLOGO
INSERT INTO ODONTOLOGO (cedulaOdont, nombreOdont, apPatOdont, apMatOdont, especialidad) VALUES 
('ODONT12345', 'Carlos', 'Ramirez', 'Perez', 'Ortodoncia');
INSERT INTO ODONTOLOGO (cedulaOdont, nombreOdont, apPatOdont, apMatOdont, especialidad) VALUES 
('ODONT54321', 'Ana', 'Martinez', 'Lopez', 'Periodoncia');
INSERT INTO ODONTOLOGO (cedulaOdont, nombreOdont, apPatOdont, apMatOdont, especialidad) VALUES 
('ODONT11223', 'Lucia', 'Garcia', 'Hernandez', 'Endodoncia');
INSERT INTO ODONTOLOGO (cedulaOdont, nombreOdont, apPatOdont, apMatOdont, especialidad) VALUES 
('ODONT33445', 'Miguel', 'Fernandez', 'Santos', 'Odontopediatría');
INSERT INTO ODONTOLOGO (cedulaOdont, nombreOdont, apPatOdont, apMatOdont, especialidad) VALUES 
('ODONT55667', 'Sofia', 'Rodriguez', 'Diaz', 'Cirugía Oral');
INSERT INTO ODONTOLOGO (cedulaOdont, nombreOdont, apPatOdont, apMatOdont, especialidad) VALUES 
('ODONT77889', 'David', 'Gomez', 'Ruiz', 'Prostodoncia');
INSERT INTO ODONTOLOGO (cedulaOdont, nombreOdont, apPatOdont, apMatOdont, especialidad) VALUES 
('ODONT99000', 'Elena', 'Mendez', 'Castro', 'Ortodoncia');
INSERT INTO ODONTOLOGO (cedulaOdont, nombreOdont, apPatOdont, apMatOdont, especialidad) VALUES 
('ODONT11122', 'Raul', 'Torres', 'Ramos', 'Periodoncia');
INSERT INTO ODONTOLOGO (cedulaOdont, nombreOdont, apPatOdont, apMatOdont, especialidad) VALUES 
('ODONT33344', 'Patricia', 'Vargas', 'Morales', 'Endodoncia');
INSERT INTO ODONTOLOGO (cedulaOdont, nombreOdont, apPatOdont, apMatOdont, especialidad) VALUES 
('ODONT55566', 'Jose', 'Gonzalez', 'Martinez', 'Odontopediatría');

-- Insertar datos en ODONTOLOGO_SUCURSAL

INSERT INTO ODONTOLOGO_SUCURSAL (nombreSuc, cedulaOdont, horario) VALUES 
('Smart Dental', 'ODONT12345', TO_DATE('2024-05-23 09:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO ODONTOLOGO_SUCURSAL (nombreSuc, cedulaOdont, horario) VALUES 
('Smart Dental Sur', 'ODONT54321', TO_DATE('2024-05-23 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO ODONTOLOGO_SUCURSAL (nombreSuc, cedulaOdont, horario) VALUES 
('Smart Dental Norte', 'ODONT11223', TO_DATE('2024-05-23 11:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO ODONTOLOGO_SUCURSAL (nombreSuc, cedulaOdont, horario) VALUES 
('Smart Dental Poniente', 'ODONT33445', TO_DATE('2024-05-23 12:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO ODONTOLOGO_SUCURSAL (nombreSuc, cedulaOdont, horario) VALUES 
('Smart Dental Noreste', 'ODONT55667', TO_DATE('2024-05-23 13:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO ODONTOLOGO_SUCURSAL (nombreSuc, cedulaOdont, horario) VALUES 
('Smart Dental Este', 'ODONT77889', TO_DATE('2024-05-23 14:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO ODONTOLOGO_SUCURSAL (nombreSuc, cedulaOdont, horario) VALUES 
('Smart Dental Oeste', 'ODONT99000', TO_DATE('2024-05-23 15:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO ODONTOLOGO_SUCURSAL (nombreSuc, cedulaOdont, horario) VALUES 
('Smart Dental Suroeste', 'ODONT11122', TO_DATE('2024-05-23 16:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO ODONTOLOGO_SUCURSAL (nombreSuc, cedulaOdont, horario) VALUES 
('Smart Dental Noroeste', 'ODONT33344', TO_DATE('2024-05-23 17:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO ODONTOLOGO_SUCURSAL (nombreSuc, cedulaOdont, horario) VALUES 
('Smart Dental Sureste', 'ODONT55566', TO_DATE('2024-05-23 18:00:00', 'YYYY-MM-DD HH24:MI:SS'));

-- Insertar datos en TRATAMIENTO

INSERT INTO TRATAMIENTO (nombreTratamiento, costoTratamiento) VALUES 
('Limpieza dental', 500.00);
INSERT INTO TRATAMIENTO (nombreTratamiento, costoTratamiento) VALUES 
('Resinas', 750.00);
INSERT INTO TRATAMIENTO (nombreTratamiento, costoTratamiento) VALUES 
('Incrustaciones', 600.00);
INSERT INTO TRATAMIENTO (nombreTratamiento, costoTratamiento) VALUES 
('Coronas', 850.00);
INSERT INTO TRATAMIENTO (nombreTratamiento, costoTratamiento) VALUES 
('Protesis', 700.00);
INSERT INTO TRATAMIENTO (nombreTratamiento, costoTratamiento) VALUES 
('Endodoncia', 900.00);
INSERT INTO TRATAMIENTO (nombreTratamiento, costoTratamiento) VALUES 
('Ortodoncia', 650.00);
INSERT INTO TRATAMIENTO (nombreTratamiento, costoTratamiento) VALUES 
('Blanqueamiento dental', 950.00);
INSERT INTO TRATAMIENTO (nombreTratamiento, costoTratamiento) VALUES 
('Carillas', 800.00);
INSERT INTO TRATAMIENTO (nombreTratamiento, costoTratamiento) VALUES 
('Cirugía bucal', 1000.00);

-- Insertar datos en ODONTOLOGO_TRATAMIENTO

INSERT INTO ODONTOLOGO_TRATAMIENTO (idOdoTrat, cedulaOdont, nombreTratamiento) VALUES 
(1, 'ODONT12345', 'Limpieza dental');
INSERT INTO ODONTOLOGO_TRATAMIENTO (idOdoTrat, cedulaOdont, nombreTratamiento) VALUES 
(2, 'ODONT54321', 'Resinas');
INSERT INTO ODONTOLOGO_TRATAMIENTO (idOdoTrat, cedulaOdont, nombreTratamiento) VALUES 
(3, 'ODONT11223', 'Incrustaciones');
INSERT INTO ODONTOLOGO_TRATAMIENTO (idOdoTrat, cedulaOdont, nombreTratamiento) VALUES 
(4, 'ODONT33445', 'Coronas');
INSERT INTO ODONTOLOGO_TRATAMIENTO (idOdoTrat, cedulaOdont, nombreTratamiento) VALUES 
(5, 'ODONT55667', 'Protesis');
INSERT INTO ODONTOLOGO_TRATAMIENTO (idOdoTrat, cedulaOdont, nombreTratamiento) VALUES 
(6, 'ODONT77889', 'Endodoncia');
INSERT INTO ODONTOLOGO_TRATAMIENTO (idOdoTrat, cedulaOdont, nombreTratamiento) VALUES 
(7, 'ODONT99000', 'Ortodoncia');
INSERT INTO ODONTOLOGO_TRATAMIENTO (idOdoTrat, cedulaOdont, nombreTratamiento) VALUES 
(8, 'ODONT11122', 'Blanqueamiento dental');
INSERT INTO ODONTOLOGO_TRATAMIENTO (idOdoTrat, cedulaOdont, nombreTratamiento) VALUES 
(9, 'ODONT33344', 'Carillas');
INSERT INTO ODONTOLOGO_TRATAMIENTO (idOdoTrat, cedulaOdont, nombreTratamiento) VALUES 
(10, 'ODONT55566', 'Cirugía bucal');

-- Insertar datos en TRATAMIENTO_AFILIADO
INSERT INTO TRATAMIENTO_AFILIADO (idCedula, idOdoTrat, fechaInicio, finalizado, pagoTratamiento, idHist) VALUES 
('1234567890', 1, TO_DATE('2024-05-01', 'YYYY-MM-DD'), 'n', 500.00, 'HIST1234');
INSERT INTO TRATAMIENTO_AFILIADO (idCedula, idOdoTrat, fechaInicio, finalizado, pagoTratamiento, idHist) VALUES 
('0987654321', 2, TO_DATE('2024-05-05', 'YYYY-MM-DD'), 's', 750.00, 'HIST5678');
INSERT INTO TRATAMIENTO_AFILIADO (idCedula, idOdoTrat, fechaInicio, finalizado, pagoTratamiento, idHist) VALUES 
('1122334455', 3, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'n', 600.00, 'HIST9101');
INSERT INTO TRATAMIENTO_AFILIADO (idCedula, idOdoTrat, fechaInicio, finalizado, pagoTratamiento, idHist) VALUES 
('2233445566', 4, TO_DATE('2024-05-15', 'YYYY-MM-DD'), 's', 850.00, 'HIST1121');
INSERT INTO TRATAMIENTO_AFILIADO (idCedula, idOdoTrat, fechaInicio, finalizado, pagoTratamiento, idHist) VALUES 
('3344556677', 5, TO_DATE('2024-05-20', 'YYYY-MM-DD'), 'n', 700.00, 'HIST3141');
INSERT INTO TRATAMIENTO_AFILIADO (idCedula, idOdoTrat, fechaInicio, finalizado, pagoTratamiento, idHist) VALUES 
('4455667788', 6, TO_DATE('2024-05-25', 'YYYY-MM-DD'), 's', 900.00, 'HIST5161');
INSERT INTO TRATAMIENTO_AFILIADO (idCedula, idOdoTrat, fechaInicio, finalizado, pagoTratamiento, idHist) VALUES 
('5566778899', 7, TO_DATE('2024-05-30', 'YYYY-MM-DD'), 'n', 650.00, 'HIST7181');
INSERT INTO TRATAMIENTO_AFILIADO (idCedula, idOdoTrat, fechaInicio, finalizado, pagoTratamiento, idHist) VALUES 
('6677889900', 8, TO_DATE('2024-06-01', 'YYYY-MM-DD'), 's', 950.00, 'HIST9201');
INSERT INTO TRATAMIENTO_AFILIADO (idCedula, idOdoTrat, fechaInicio, finalizado, pagoTratamiento, idHist) VALUES 
('7788990011', 9, TO_DATE('2024-06-05', 'YYYY-MM-DD'), 'n', 800.00, 'HIST1222');
INSERT INTO TRATAMIENTO_AFILIADO (idCedula, idOdoTrat, fechaInicio, finalizado, pagoTratamiento, idHist) VALUES 
('8899001122', 10, TO_DATE('2024-06-10', 'YYYY-MM-DD'), 's', 1000.00, 'HIST3242');

-- Insertar datos en TRATAMIENTO_SUCURSAL
INSERT INTO TRATAMIENTO_SUCURSAL(nombreTratamiento,nombreSuc) VALUES
('Limpieza dental','Smart Dental');
INSERT INTO TRATAMIENTO_SUCURSAL(nombreTratamiento,nombreSuc) VALUES
('Resinas','Smart Dental');
INSERT INTO TRATAMIENTO_SUCURSAL(nombreTratamiento,nombreSuc) VALUES
('Incrustaciones','Smart Dental');
INSERT INTO TRATAMIENTO_SUCURSAL(nombreTratamiento,nombreSuc) VALUES
('Limpieza dental','Smart Dental Sur');
INSERT INTO TRATAMIENTO_SUCURSAL(nombreTratamiento,nombreSuc) VALUES
('Resinas','Smart Dental Sur');
INSERT INTO TRATAMIENTO_SUCURSAL(nombreTratamiento,nombreSuc) VALUES
('Incrustaciones','Smart Dental Sur');
INSERT INTO TRATAMIENTO_SUCURSAL(nombreTratamiento,nombreSuc) VALUES
('Limpieza dental','Smart Dental Norte');
INSERT INTO TRATAMIENTO_SUCURSAL(nombreTratamiento,nombreSuc) VALUES
('Resinas','Smart Dental Norte');
INSERT INTO TRATAMIENTO_SUCURSAL(nombreTratamiento,nombreSuc) VALUES
('Incrustaciones','Smart Dental Norte');
INSERT INTO TRATAMIENTO_SUCURSAL(nombreTratamiento,nombreSuc) VALUES
('Limpieza dental','Smart Dental Poniente');
INSERT INTO TRATAMIENTO_SUCURSAL(nombreTratamiento,nombreSuc) VALUES
('Protesis','Smart Dental Noreste');
INSERT INTO TRATAMIENTO_SUCURSAL(nombreTratamiento,nombreSuc) VALUES
('Endodoncia','Smart Dental Este');
INSERT INTO TRATAMIENTO_SUCURSAL(nombreTratamiento,nombreSuc) VALUES
('Cirugía bucal','Smart Dental Oeste');
INSERT INTO TRATAMIENTO_SUCURSAL(nombreTratamiento,nombreSuc) VALUES
('Ortodoncia','Smart Dental Suroeste');
INSERT INTO TRATAMIENTO_SUCURSAL(nombreTratamiento,nombreSuc) VALUES
('Incrustaciones','Smart Dental Noroeste');

-- Insertar datos en CITA
INSERT INTO CITA (idCita, idHist, idCedula, nombreSuc, cedulaOdont, fechaCita, numConsultorio, finalizadoCita) VALUES 
(1, 'HIST1234', '1234567890', 'Smart Dental', 'ODONT12345', TO_DATE('2024-05-10', 'YYYY-MM-DD'), 101, 'n');
INSERT INTO CITA (idCita, idHist, idCedula, nombreSuc, cedulaOdont, fechaCita, numConsultorio, finalizadoCita) VALUES 
(2, 'HIST5678', '0987654321', 'Smart Dental Sur', 'ODONT54321', TO_DATE('2024-05-12', 'YYYY-MM-DD'), 102, 's');
INSERT INTO CITA (idCita, idHist, idCedula, nombreSuc, cedulaOdont, fechaCita, numConsultorio, finalizadoCita) VALUES 
(3, 'HIST9101', '1122334455', 'Smart Dental Norte', 'ODONT11223', TO_DATE('2024-05-14', 'YYYY-MM-DD'), 103, 'n');
INSERT INTO CITA (idCita, idHist, idCedula, nombreSuc, cedulaOdont, fechaCita, numConsultorio, finalizadoCita) VALUES 
(4, 'HIST1121', '2233445566', 'Smart Dental Poniente', 'ODONT33445', TO_DATE('2024-05-16', 'YYYY-MM-DD'), 104, 's');
INSERT INTO CITA (idCita, idHist, idCedula, nombreSuc, cedulaOdont, fechaCita, numConsultorio, finalizadoCita) VALUES 
(5, 'HIST3141', '3344556677', 'Smart Dental Noreste', 'ODONT55667', TO_DATE('2024-05-18', 'YYYY-MM-DD'), 105, 'n');
INSERT INTO CITA (idCita, idHist, idCedula, nombreSuc, cedulaOdont, fechaCita, numConsultorio, finalizadoCita) VALUES 
(6, 'HIST5161', '4455667788', 'Smart Dental Este', 'ODONT77889', TO_DATE('2024-05-20', 'YYYY-MM-DD'), 106, 's');
INSERT INTO CITA (idCita, idHist, idCedula, nombreSuc, cedulaOdont, fechaCita, numConsultorio, finalizadoCita) VALUES 
(7, 'HIST7181', '5566778899', 'Smart Dental Oeste', 'ODONT99000', TO_DATE('2024-05-22', 'YYYY-MM-DD'), 107, 'n');
INSERT INTO CITA (idCita, idHist, idCedula, nombreSuc, cedulaOdont, fechaCita, numConsultorio, finalizadoCita) VALUES 
(8, 'HIST9201', '6677889900', 'Smart Dental Suroeste', 'ODONT11122', TO_DATE('2024-05-24', 'YYYY-MM-DD'), 108, 's');
INSERT INTO CITA (idCita, idHist, idCedula, nombreSuc, cedulaOdont, fechaCita, numConsultorio, finalizadoCita) VALUES 
(9, 'HIST1222', '7788990011', 'Smart Dental Noroeste', 'ODONT33344', TO_DATE('2024-05-26', 'YYYY-MM-DD'), 109, 'n');
INSERT INTO CITA (idCita, idHist, idCedula, nombreSuc, cedulaOdont, fechaCita, numConsultorio, finalizadoCita) VALUES 
(10, 'HIST3242', '8899001122', 'Smart Dental Sureste', 'ODONT55566', TO_DATE('2024-05-28', 'YYYY-MM-DD'),110,'s');