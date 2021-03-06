CREATE TABLE cantidades (
    id INT NOT NULL IDENTITY,
    cantidad INT NOT NULL,
	primary key(id)
);

CREATE TABLE edades (
    id INT NOT NULL IDENTITY,
    edad INT NOT NULL,
	primary key(id)
);

CREATE TABLE fecha (
    id INT NOT NULL IDENTITY,
    fecha DATE NOT NULL,
    anio INT NOT NULL,
    mes INT NOT NULL,
    dia INT NOT NULL,
    dia_semana varchar(10) not null,
	primary key(id)
);

CREATE TABLE edoCivil(
    id int not null IDENTITY,
    descripcion varchar(25) not null
    PRIMARY KEY(id)
);

INSERT INTO edoCivil VALUES('UNION LIBRE');
INSERT INTO edoCivil VALUES('SEPARADA');
INSERT INTO edoCivil VALUES('VIUDA');
INSERT INTO edoCivil VALUES('CASADA');
INSERT INTO edoCivil VALUES('DIVORCIADA');
INSERT INTO edoCivil VALUES('SOLTERA');
INSERT INTO edoCivil VALUES('DESCONOCIDO');

---En edad quitar los 20 que tienen 'NA'

---En desc_derecho cambiar 'NA' = 'NINGUNO' y 'NINGUNO' = 'SEGURO POPULAR'

CREATE TABLE derechoHabiente(
    id int not null IDENTITY,
    descripcion varchar(25) not null,
    PRIMARY KEY(id)
);
INSERT INTO derechoHabiente VALUES('IMSS');
INSERT INTO derechoHabiente VALUES('ISSTE');
INSERT INTO derechoHabiente VALUES('SEGURO POPULAR');
INSERT INTO derechoHabiente VALUES('NO ESPECIFICADO');
INSERT INTO derechoHabiente VALUES('OTRA');

---cambiar el na = SIN ACCESO A LA EDUCACION FORMAL

CREATE TABLE educacion(
    id int not null IDENTITY,
    descripcion varchar(50) not null,
    PRIMARY KEY(id)
);

INSERT INTO educacion VALUES('PRIMARIA');
INSERT INTO educacion VALUES('SECUNDARIA');
INSERT INTO educacion VALUES('PREPARATORIA');
INSERT INTO educacion VALUES('LICENCIATURA');
INSERT INTO educacion VALUES('MAESTRIA');
INSERT INTO educacion VALUES('DOCTORADO');
INSERT INTO educacion VALUES('SIN ACCESO A LA EDUCACION FORMAL');

---Cambiar NA = 'NO ESPECIFICADO'
CREATE TABLE ocupacion(
    id int not null IDENTITY,
    descripcion varchar(40) not null,
    primary key(id)
);

INSERT INTO ocupacion VALUES('TRABAJADORA DEL HOGAR NO REMUNERADA');
INSERT INTO ocupacion VALUES('EMPLEADA');
INSERT INTO ocupacion VALUES('NO ESPECIFICADO');
INSERT INTO ocupacion VALUES('DESEMPLEADA');
INSERT INTO ocupacion VALUES('ESTUDIANTE');

---Cambiar NA = NINGUNA
CREATE TABLE religion(
    id int not null IDENTITY,
    descripcion varchar(20) not null,
    primary key(id)
);


INSERT INTO religion VALUES('MORMONA');
INSERT INTO religion VALUES('JUDIA');
INSERT INTO religion VALUES('CRISTIANA');
INSERT INTO religion VALUES('OTRA');
INSERT INTO religion VALUES('ANGLICANA');
INSERT INTO religion VALUES('BUDISTA');
INSERT INTO religion VALUES('CATOLICA');
INSERT INTO religion VALUES('TESTIGA DE JEHOVA');
INSERT INTO religion VALUES('NINGUNA');
INSERT INTO religion VALUES('MUSULMANA');

---Cambiar NA = NINGUNA
create table parentesco (
    id int not null IDENTITY,
    descripcion varchar(50) not null,
    primary key(id)
);
---Cambiar NA = Ninguno

INSERT INTO parentesco VALUES('TUTOR O RESPONSABLE LEGAL');
INSERT INTO parentesco VALUES('AMIGA');
INSERT INTO parentesco VALUES('PAREJA');
INSERT INTO parentesco VALUES('RELACION LABORAL');
INSERT INTO parentesco VALUES('PERSONA CERCANA');
INSERT INTO parentesco VALUES('FAMILIAR SIN ESPECIFICAR');
INSERT INTO parentesco VALUES('OTRA');
INSERT INTO parentesco VALUES('EX-PAREJA');
INSERT INTO parentesco VALUES('FAMILIAR MUJER');
INSERT INTO parentesco VALUES('CONOCIDO');
INSERT INTO parentesco VALUES('CONOCIDA');
INSERT INTO parentesco VALUES('EX-PAREJA');
INSERT INTO parentesco VALUES('FAMILIAR HOMBRE');
INSERT INTO parentesco VALUES('PERSONA CERCANA MUJER');
INSERT INTO parentesco VALUES('AMIGO');
INSERT INTO parentesco VALUES('PERSONA CERCANA HOMBRE');
INSERT INTO parentesco VALUES('NINGUNA');

create table estadoResidencia(
    id int not null IDENTITY,
    descripcion varchar(50) not null,
    primary key(id)
);

--- Cambiar NUEVO LE??N = NUEVO LEON
--- SAN LUIS POTOS?? = SAN LUIS POTOSI 
--- CIUDAD DE M??XICO = CIUDAD DE MEXICO
--- MICHOAC??N = MICHOACAN
--- YUCAT??N = YUCATAN
--- QUER??TARO = QUERETARO
--- ESTADO DE M??XICO = ESTADO DE MEXICO

INSERT INTO estadoResidencia VALUES('CHIHUAHUA');
INSERT INTO estadoResidencia VALUES('CHIAPAS');
INSERT INTO estadoResidencia VALUES('TABASCO');
INSERT INTO estadoResidencia VALUES('BAJA CALIFORNIA');
INSERT INTO estadoResidencia VALUES('NUEVO LEON');
INSERT INTO estadoResidencia VALUES('HIDALGO');
INSERT INTO estadoResidencia VALUES('ZACATECAS');
INSERT INTO estadoResidencia VALUES('SAN LUIS POTOSI');
INSERT INTO estadoResidencia VALUES('TAMAULIPAS');
INSERT INTO estadoResidencia VALUES('CIUDAD DE MEXICO');
INSERT INTO estadoResidencia VALUES('AGUASCALIENTES');
INSERT INTO estadoResidencia VALUES('TLAXCALA');
INSERT INTO estadoResidencia VALUES('GUERRERO');
INSERT INTO estadoResidencia VALUES('MICHOACAN');
INSERT INTO estadoResidencia VALUES('PUEBLA');
INSERT INTO estadoResidencia VALUES('NAYARIT');
INSERT INTO estadoResidencia VALUES('SINALOA');
INSERT INTO estadoResidencia VALUES('DURANGO');
INSERT INTO estadoResidencia VALUES('SONORA');
INSERT INTO estadoResidencia VALUES('QUINTANA ROO');
INSERT INTO estadoResidencia VALUES('MORELOS');
INSERT INTO estadoResidencia VALUES('OAXACA');
INSERT INTO estadoResidencia VALUES('JALISCO');
INSERT INTO estadoResidencia VALUES('VERACRUZ');
INSERT INTO estadoResidencia VALUES('CAMPECHE');
INSERT INTO estadoResidencia VALUES('COAHUILA');
INSERT INTO estadoResidencia VALUES('GUANAJUATO');
INSERT INTO estadoResidencia VALUES('YUCAT??N');
INSERT INTO estadoResidencia VALUES('QUERETARO');
INSERT INTO estadoResidencia VALUES('COLIMA');
INSERT INTO estadoResidencia VALUES('BAJA CALIFORNIA SUR');
INSERT INTO estadoResidencia VALUES('ESTADO DE MEXICO');


---Se genera con script
create table municipioResidencia(
    id int not null IDENTITY,
    descripcion varchar(50) not null,
    primary key(id)
);


create table ILEPrevios(
    id int not null IDENTITY,
    cantidad int not null,
    primary key(id)
);
--- cambiar NA = 0
INSERT INTO ILEPrevios VALUES(0);
INSERT INTO ILEPrevios VALUES(1);
INSERT INTO ILEPrevios VALUES(2);
INSERT INTO ILEPrevios VALUES(3);
INSERT INTO ILEPrevios VALUES(4);
INSERT INTO ILEPrevios VALUES(5);
INSERT INTO ILEPrevios VALUES(6);
INSERT INTO ILEPrevios VALUES(7);
INSERT INTO ILEPrevios VALUES(8);
INSERT INTO ILEPrevios VALUES(9);

create table anticonceptivo(
    id int not null IDENTITY,
    descripcion varchar(50) not null,
    primary key(id)
);

---cambiar na = ninguno

insert into anticonceptivo values('NINGUNO');
insert into anticonceptivo values('ANILLO VAGINAL');
insert into anticonceptivo values('INYECCION + DIU');
insert into anticonceptivo values('PASTILLA DE EMERGENCIA + PARCHES');
insert into anticonceptivo values('CONDON + INYECCION');
insert into anticonceptivo values('CONDON');
insert into anticonceptivo values('IMPLANTE SUBDERMICO');
insert into anticonceptivo values('PARCHES');
insert into anticonceptivo values('CONDON + PARCHE');
insert into anticonceptivo values('CONDON + DIU');
insert into anticonceptivo values('PASTILLA DE EMERGENCIA + INYECCION');
insert into anticonceptivo values('CONDON + PASTILLA ANTICONCEPTIVA');
insert into anticonceptivo values('CONDON + IMPLANTE');
insert into anticonceptivo values('PASTILLA DE EMERGENCIA');
insert into anticonceptivo values('LIGADURA DE TROMPAS');
insert into anticonceptivo values('DIU');
insert into anticonceptivo values('VASECTOMIA');
insert into anticonceptivo values('CONDON + PASTILLA DE EMERGENCIA');
insert into anticonceptivo values('PASTILLA ANTICONCEPTIVA');
insert into anticonceptivo values('INYECCION + LIGADURA DE TROMPAS');
insert into anticonceptivo values('INYECCION');

create table motivos(
    id int not null IDENTITY,
    descripcion varchar(50) not null,
    primary key(id)
);
--- cambiar na = otra
insert into motivos values('SITUACION ECONOMICA')
insert into motivos values('INTERRUPCION VOLUNTARIA')
insert into motivos values('FALLA DEL METODO')
insert into motivos values('SIN APOYO')
insert into motivos values('OTRA')
insert into motivos values('DECISIONES V??NCULADAS CON LA PAREJA')
insert into motivos values('PROBLEMAS DE SALUD')
insert into motivos values('PROYECTO DE VIDA')
insert into motivos values('VIOLACION')

create table anticonceptivoPost(
    id int not null IDENTITY,
    descripcion varchar(50) not null,
    primary key(id)
);
--- cambiar na = ninguno
insert into anticonceptivoPost values('NINGUNO')
insert into anticonceptivoPost values('DIU + IMPLANTE')
insert into anticonceptivoPost values('ANILLO VAGINAL')
insert into anticonceptivoPost values('CONDON + PASTILLA DE EMERGENCIA + DIU')
insert into anticonceptivoPost values('CONDON + INYECCION')
insert into anticonceptivoPost values('CONDON')
insert into anticonceptivoPost values('IMPLANTE SUBDERMICO')
insert into anticonceptivoPost values('PARCHE')
insert into anticonceptivoPost values('CONDON + PASTILLA DE EMERGENCIA + INYECCION')
insert into anticonceptivoPost values('CONDON + PARCHE')
insert into anticonceptivoPost values('CONDON + DIU')
insert into anticonceptivoPost values('CONDON + IMPLANTE SUBDERMICO')
insert into anticonceptivoPost values('CONDON + PASTILLA ANTICONCEPTIVA')
insert into anticonceptivoPost values('CONDON + LIGADURA DE TROMPAS')
insert into anticonceptivoPost values('CONDON + IMPLANTE')
insert into anticonceptivoPost values('PASTILLA DE EMERGENCIA')
insert into anticonceptivoPost values('LIGADURA DE TROMPAS')
insert into anticonceptivoPost values('DIU')
insert into anticonceptivoPost values('VASECTOMIA')
insert into anticonceptivoPost values('CONDON + PASTILLA DE EMERGENCIA + IMPLANTE')
insert into anticonceptivoPost values('DIU + IMPLANTE SUBDERMINCO')
insert into anticonceptivoPost values('IMPLANTE SUBDERMICO + PARCHE')
insert into anticonceptivoPost values('CONDON + PASTILLA DE EMERGENCIA')
insert into anticonceptivoPost values('PASTILLA ANTICONCEPTIVA')
insert into anticonceptivoPost values('INYECCION + PARCHE')
insert into anticonceptivoPost values('DIU + PARCHE')
insert into anticonceptivoPost values('INYECCION')

/* create table resultadoILE(
    id int not null IDENTITY,
    descripcion varchar(15) not null,
    primary key(id)
);
--- tiene NA
insert into resultadoILE values('COMPLETO');
insert into resultadoILE values('OTRO'); */

create table CLUESHospital(
    id int not null IDENTITY,
    desc_derecho varchar(20) not null,
    primary key(id)
);

--- eliminar los que tienen na

insert into CLUESHospital values('DFSSA000864');
insert into CLUESHospital values('DFSSA002066');
insert into CLUESHospital values('DFSSA000065');
insert into CLUESHospital values('DFSSA000596');
insert into CLUESHospital values('DFSSA002993');
insert into CLUESHospital values('DFSSA000852');
insert into CLUESHospital values('DFSSA018166');
insert into CLUESHospital values('DFSSA003932');
insert into CLUESHospital values('DFSSA003705');
insert into CLUESHospital values('DFSSA004270');
insert into CLUESHospital values('DFSSA003640');
insert into CLUESHospital values('DFSSA000712');
insert into CLUESHospital values('DFSSA003915');
insert into CLUESHospital values('DFSSA002491');
insert into CLUESHospital values('DFSSA017886');
insert into CLUESHospital values('DFSSA002643');
insert into CLUESHospital values('DFSSA005093');


create table procedimientoILE(
    id int not null IDENTITY,
    descripcion varchar(50) not null,
    primary key(id)
);
---eliminar los que tienen NA

insert into procedimientoILE values('ASPIRACI??N ENDOUTERINA (MANUAL O EL??CTRICA)');
insert into procedimientoILE values('LEGRADO');
insert into procedimientoILE values('MEDICAMENTO');

create table procedimientoCompleto(
    id int not null,
    descripcion varchar(50) not null,
    primary key(id, descripcion),
    foreign key(id) references procedimientoILE(id)
);

insert into procedimientoCompleto values(3,'MISOPROSTOL');
insert into procedimientoCompleto values(3,'MISOPROSTOL + MIFEPRISTONA + MISOPROSTOL');
insert into procedimientoCompleto values(3,'MEDICAMENTO');
insert into procedimientoCompleto values(3,'MIFEPRISTONA');
insert into procedimientoCompleto values(3,'MISOPROSTOL + MIFEPRISTONA');

create table informacionCLUES (
    id int not null,
    alcaldia varchar(50) not null,
    tipoEstablecimiento varchar(50) not null,
    calle varchar(50) not null,
    colonia varchar(50) not null,
    cp varchar(5) not null,
    latitud float not null,
    longitud float not null,
    operacion bit not null,
    primary key(id),
    foreign key(id) references CLUESHospital(id)
);

insert into informacionCLUES values(1, 'GUSTAVO A. MADERO', 'HOSPITALIZACION', 'PLAN DE SAN LUIS', 'TICOMAN', '07330', 19.514526372666094, -99.13793561054263, 1);
insert into informacionCLUES values(2, 'MILPA ALTA', 'HOSPITALIZACION', 'NUEVO LEON', 'VILLA MILPA ALTA', '12000', 19.200989767891347, -99.01110735727343, 1);
insert into informacionCLUES values(3, 'AZCAPOTZALCO', 'HOSPITALIZACION', 'GUSTAVO J. ESQUINA VICTOR HERNANDEZ COVARRUBIAS', 'UNIDAD FRANCISCO VILLA', '02400', 19.4979131, -99.2030482, 1);
insert into informacionCLUES values(4, 'CUAJIMALPA DE MORELOS', 'HOSPITALIZACION', '16 DE SEPTIEMBRE', 'CONTADERO', '06500', 19.3477, -99.3018, 0);
insert into informacionCLUES values(5, 'XOCHIMILCO', 'HOSPITALIZACION', '16 DE SEPTIEMBRE Y CALZADA NATIVITAS', 'XALTOCAN', '16090', 19.25496591, -99.1045, 1);
insert into informacionCLUES values(6, 'GUSTAVO A. MADERO', 'HOSPITALIZACION', 'EMILIANO ZAPATA', 'CUAUTEPEC BARRIO BAJO', '07200', 19.539723277509776, -99.14103979255742, 1);
insert into informacionCLUES values(7, 'TLALPAN', 'HOSPITALIZACION', 'ENCINOS ENTRE HORTENCIA Y PINANONA', 'AMPLIACION MIGUEL HIDALGO 4A. SECCION', '14250', 19.27181239, -99.20748963, 1);
insert into informacionCLUES values(8, 'VENUSTIANO CARRANZA', 'CONSULTA EXTERNA', 'ING. EDUARDO MOLINA ESQUINA PELUQUEROS', '20 DE NOVIEMBRE (LA MICHOAC??NA)', '15300', 19.4452, -99.1122, 1);
insert into informacionCLUES values(9, 'VENUSTIANO CARRANZA', 'HOSPITALIZACION', 'ESTA??O ESQUINA CONGRESO DE LA UNI??N', 'FELIPE ANGELES', '15300', 19.480653814007628, -99.12413705961308, 1);
insert into informacionCLUES values(10, 'IZTAPALAPA', 'CONSULTA EXTERNA', 'NUEVO LEON ESQUINA CAPUTITLA', 'MIGUEL DE LA MADRID', '09698', 19.3428, -99.05, 1);
insert into informacionCLUES values(11, 'MIGUEL HIDALGO', 'CONSULTA EXTERNA', 'MARIANO ESCOBEDO', 'ANAHUAC', '11320', 19.4487, -99.1819, 1);
insert into informacionCLUES values(12, 'CUAJIMALPA DE MORELOS', 'CONSULTA EXTERNA', 'CERRADA DE JUAREZ', 'CUAJIMALPA', '05000', 19.357 ,-99.2972, 1);
insert into informacionCLUES values(13, 'VENUSTIANO CARRANZA', 'CONSULTA EXTERNA', 'ORIENTE 170 ESQUINA CUARTA CERRADA ORIENTE 168', 'MOCTEZUMA SEGUNDA SECCION', '15500', 19.4285, -99.0967, 1);
insert into informacionCLUES values(14, 'TLAHUAC', 'HOSPITALIZACION', 'TLAHUAC CHALCO', 'LA HABANA', '13050', 19.26534605, -98.99756205, 1);
insert into informacionCLUES values(15, 'ALVARO OBREGON', 'HOSPITALIZACION', 'PROLONGACION 5 DE MAYO', 'EXHACIENDA TARANGO', '01618', 19.3618836, -99.2240659, 1);
insert into informacionCLUES values(16, 'TLAHUAC', 'CONSULTA EXTERNA', 'FIDELIO', 'MIGUEL HIDALGO', '13200', 19.2905, -99.0478, 1);
insert into informacionCLUES values(17, 'LA MAGDALENA CONTRERAS', 'CONSULTA EXTERNA', 'OJO DE AGUA', 'HUAYATLA', '10360', 19.312301,-99.2601498, 1);

create table respuestaBinaria(
    id int not null IDENTITY,
    descripcion varchar(2) not null,
	primary key(id)
);

insert into respuestaBinaria values('SI');
insert into respuestaBinaria values('NO');
insert into respuestaBinaria values('NA');

create table hechos(
    fechaId int not null,
    edoCivilId int not null,
    edadId int not null,
    derechoHabienteId int not null,
    educacionId int not null,
    ocupacionId int not null,
    religionId int not null,
    parentescoId int not null,
    estadoResidenciaId int not null,
    municipioResidenciaId int not null,
    menstuacionId int not null,
    edadSexualId int not null,
    semanasGestacionId int not null,
    numeroAbortosId int not null,
    numeroPartosId int not null,
    numeroCesareaId int not null,
    consejeriaId int not null,
    anticonceptivoId int not null,
    consultasPreviasId int not null,
    motivoId int not null,
    semanasGestUSGId int not null,
    consentimientoFirmadoId int not null,
    complicacionId int not null,
    dolorId int not null,
    analgesicoId int not null,
    anticonceptivoPostId int not null,
    cluesId int not null,
    procileId int not null,
    ilePreviosId int not null,
    foreign key(fechaId) references fecha(id),
    foreign key(edadId) references edades(id),
    foreign key(edoCivilId) references edoCivil(id),
    foreign key(derechoHabienteId) references derechoHabiente(id),
    foreign key(educacionId) references educacion(id),
    foreign key(parentescoId) references parentesco(id),
    foreign key(estadoResidenciaId) references estadoResidencia(id),
    foreign key(municipioResidenciaId) references municipioResidencia(id),
    foreign key(menstuacionId) references edades(id),
    foreign key(edadSexualId) references edades(id),
    foreign key(semanasGestacionId) references cantidades(id),
    foreign key(numeroAbortosId) references cantidades(id),
    foreign key(numeroPartosId) references cantidades(id),
    foreign key(numeroCesareaId) references cantidades(id),
    foreign key(consejeriaId) references respuestaBinaria(id),
    foreign key(anticonceptivoId) references anticonceptivo(id),
    foreign key(consultasPreviasId) references cantidades(id),
    foreign key(motivoId) references motivos(id),
    foreign key(semanasGestUSGId) references cantidades(id),
    foreign key(consentimientoFirmadoId) references respuestaBinaria(id),
    foreign key(consejeriaId) references respuestaBinaria(id),
    foreign key(complicacionId) references respuestaBinaria(id),
    foreign key(dolorId) references respuestaBinaria(id),
    foreign key(analgesicoId) references respuestaBinaria(id),
    foreign key(anticonceptivoPostId) references anticonceptivoPost(id),
    foreign key(cluesId) references CLUESHospital(id),
    foreign key(procileId) references procedimientoILE(id),
    foreign key(religionId) references religion(id),
    foreign key(ocupacionId) references ocupacion(id),
    foreign key(ilePreviosId) references ILEPrevios(id)
)