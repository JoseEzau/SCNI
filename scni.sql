/*
SQLyog Ultimate v12.4.1 (64 bit)
MySQL - 5.7.21 : Database - scni
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`scni` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `scni`;

/*Table structure for table `tbl_actas` */

DROP TABLE IF EXISTS `tbl_actas`;

CREATE TABLE `tbl_actas` (
  `IDActa` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `HoraInicio` time NOT NULL,
  `HoraFinal` time NOT NULL,
  `Lugar` varchar(200) NOT NULL,
  `Asistencia` varchar(200) NOT NULL,
  `IDTipoActa` int(11) NOT NULL,
  `NumActa` int(11) NOT NULL,
  `Observaciones` varchar(200) NOT NULL,
  `Agenda` varchar(200) NOT NULL,
  `Detalle` varchar(200) NOT NULL,
  `Acuerdos` varchar(200) NOT NULL,
  `Costos` double NOT NULL,
  PRIMARY KEY (`IDActa`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_actas` */

/*Table structure for table `tbl_boletas` */

DROP TABLE IF EXISTS `tbl_boletas`;

CREATE TABLE `tbl_boletas` (
  `IDBoleta` int(11) NOT NULL AUTO_INCREMENT,
  `IDInvercionista` int(11) NOT NULL,
  `Descripcion` varchar(200) NOT NULL,
  `NumMedidor` varchar(15) NOT NULL,
  `NumContrato` int(11) NOT NULL,
  `MontoDonado` double NOT NULL,
  `FirmaDigital` varchar(255) NOT NULL,
  `AdImagenCedula` varchar(255) NOT NULL,
  PRIMARY KEY (`IDBoleta`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_boletas` */

/*Table structure for table `tbl_categoriatipocambio` */

DROP TABLE IF EXISTS `tbl_categoriatipocambio`;

CREATE TABLE `tbl_categoriatipocambio` (
  `IDCategoriaTipoCambio` int(11) NOT NULL,
  `Categoria` varchar(20) NOT NULL,
  `IDEntidadFinanciera` int(11) NOT NULL,
  `IDMoneda` int(11) NOT NULL,
  PRIMARY KEY (`IDCategoriaTipoCambio`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_categoriatipocambio` */

/*Table structure for table `tbl_costos` */

DROP TABLE IF EXISTS `tbl_costos`;

CREATE TABLE `tbl_costos` (
  `IDCostos` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(20) NOT NULL,
  `Estado` varchar(10) NOT NULL,
  PRIMARY KEY (`IDCostos`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_costos` */

/*Table structure for table `tbl_cuentasbancarias` */

DROP TABLE IF EXISTS `tbl_cuentasbancarias`;

CREATE TABLE `tbl_cuentasbancarias` (
  `IDCuentaBancaria` int(11) NOT NULL AUTO_INCREMENT,
  `NumeroCuenta` varchar(20) NOT NULL,
  `Descripcion` varchar(200) NOT NULL,
  `TipoCuenta` varchar(15) NOT NULL,
  `IDMoneda` int(11) NOT NULL,
  `IDEntidadFinanciera` int(11) NOT NULL,
  `CuentaCliente` varchar(20) NOT NULL,
  `SaldoLibros` double NOT NULL,
  `SaldoBancos` double NOT NULL,
  `Estado` varchar(10) NOT NULL,
  PRIMARY KEY (`IDCuentaBancaria`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_cuentasbancarias` */

/*Table structure for table `tbl_documentos` */

DROP TABLE IF EXISTS `tbl_documentos`;

CREATE TABLE `tbl_documentos` (
  `IDDocumento` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(200) NOT NULL,
  `TipoMovimiento` varchar(20) NOT NULL,
  PRIMARY KEY (`IDDocumento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_documentos` */

/*Table structure for table `tbl_donaciones` */

DROP TABLE IF EXISTS `tbl_donaciones`;

CREATE TABLE `tbl_donaciones` (
  `IDDonacion` int(11) NOT NULL AUTO_INCREMENT,
  `NombrePersona` varchar(20) NOT NULL,
  `Apellido1` varchar(20) NOT NULL,
  `Apellido2` varchar(20) NOT NULL,
  `Cedula` varchar(20) NOT NULL,
  `TipoDonacion` varchar(20) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `NumeroCuenta` varchar(20) NOT NULL,
  `MontoDonado` double NOT NULL,
  `ConcurrenciaPago` varchar(20) NOT NULL,
  `Estado` varchar(20) NOT NULL,
  PRIMARY KEY (`IDDonacion`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_donaciones` */

/*Table structure for table `tbl_entidadesfinacieras` */

DROP TABLE IF EXISTS `tbl_entidadesfinacieras`;

CREATE TABLE `tbl_entidadesfinacieras` (
  `IDEntidadFinanciera` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(200) NOT NULL,
  `Abreviatura` varchar(5) NOT NULL,
  `Telefono1` varchar(15) NOT NULL,
  `Telefono2` varchar(15) NOT NULL,
  `Estado` varchar(10) NOT NULL,
  PRIMARY KEY (`IDEntidadFinanciera`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_entidadesfinacieras` */

/*Table structure for table `tbl_entidadesfinanciamiento` */

DROP TABLE IF EXISTS `tbl_entidadesfinanciamiento`;

CREATE TABLE `tbl_entidadesfinanciamiento` (
  `IDFinanciamiento` int(11) NOT NULL AUTO_INCREMENT,
  `NombreEntidad` varchar(30) NOT NULL,
  `TipoEntidad` varchar(20) NOT NULL,
  `CedulaJuridica` varchar(30) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `PersonaContacto` varchar(20) NOT NULL,
  `Apellido1` varchar(20) NOT NULL,
  `Apellido2` varchar(20) NOT NULL,
  `Cedula` varchar(20) NOT NULL,
  `TelefonoContacto` varchar(10) NOT NULL,
  `CorreoContacto` varchar(100) NOT NULL,
  `PaginaWeb` varchar(50) NOT NULL,
  `Estado` varchar(10) NOT NULL,
  PRIMARY KEY (`IDFinanciamiento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_entidadesfinanciamiento` */

/*Table structure for table `tbl_general` */

DROP TABLE IF EXISTS `tbl_general`;

CREATE TABLE `tbl_general` (
  `Nombre` varchar(30) NOT NULL,
  `Direccion` varchar(30) NOT NULL,
  `Ciudad` varchar(20) NOT NULL,
  `Provincia` varchar(20) NOT NULL,
  `CedulaJuridica` varchar(20) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Fax` varchar(15) NOT NULL,
  `SitioWeb` varchar(30) NOT NULL,
  `Correo` varchar(30) NOT NULL,
  `CorroeContacto` varchar(30) NOT NULL,
  PRIMARY KEY (`Nombre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_general` */

/*Table structure for table `tbl_juntadirectiva` */

DROP TABLE IF EXISTS `tbl_juntadirectiva`;

CREATE TABLE `tbl_juntadirectiva` (
  `IDJuntaDirectiva` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(30) NOT NULL,
  `Estado` varchar(10) NOT NULL,
  PRIMARY KEY (`IDJuntaDirectiva`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_juntadirectiva` */

/*Table structure for table `tbl_moneda` */

DROP TABLE IF EXISTS `tbl_moneda`;

CREATE TABLE `tbl_moneda` (
  `IDMoneda` int(11) NOT NULL AUTO_INCREMENT,
  `Abreviatura` varchar(5) NOT NULL,
  `Descripcion` varchar(20) NOT NULL,
  `Simbolo` varchar(5) NOT NULL,
  `Estado` varchar(10) NOT NULL,
  PRIMARY KEY (`IDMoneda`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_moneda` */

/*Table structure for table `tbl_movimientolibro` */

DROP TABLE IF EXISTS `tbl_movimientolibro`;

CREATE TABLE `tbl_movimientolibro` (
  `IDlibro` int(11) NOT NULL AUTO_INCREMENT,
  `IDCuentaBancaria` int(11) NOT NULL,
  `IDMoneda` int(11) NOT NULL,
  `IDTipoDocumento` int(11) NOT NULL,
  `IDTipoDescripcion` int(11) NOT NULL,
  `IDTipoMovimiento` int(11) NOT NULL,
  `NumDocumento` int(11) NOT NULL,
  `FechaDocumento` date NOT NULL,
  `Monto` double NOT NULL,
  `TipoCambio` double NOT NULL,
  `MontoMonedaLocal` double NOT NULL,
  `SaldoActual` double NOT NULL,
  `Beneficiario` varchar(20) NOT NULL,
  `Detalle` varchar(200) NOT NULL,
  `FechaRegistro` date NOT NULL,
  PRIMARY KEY (`IDlibro`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_movimientolibro` */

/*Table structure for table `tbl_notas` */

DROP TABLE IF EXISTS `tbl_notas`;

CREATE TABLE `tbl_notas` (
  `IDNotas` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Lugar` varchar(200) NOT NULL,
  `Asistencia` varchar(200) NOT NULL,
  `Objetivos` varchar(200) NOT NULL,
  `Detalle` varchar(200) NOT NULL,
  `Acuerdos` varchar(200) NOT NULL,
  `Acciones` varchar(200) NOT NULL,
  `Fotos` varbinary(255) NOT NULL,
  `Costos` double NOT NULL,
  `Beneficiario` varchar(100) NOT NULL,
  `FechaRegistro` date NOT NULL,
  `Estado` varchar(10) NOT NULL,
  PRIMARY KEY (`IDNotas`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_notas` */

/*Table structure for table `tbl_proyectos` */

DROP TABLE IF EXISTS `tbl_proyectos`;

CREATE TABLE `tbl_proyectos` (
  `IDProyecto` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(20) NOT NULL,
  `Periodo` date NOT NULL,
  `MontoProyecto` double NOT NULL,
  `MontoEjecutado` double NOT NULL,
  `MontoDonado` double NOT NULL,
  `MontoContrapartida` double NOT NULL,
  `Objetivo` varchar(200) NOT NULL,
  `Metas` varchar(200) NOT NULL,
  `Actividades` varchar(300) NOT NULL,
  `Lugar` varchar(50) NOT NULL,
  `Costo` double NOT NULL,
  `Resultados` varchar(300) NOT NULL,
  `fotos` varchar(1000) NOT NULL,
  `Estado` varchar(10) NOT NULL,
  PRIMARY KEY (`IDProyecto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_proyectos` */

/*Table structure for table `tbl_sociosfundadores` */

DROP TABLE IF EXISTS `tbl_sociosfundadores`;

CREATE TABLE `tbl_sociosfundadores` (
  `IDSocioFundador` int(11) NOT NULL AUTO_INCREMENT,
  `NombrePersona` varchar(20) NOT NULL,
  `Apellido1` varchar(20) NOT NULL,
  `Apellido2` varchar(20) NOT NULL,
  `Cedula` varchar(20) NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Correo` varchar(200) NOT NULL,
  `Telefono` varchar(200) NOT NULL,
  `IDJuntaDirectiva` int(11) NOT NULL,
  `Estado` varchar(10) NOT NULL,
  PRIMARY KEY (`IDSocioFundador`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_sociosfundadores` */

/*Table structure for table `tbl_sociosinvercionistas` */

DROP TABLE IF EXISTS `tbl_sociosinvercionistas`;

CREATE TABLE `tbl_sociosinvercionistas` (
  `IDInvercionista` int(11) NOT NULL AUTO_INCREMENT,
  `TipoPersona` varchar(20) NOT NULL,
  `Cedula` varchar(20) NOT NULL,
  `NombrePersona` varchar(20) NOT NULL,
  `Apellido1` varchar(20) NOT NULL,
  `Apellido2` varchar(20) NOT NULL,
  `TelefonoCasa` varchar(10) NOT NULL,
  `TelefonoMovil` varchar(10) NOT NULL,
  `TelefonoTrabajo` varchar(10) NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `FechaNacimiento` varchar(15) NOT NULL,
  `Correo` varchar(200) NOT NULL,
  `Estado` varchar(10) NOT NULL,
  PRIMARY KEY (`IDInvercionista`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_sociosinvercionistas` */

insert  into `tbl_sociosinvercionistas`(`IDInvercionista`,`TipoPersona`,`Cedula`,`NombrePersona`,`Apellido1`,`Apellido2`,`TelefonoCasa`,`TelefonoMovil`,`TelefonoTrabajo`,`Direccion`,`FechaNacimiento`,`Correo`,`Estado`) values 
(1,'Fisico','504560897','Paola ','Obregón','Peréz','26862556','83456721','260845672','Nicoya,Guanacaste','21/06/98','yeuua@gmail.com','Activo'),
(2,'Juridico','508990675','Marck','Mendez','Mora','2675897','84342156','25739048','Nicoya,Guanacaste','26/08/92','marc@hotmail.com','Activo'),
(3,'Fisico','102340567','Welmer','Zúñiga','Morera','26490849','874564342','27649950','Carmona,Nicoya,Guanacaste','02/03/72','kudtrf@hotmail.com','Activo');

/*Table structure for table `tbl_tipoactas` */

DROP TABLE IF EXISTS `tbl_tipoactas`;

CREATE TABLE `tbl_tipoactas` (
  `IDTipoActa` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(20) NOT NULL,
  `NuemroActual` int(11) NOT NULL,
  `Estado` varchar(20) NOT NULL,
  PRIMARY KEY (`IDTipoActa`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_tipoactas` */

/*Table structure for table `tbl_tipocambio` */

DROP TABLE IF EXISTS `tbl_tipocambio`;

CREATE TABLE `tbl_tipocambio` (
  `IDRegistroTCambio` int(11) NOT NULL AUTO_INCREMENT,
  `Abreviatura` varchar(5) NOT NULL,
  `IDMoneda` int(11) NOT NULL,
  `IDCategoriaTCambio` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  `ValorTipoCambio` double NOT NULL,
  `Estado` varchar(10) NOT NULL,
  PRIMARY KEY (`IDRegistroTCambio`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_tipocambio` */

/*Table structure for table `tbl_tipoproyectos` */

DROP TABLE IF EXISTS `tbl_tipoproyectos`;

CREATE TABLE `tbl_tipoproyectos` (
  `IDTipoProyectos` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(200) NOT NULL,
  `Estado` varchar(10) NOT NULL,
  PRIMARY KEY (`IDTipoProyectos`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_tipoproyectos` */

/*Table structure for table `tbl_usuarios` */

DROP TABLE IF EXISTS `tbl_usuarios`;

CREATE TABLE `tbl_usuarios` (
  `IDUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `NombrePersona` varchar(20) NOT NULL,
  `Apellido1` varchar(20) NOT NULL,
  `Apellido2` varchar(20) NOT NULL,
  `Usuario` varchar(20) NOT NULL,
  `Contrasena` varchar(255) NOT NULL,
  `TipoUsuario` varchar(20) NOT NULL,
  `Correo` varchar(200) NOT NULL,
  `Estado` varchar(10) NOT NULL,
  PRIMARY KEY (`IDUsuario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_usuarios` */

/* Procedure structure for procedure `Ins_Actas` */

/*!50003 DROP PROCEDURE IF EXISTS  `Ins_Actas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Ins_Actas`( IN a_IDActa int , in a_Fecha date, in a_HoraInicio time,
in a_HoraFinal time, in a_Lugar varchar(200),
in a_Asistencia varchar(200), in a_IDTipoActa int,
in a_NumActa int, in a_Observaciones varchar(200),
in a_Agenda  varchar(200), in a_Detalle varchar(200),
in a_Acuerdos varchar(200), in  a_Costos double)
BEGIN
	insert into tbl_Actas(IDActa,Fecha,HoraInicio,HoraFinal,Lugar,Asistencia,IDTipoActa,NumActa,Observaciones,Agenda,Detalle,Acuerdos,Costos)
values (  a_IDActa  ,  a_Fecha ,  a_HoraInicio ,
 a_HoraFinal ,  a_Lugar ,
 a_Asistencia , a_IDTipoActa ,
a_NumActa ,  a_Observaciones ,
 a_Agenda  ,  a_Detalle ,
 a_Acuerdos ,   a_Costos );
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Ins_boletas` */

/*!50003 DROP PROCEDURE IF EXISTS  `Ins_boletas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Ins_boletas`(
    IN c_IDBoleta INT,
    IN c_IDInversionista INT,
    IN c_Descripcion VARCHAR(200),
    IN c_NumMedidor VARCHAR(15), 
    IN c_NumContrato INT,
    IN c_MontoDonado DOUBLE, 
    IN c_FirmaDigital VARCHAR(255),
    IN c_AdImagenCedula VARCHAR(255))
BEGIN
	INSERT INTO tbl_boletas (IDBoleta,IDInversionista,Descripcion,NumMedidor,NumContrato,MontoDonado,FirmaDigital,AdImagenCedula)
	
	VALUES (c_IDBoleta,c_IDInversionista,
	c_Descripcion,c_NumMedidor,
	_NumContrato,c_MontoDonado,
        c_FirmaDigital, c_AdImagenCedula);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Ins_CategoriaTipoCambio` */

/*!50003 DROP PROCEDURE IF EXISTS  `Ins_CategoriaTipoCambio` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Ins_CategoriaTipoCambio`(in c_IDCategoriaTipoCambio int, in c_Categoria varchar(20),in c_IDEntidadFinanciera int,
in c_IDMoneda int )
BEGIN
insert into tbl_categoriatipocambio(IDCategoriaTipoCambio,Categoria,IDEntidadFinanciera,IDMoneda)
values  (c_IDCategoriaTipoCambio ,  c_Categoria , c_IDEntidadFinanciera ,
 c_IDMoneda  );
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Ins_Costos` */

/*!50003 DROP PROCEDURE IF EXISTS  `Ins_Costos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Ins_Costos`( in  c_IDCostos int, in c_Descripcion varchar(20), in c_Estado varchar(10)	)
BEGIN
insert into tbl_Costos(IDCostos,Descripcion,Estado)
values (c_IDCostos,c_Descripcion,c_Estado);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Ins_CuentasBancarias` */

/*!50003 DROP PROCEDURE IF EXISTS  `Ins_CuentasBancarias` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Ins_CuentasBancarias`(
in c_IDCuentaBancaria int,
In c_NumeroCuenta varchar(20),
in c_Descripcion  varchar(200),
in c_TipoCuenta varchar(15),
in c_IDMoneda  int,
IN c_IDEntidadFinaciera int,
in c_CuentaCliente varchar(20),
In c_SaldoLibros double,
in c_SaldoBancos double,
in c_Estado varchar(10)
)
BEGIN
	insert into tbl_CuentasBancarias(IDCuentaBancaria,NumeroCuenta,Descripcion,TipoCuenta,IDMoneda,IDEntidadFinanciera,CuentaCliente,SaldoLibros,SaldoBancos,Estado)
values(
 c_IDCuentaBancaria ,
 c_NumeroCuenta ,
 c_Descripcion  ,
 c_TipoCuenta ,
 c_IDMoneda  ,
 c_IDEntidadFinaciera ,
 c_CuentaCliente ,
 c_SaldoLibros ,
 c_SaldoBancos ,
 c_Estado
);
 
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Ins_Documentos` */

/*!50003 DROP PROCEDURE IF EXISTS  `Ins_Documentos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Ins_Documentos`(in d_IDDocumento int, in d_Descripcion varchar(200), in d_TipoMovimiento varchar(20))
BEGIN
	insert into tbl_Documentos(IDDocumento,Descripcion,TipoMovimiento )
	values (d_IDDocumento , d_Descripcion ,  d_TipoMovimiento );
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Ins_donaciones` */

/*!50003 DROP PROCEDURE IF EXISTS  `Ins_donaciones` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Ins_donaciones`(
       IN c_IDDonacion INT,
      IN c_NombrePersona VARCHAR(20), 
      IN c_Apellido1 VARCHAR(20), 
      IN c_Apellido2 VARCHAR(20),
      IN c_Cedula VARCHAR(20),
      IN c_TipoDonación VARCHAR(20),
      IN c_Telefono VARCHAR(10),
      IN c_Direccion VARCHAR(200),
      IN c_NumeroCuenta VARCHAR(20),
      IN c_MontoDonado INT,
      IN c_ConcurrenciaPago VARCHAR(20),
      IN c_Estado VARCHAR(20))
BEGIN
    INSERT INTO tbl_donaciones(IDDonacion,NombrePersona, Apellido1, Apellido2,Cedula,TipoDonación, Telefono,
                                Direccion, NumeroCuenta, MontoDonado, ConcurrenciaPago,Estado )
                                
         VALUES (c_IDDonacion, c_NombrePersona, c_Apellido1, c_Apellido2, c_Cedula, c_TipoDonación, c_Telefono, c_Direccion ,
     c_NumeroCuenta, c_MontoDonado, c_ConcurrenciaPago, c_Estado);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Ins_entidadesfinanciamiento` */

/*!50003 DROP PROCEDURE IF EXISTS  `Ins_entidadesfinanciamiento` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Ins_entidadesfinanciamiento`(
IN c_IDFinanciamiento INT,
IN c_NombreEntidad VARCHAR(20),
IN c_TipoEntidad VARCHAR(30),
IN c_CedulaJuridica VARCHAR(30),
IN c_Telefono VARCHAR(15),
IN c_PersonaContacto VARCHAR(20),
IN c_Apellido1 VARCHAR(20),
IN c_Apellido2 VARCHAR(20),
IN c_Ceula VARCHAR(20),
IN c_TelefonoContacto VARCHAR(10),
IN c_CorreoContacto VARCHAR(100),
IN c_PaginaWeb VARCHAR(50),
IN c_Estado VARCHAR(10)
)
BEGIN
     INSERT INTO tbl_entidadesfinanciamiento(IDFinanciamiento, NombreEntidad, TipoEntidad, CedulaJuridica,Telefono,
                                              PersonaContacto, Apellido1, Apellido2, Cedula, TelefonoContacto, 
                                              CorreoContacto, PaginaWeb, Estado)
                                              
      VALUES(c_IDFinanciamiento,c_NombreEntidad,c_TipoEntidad,
             c_CedulaJuridica,c_Telefono,c_PersonaContacto,c_Apellido1,
             c_Apellido2,c_Cedula,c_TelefonoContacto ,c_CorreoContacto ,c_PaginaWeb ,c_Estado);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Ins_entidadesfinancieras` */

/*!50003 DROP PROCEDURE IF EXISTS  `Ins_entidadesfinancieras` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Ins_entidadesfinancieras`(
IN c_IDEntidadFinanciera INT,
IN c_Descripcion VARCHAR(200),
IN c_Abreviatura VARCHAR(5),
IN c_Telefono1 VARCHAR(15),
IN c_Telefono2 VARCHAR(15),
IN c_Estado VARCHAR(10)
)
BEGIN
	INSERT INTO tbl_entidadesfinancieras(IDEntidadFinanciera, Descripcion, Abreviatura, Telefono1, Telefono2, Estado)
	VALUES(c_IDEntidadFinanciera,c_Descripcion, c_Abreviatura, c_Telefono1, c_Telefono2, c_Estado);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Ins_general` */

/*!50003 DROP PROCEDURE IF EXISTS  `Ins_general` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Ins_general`(IN c_Nombre VARCHAR(30),
IN c_Direccion VARCHAR(30),
IN c_Ciudad VARCHAR(20),
IN c_Provincia VARCHAR(20),
IN c_CedulaJuridica VARCHAR(20),
IN c_Telefono VARCHAR(15),
IN c_Fax VARCHAR(15),
IN c_SitioWeb VARCHAR(30),
IN c_Correo VARCHAR(30),
IN c_CorreoContacto varchar(30))
BEGIN
	INSERT INTO tbl_general(Nombre,Direccion,Ciudad,Provincia,CedulaJuridica,Telefono,Fax,SitioWeb,Correo,CorreoContacto)
        
        VALUES(c_Nombre,c_Direccion,c_Ciudad,c_Provincia,c_CedulaJuridica,c_Telefono,c_Fax,c_SitioWeb,c_Correo,c_CorreoContacto);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Ins_juntadirectiva` */

/*!50003 DROP PROCEDURE IF EXISTS  `Ins_juntadirectiva` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Ins_juntadirectiva`(
IN c_IDJuntaDirectiva INT,
IN c_Descripcion VARCHAR(30), 
IN c_Estado varchar(10))
BEGIN
	INSERT INTO tbl_juntadirectiva(IDJuntaDirectiva,Descripcion,Estado)
VALUES(c_IDJuntaDirectiva,c_Descripcion,c_Estado);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Ins_moneda` */

/*!50003 DROP PROCEDURE IF EXISTS  `Ins_moneda` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Ins_moneda`(
IN c_IDMoneda INT,
IN c_Abreviatura VARCHAR(5),
IN c_Descripcion VARCHAR(20),
IN c_Simbolo VARCHAR(5),
IN c_Estado VARCHAR(10))
BEGIN 
INSERT INTO tbl_moneda(IDMoneda,Abreviatura,Descripcion,Simbolo,Estado)
  
VALUES(c_IDMoneda,c_Abreviatura,c_Descripcion,c_Simbolo,c_Estado);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Ins_Movimiento` */

/*!50003 DROP PROCEDURE IF EXISTS  `Ins_Movimiento` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Ins_Movimiento`(IN m_IDlibro INT, IN m_IDCuentaBancaria INT, IN m_IDMoneda INT, IN m_IDTipoDocumento INT,
 IN m_IDTipoDescripcion INT, IN m_IDTipoMovimiento INT, IN m_NumDocumento INT, IN m_FechaDocumento DATE, IN m_Monto DOUBLE,
 IN m_TipoCambio DOUBLE, IN m_MontoMonedaLocal DOUBLE, IN m_SaldoActual DOUBLE, IN m_Beneficiario VARCHAR(20),IN m_Detalle VARCHAR(200),
  IN m_FechaRegistro DATE)
BEGIN
INSERT INTO tbl_movimientolibro(IDlibro, IDCuentaBancaria, IDMoneda, IDTipoDocumento, IDTipoDescripcion, IDTipoMovimiento, NumDocumento, FechaDocumento,
Monto, TipoCambio, MontoMonedaLocal, SaldoActual, Beneficiario, Detalle, FechaRegistro)
VALUES(m_IDlibro, m_IDCuentaBancaria, m_IDMoneda, m_IDTipoDocumento, m_IDTipoDescripcion, m_IDTipoMovimiento, m_NumDocumento,
 m_FechaDocumento, m_Monto, m_TipoCambio, m_MontoMonedaLocal, m_SaldoActual, m_Beneficiario, m_Detalle, m_FechaRegistro);
END */$$
DELIMITER ;

/* Procedure structure for procedure `Ins_Notas` */

/*!50003 DROP PROCEDURE IF EXISTS  `Ins_Notas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Ins_Notas`(IN n_IDNotas INT, IN n_Fecha DATE, IN n_Lugar VARCHAR(200), IN n_Asistencia VARCHAR(200),
IN n_Objetivos VARCHAR(200), IN n_Detalle VARCHAR(200), IN n_Acuerdos VARCHAR(200), IN n_Acciones VARCHAR(200),
IN n_Fotos VARCHAR(255), IN n_Costos DOUBLE, IN n_Beneficiario VARCHAR(100), IN n_FechaRegistro DATE, IN n_Estado VARCHAR(10)  )
BEGIN
INSERT INTO tbl_notas(IDNotas, Fecha, Lugar, Asistencia, Objetivos, Detalle, Acciones, Fotos, Costos, Beneficiario, FechaRegistro, Estado)
VALUES(n_IDNotas, n_Fecha, n_Lugar, n_Asistencia, n_Objetivos, n_Detalle, n_Acuerdos, n_Acciones, n_Fotos, n_Costos, n_Beneficiario, n_FechaRegistro, n_Estado);
END */$$
DELIMITER ;

/* Procedure structure for procedure `Ins_Proyectos` */

/*!50003 DROP PROCEDURE IF EXISTS  `Ins_Proyectos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Ins_Proyectos`(IN p_IDProyecto INT, IN p_Descripcion VARCHAR(20), IN p_Periodo DATE, IN p_MontoProyecto DOUBLE, IN p_MontoEjecutado DOUBLE,
IN p_MontoDonado DOUBLE, IN p_MontoContrapartida DOUBLE, IN p_Objetivo VARCHAR(200), IN p_Metas VARCHAR(200), IN p_Actividades VARCHAR(300),
IN p_Lugar VARCHAR(50), IN p_Costo DOUBLE, IN p_Resultados VARCHAR(300), IN p_fotos VARCHAR(100), IN p_Estado VARCHAR(10))
BEGIN
INSERT INTO tbl_boletas(IDProyecto,Descripcion,Periodo, MontoProyecto,MontoEjecutado,
MontoDonado,MontoContrapartida,Objetivo, Metas,Actividades,Lugar,Costo,Resultados, fotos,Estado)
VALUES(p_IDProyecto,p_Descripcion,p_Periodo, p_MontoProyecto, p_MontoEjecutado,
p_MontoDonado, p_MontoContrapartida, p_Objetivo, p_Metas, p_Actividades, p_Lugar, p_Costo, p_Resultados, p_fotos, p_Estado);
END */$$
DELIMITER ;

/* Procedure structure for procedure `Ins_SocioInver` */

/*!50003 DROP PROCEDURE IF EXISTS  `Ins_SocioInver` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Ins_SocioInver`(IN  c_IDInversionista INT,IN c_TipoPersona VARCHAR(20), IN c_Cedula VARCHAR(20), IN c_NombrePersona VARCHAR(20), 
    IN c_Apellido1 VARCHAR(20),IN c_Apellido2 VARCHAR(20),IN c_TelefonoCasa VARCHAR(10),IN c_TelefonoMovil VARCHAR(10),IN c_TelefonoTrabajo VARCHAR(10),
    IN c_Direccion VARCHAR(200),IN c_FechaNacimiento VARCHAR(15),IN c_Correo VARCHAR(200),IN c_Estado  VARCHAR(10))
BEGIN
INSERT INTO tbl_socioinvercionista(IDInversionista,TipoPersona,Cedula,NombrePersona, 
 Apellido1,Apellido2,TelefonoCasa,TelefonoMovil,TelefonoTrabajo,Direccion,FechaNacimiento,Correo,Estado)
VALUES (c_IDInversionista,c_TipoPersona,c_Cedula,c_NombrePersona, 
 c_Apellido1,c_Apellido2,c_TelefonoCasa,c_TelefonoMovil,c_TelefonoTrabajo,c_Direccion,c_FechaNacimiento,c_Correo,c_Estado);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Ins_SociosFundadores` */

/*!50003 DROP PROCEDURE IF EXISTS  `Ins_SociosFundadores` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Ins_SociosFundadores`(IN f_IDSocioFundador INT, IN f_NombrePersona VARCHAR(20), IN f_Apellido1 VARCHAR(20), 
IN f_Apellido2 VARCHAR(20), IN f_Cedula VARCHAR(20), IN f_Direccion VARCHAR(200), IN f_Correo VARCHAR(200),
 IN f_Telefono VARCHAR(200), IN f_IDJuntaDirectiva INT, IN f_Estado VARCHAR(10))
BEGIN
INSERT INTO tbl_sociosfundadores(IDSocioFundador, NombrePersona, Apellido1, Apellido2, Cedula, Direccion, Correo, Telefono, IDJuntaDirectiva, Estado)
VALUES(f_IDSocioFundador, f_NombrePersona, f_Apellido1, f_Apellido2, f_Cedula, f_Direccion, f_Correo, f_Telefono, f_IDJuntaDirectiva, f_Estado);
END */$$
DELIMITER ;

/* Procedure structure for procedure `Ins_tipoactas` */

/*!50003 DROP PROCEDURE IF EXISTS  `Ins_tipoactas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Ins_tipoactas`( IN a_IDTipoActa INT ,
IN a_Descripcion VARCHAR(20),
IN a_NumeroActual INT,
IN a_Estado VARCHAR(20))
BEGIN
	INSERT INTO tbl_tipoactas(IDTipoActa,Descripcion,NumeroActual,Estado)
VALUES (a_IDTipoActa,a_Descripcion,a_NumeroActual,a_Estado);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Ins_tipocambio` */

/*!50003 DROP PROCEDURE IF EXISTS  `Ins_tipocambio` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Ins_tipocambio`(IN c_IDRegistroTCambio INT, IN c_Abreviatura VARCHAR(5),IN c_IDMoneda INT,
IN c_IDCategoriaTCambio INT,IN c_Fecha DATETIME,IN c_ValorTipoCambio DOUBLE,IN c_Estado VARCHAR(10))
BEGIN
INSERT INTO tbl_tipocambio(IDRegistroTCambio,Abreviatura,IDMoneda,IDCategoriaTCambio,Fecha,ValorTipoCambio,Estado)
VALUES  (c_IDRegistroTCambio,c_Abreviatura,c_IDMoneda,c_IDCategoriaTCambio,c_Fecha,c_ValorTipoCambio,c_Estado);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Ins_tipoproyectos` */

/*!50003 DROP PROCEDURE IF EXISTS  `Ins_tipoproyectos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Ins_tipoproyectos`(IN c_IDTipoProyecto INT, IN c_Descripcion VARCHAR(20),IN c_Estado VARCHAR(10))
BEGIN
INSERT INTO tbl_tipoproyectos(IDTipoProyecto,Descripcion,Estado)
VALUES  (c_IDTipoProyecto,c_Descripcion,c_Estado);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Ins_Usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `Ins_Usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Ins_Usuario`(IN d_IDUsuario INT,
IN d_NombrePersona VARCHAR(20),
IN d_Apellido1 VARCHAR(20),
IN d_Apellido2 VARCHAR(20),
IN d_Usuario VARCHAR(20),
IN d_Contraseña VARCHAR(255),
IN d_TipoUsuario VARCHAR(20),
IN d_Correo VARCHAR(200),
IN d_Estado VARCHAR(10))
BEGIN
	INSERT INTO tbl_usuarios(IDUsuario,NombrePersona,Apellido1,Apellido2,Usuario,Contraseña,TipoUsuario,Correo,Estado)
	VALUES (d_IDUsuario,d_NombrePersona,d_Apellido1,d_Apellido2,d_Usuario,d_Contraseña,d_TipoUsuario,d_Correo,d_Estado);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Upd_Actas` */

/*!50003 DROP PROCEDURE IF EXISTS  `Upd_Actas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Upd_Actas`(IN a_IDActa INT , IN a_Fecha DATE, IN a_HoraInicio TIME,
IN a_HoraFinal TIME, IN a_Lugar VARCHAR(200),
IN a_Asistencia VARCHAR(200), IN a_IDTipoActa INT,
IN a_NumActa INT, IN a_Observaciones VARCHAR(200),
IN a_Agenda  VARCHAR(200), IN a_Detalle VARCHAR(200),
IN a_Acuerdos VARCHAR(200), IN  a_Costos DOUBLE)
BEGIN
update tbl_actas set
Fecha = a_Fecha,
HoraInicio= a_HoraInicio,
HoraFinal= a_HoraFinal,
Lugar=a_Lugar,
Asistencia=a_Asistencia,
IDTipoActa=a_IDTipoActa,
NumActa=a_NumActa,
Observaciones=a_Observaciones,
Agenda=a_Agenda,
Detalle	=a_Detalle,
Acuerdos=a_Acuerdos,
Costos=a_Costos where IDActa= a_IDActa;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Upd_Boletas` */

/*!50003 DROP PROCEDURE IF EXISTS  `Upd_Boletas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Upd_Boletas`(IN b_IDBoleta INT , IN b_IDInvercionista INT, IN b_Descripcion VARCHAR(200),
IN b_NumMedidor VARCHAR(15), IN b_NumContrato INT, IN b_MontoDonado DOUBLE, IN b_FirmaDigital VARCHAR(255), IN b_ImagenCedula VARCHAR(255))
BEGIN
UPDATE tbl_boletas SET
IDInvercionista = b_IDInvercionista,
Descripcion = b_Descripcion,
NumMedidor = b_NumMedidor,
NumContrato = b_NumContrato,
MontoDonado = b_MontoDonado,
FirmaDigital = b_FirmaDigital,
ImagenCedula = b_ImagenCedula
 WHERE IDBoleta= b_IDBoleta;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Upd_CategoriaTipoCambio` */

/*!50003 DROP PROCEDURE IF EXISTS  `Upd_CategoriaTipoCambio` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Upd_CategoriaTipoCambio`(IN c_IDCategoriaTipoCambio INT, IN c_Categoria VARCHAR(20),IN c_IDEntidadFinanciera INT,
IN c_IDMoneda INT)
BEGIN
update tbl_categoriatipocambio set
Categoria=c_Categoria,
IDEntidadFinanciera=c_EntidadFinanciera,
IDMoneda=IDMoneda where	IDCategoriaTipoCambio = c_IDCategoriaTipoCambio;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Upd_Costos` */

/*!50003 DROP PROCEDURE IF EXISTS  `Upd_Costos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Upd_Costos`(IN  c_IDCostos INT, IN c_Descripcion VARCHAR(20), IN c_Estado VARCHAR(10))
BEGIN
update tbl_costos set 
Descripcion=c_DesCripcion,
Estado=c_Estado where 
IDCostos=c_IDCostos;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Upd_CuentasBancarias` */

/*!50003 DROP PROCEDURE IF EXISTS  `Upd_CuentasBancarias` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Upd_CuentasBancarias`(IN c_IDCuentaBancaria INT,
IN c_NumeroCuenta VARCHAR(20),
IN c_Descripcion  VARCHAR(200),
IN c_TipoCuenta VARCHAR(15),
IN c_IDMoneda  INT,
IN c_IDEntidadFinaciera INT,
IN c_CuentaCliente VARCHAR(20),
IN c_SaldoLibros DOUBLE,
IN c_SaldoBancos DOUBLE,
IN c_Estado VARCHAR(10))
BEGIN
	
	update  tbl_cuentasbancarias set 
 NumeroCuenta= c_NumeroCuenta ,
 Descripcion=c_Descripcion  ,
 TipoCuenta=c_TipoCuenta ,
 IDMoneda=c_IDMoneda  ,
 IDEntidadFinanciera=c_IDEntidadFinaciera ,
 CuentaCliente=c_CuentaCliente ,
 SaldoLibros=c_SaldoLibros ,
 SaldoBancos=c_SaldoBancos ,
 Estado= c_Estado
where IDCuentaBancaria=	c_IDCuentaBancaria;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Upd_Documentos` */

/*!50003 DROP PROCEDURE IF EXISTS  `Upd_Documentos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Upd_Documentos`(IN d_IDDocumento INT, IN d_Descripcion VARCHAR(200), IN d_TipoMovimiento VARCHAR(20))
BEGIN
update tbl_documentos set 
Descripcion= d_Descripcion,
TipoMovimiento=d_TipoMovimiento
 where IDDocumento =d_IDDocumento;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Upd_donaciones` */

/*!50003 DROP PROCEDURE IF EXISTS  `Upd_donaciones` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Upd_donaciones`(
IN c_IDDonacion INT,
IN c_NombrePersona VARCHAR(20),
IN c_Apellido1 VARCHAR(20),
IN c_Apellido2 VARCHAR(20),
IN c_Cedula VARCHAR(20),
IN c_TipoDonacion VARCHAR(20),
IN c_Telefono VARCHAR(10),
IN c_Direccion VARCHAR(200),
IN c_NumeroCuenta VARCHAR(20),
IN c_MontoDonado DOUBLE,
IN c_ConcurrenciaPago VARCHAR(20),
IN c_Estado VARCHAR(20))
BEGIN
 UPDATE tbl_donaciones SET   NombrePersona=c_NombrePersona,
                         Apellido1=c_Apellido1,
                         Apellido2=c_Apellido2,
                         Cedula=c_Cedula,
                         TipoDonacion=c_TipoDonacion,
                         Telefono=c_Telefono,
                         Direccion=c_Direccion,
                         NumeroCuenta=c_NumeroCuenta,
                         MontoDonado=c_MontoDonado,
                         ConcurrenciaPago=c_ConcurrenciaPago,
                         Estado=c_Estado  
                         WHERE IDDonacion = c_IDDonacion;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Upd_entidadesfinanciamiento` */

/*!50003 DROP PROCEDURE IF EXISTS  `Upd_entidadesfinanciamiento` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Upd_entidadesfinanciamiento`(
IN c_IDFinanciamiento INT,
IN c_NombreEntidad VARCHAR(20),
IN c_TipoEntidad VARCHAR(30),
IN c_CedulaJuridica VARCHAR(30),
IN c_Telefono VARCHAR(15),
IN c_PersonaContacto VARCHAR(20),
IN c_Apellido1 VARCHAR(20),
IN c_Apellido2 VARCHAR(20),
IN c_Ceula VARCHAR(20),
IN c_TelefonoContacto VARCHAR(10),
IN c_CorreoContacto VARCHAR(100),
IN c_PaginaWeb VARCHAR(50),
IN c_Estado VARCHAR(10)
)
BEGIN
UPDATE tbl_entidadesfinanciamiento SET 
 NombreEntidad=c_NombreEntidad,
  TipoEntidad=c_TipoEntidad,
   CedulaJuridica=c_CedulaJuridica,
   Telefono=c_Telefono,
  PersonaContacto=c_PersonaContacto, 
  Apellido1=c_Apellido1,
   Apellido2=c_Apellido2,
    Cedula=c_Cedula,
     TelefonoContacto=c_TelefonoContacto, 
   CorreoContacto=c_CorreoContacto, 
   PaginaWeb=c_PaginaWeb, 
   Estado=c_Estado  WHERE IDFinanciamiento=c_IDFinanciamiento;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Upd_entidadesfinancieras` */

/*!50003 DROP PROCEDURE IF EXISTS  `Upd_entidadesfinancieras` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Upd_entidadesfinancieras`(
    IN c_IDEntidadFinanciera INT,
    IN c_Descripcion VARCHAR(200),
    IN c_Abreviatura VARCHAR(5),
    IN c_Telefono1 VARCHAR(15),
    IN c_Telefono2 VARCHAR(15),
    IN c_Estado VARCHAR(10))
BEGIN
	UPDATE tbl_entidadesfinancieras SET Descripcion=c_Descripcion,
	                                    Abreviatura=c_Abreviatura,
	                                    Telefono1=c_Telefono1,
	                                    Telefono2=c_Telefono2,
	                                    Estado=c_Estado WHERE IDEntidadFinanciera=c_IDEntidadFinanciera;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Upd_general` */

/*!50003 DROP PROCEDURE IF EXISTS  `Upd_general` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Upd_general`(
IN c_Nombre VARCHAR(30),
IN c_Direccion VARCHAR(30),
IN c_Ciudad VARCHAR(20),
IN c_Provincia VARCHAR(20),
IN c_CedulaJuridica VARCHAR(20),
IN c_Telefono VARCHAR(15),
IN c_Fax VARCHAR(15),
IN c_SitioWeb VARCHAR(30),
IN c_Correo VARCHAR(30),
IN c_CorreoContacto VARCHAR(30)
)
BEGIN
UPDATE tbl_general SET Direccion=c_Direccion,
                      Ciudad=c_Ciudad,
                      Provincia=c_Provincia,
                      CedulaJuridica=c_CedulaJuridica,
                     Telefono=c_Telefono,
                     Fax=c_Fax,
                      SitioWeb=c_SitioWeb,
                      Correo=c_Correo,
                      CorreoContacto=c_CorreoContacto WHERE  Nommbre=c_Nombre;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Upd_juntadirectiva` */

/*!50003 DROP PROCEDURE IF EXISTS  `Upd_juntadirectiva` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Upd_juntadirectiva`(
IN c_IDJuntaDirectiva INT,
IN c_Descripcion VARCHAR(30), 
IN c_Estado VARCHAR(10)
)
BEGIN
  UPDATE tbl_juntadirectiva SET Descripcion=c_Descripcion,
                                 Estado=c_Estado WHERE IDJuntaDirectiva=c_IDJuntaDirectiva;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Upd_moneda` */

/*!50003 DROP PROCEDURE IF EXISTS  `Upd_moneda` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Upd_moneda`(
IN c_IDMoneda INT,
IN c_Abreviatura VARCHAR(5),
IN c_Descripcion VARCHAR(20),
IN c_Simbolo VARCHAR(5),
IN c_Estado VARCHAR(10))
BEGIN 
UPDATE tbl_moneda SET  Abreviatura=c_Abreviatura,
                       Descripcion=c_Descripcion,
                       Simbolo=c_Simbolo,
                       Estado=c_Estado WHERE IDMoneda=c_IDMoneda;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Upd_MovimientoLibro` */

/*!50003 DROP PROCEDURE IF EXISTS  `Upd_MovimientoLibro` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Upd_MovimientoLibro`(IN m_IDlibro INT, IN m_IDCuentaBancaria INT, IN m_IDMoneda INT, IN m_IDTipoDocumento INT, IN m_NumDocumento INT,
IN m_FechaDocumento DATE, IN m_Monto DOUBLE, IN m_TipoCambio DOUBLE, IN m_MontoMonedaLocal DOUBLE, IN m_SaldoActual DOUBLE, IN m_Beneficiario VARCHAR(20), 
IN m_Detalle VARCHAR(200), IN m_FechaRegistro DATE)
BEGIN
UPDATE tbl_movimientolibro SET
IDCuentaBancaria = m_IDCuentaBancaria,
IDMoneda = m_IDMoneda,
IDTipoDocumento = m_IDTipoDocumento,
IDTipoDescripcion = m_IDTipoDescripcion,
IDTipoMovimiento = m_IDTipoMovimiento,
NumDocumento = m_NumDocumento,
FechaDocumento = m_FechaDocumento,
Monto = m_Monto,
TipoCambio = m_TipoCambio,
MontoMonedaLocal = m_MontoMonedaLocal,
SaldoActual = m_SaldoActual,
Beneficiario = m_Beneficiario,
Detalle = m_Detalle,
FechaRegistro = m_FechaRegistro
 WHERE IDlibro = m_IDlibro;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Upd_Proyectos` */

/*!50003 DROP PROCEDURE IF EXISTS  `Upd_Proyectos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Upd_Proyectos`(IN p_IDProyecto INT, IN p_Descripcion VARCHAR(20), IN p_Periodo DATE, IN p_MontoProyecto DOUBLE, IN p_MontoEjecutado DOUBLE,
IN p_MontoDonado DOUBLE, IN p_MontoContrapartida DOUBLE, IN p_Objetivo VARCHAR(200), IN p_Metas VARCHAR(200), IN p_Actividades VARCHAR(300), IN p_Lugar VARCHAR(50),
IN p_Costo DOUBLE, IN p_Resultados VARCHAR(300), p_fotos VARCHAR(1000), IN p_Estado VARCHAR(10))
BEGIN
UPDATE tbl_proyectos SET
Descripcion = p_Descripcion,
Periodo = p_Periodo,
MontoProyecto = p_MontoProyecto,
MontoEjecutado = p_MontoEjecutado,
MontoDonado = p_MontoDonado,
MontoContrapartida = p_MontoContrapartida,
Objetivo = p_Objetivo,
Metas = p_Metas,
Actividades = p_Actividades,
Lugar = p_Lugar,
Costo = p_Costo,
Resultados = p_Resultados,
fotos = p_fotos,
Estado = p_Estado
 WHERE IDProyecto = p_IDProyecto;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Upd_socioinver` */

/*!50003 DROP PROCEDURE IF EXISTS  `Upd_socioinver` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Upd_socioinver`(IN  c_IDInvercionista INT,IN c_TipoPersona VARCHAR(20), IN c_Cedula VARCHAR(20), IN c_NombrePersona VARCHAR(20), 
    IN c_Apellido1 VARCHAR(20),IN c_Apellido2 VARCHAR(20),IN c_TelefonoCasa VARCHAR(10),IN c_TelefonoMovil VARCHAR(10),IN c_TelefonoTrabajo VARCHAR(10),
    IN c_Direccion VARCHAR(200),IN c_FechaNacimiento VARCHAR(15),IN c_Correo VARCHAR(200),IN c_Estado  VARCHAR(10))
BEGIN
UPDATE tbl_sociosinvercionistas SET
TipoPersona=c_TipoPersona,
Cedula=c_Cedula,
NombrePersona=c_NombrePersona,
Apellido1=c_Apellido1,
Apellido2=c_Apellido2,
TelefonoCasa=c_TelefonoCasa,
TelefonoMovil=c_TelefonoMovil,
TelefonoTrabajo=c_TelefonoTrabajo,
Direccion=c_Direccion,
FechaNacimiento=c_FechaNacimiento,
Correo=c_Correo,
Estado=c_Estado
 WHERE IDIvercionista= c_IDInvercionista;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Upd_SociosFundadores` */

/*!50003 DROP PROCEDURE IF EXISTS  `Upd_SociosFundadores` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Upd_SociosFundadores`(IN f_IDSocioFundador INT,IN f_NombrePersona VARCHAR(20), IN f_Apellido1 VARCHAR(20), IN f_Apellido2 VARCHAR(20),
IN f_Cedula VARCHAR(20), IN f_Direccion VARCHAR(200), IN f_Correo VARCHAR(200), IN f_Telefono VARCHAR(200), IN f_IDJuntaDirectiva INT, IN f_Estado VARCHAR(10))
BEGIN
UPDATE tbl_sociosfundadores SET
NombrePersona = f_NombrePersona,
Apellido1 = f_Apellido1,
Apellido2 = f_Apellido2,
Cedula = f_Cedula,
Direccion = f_Direccion,
Correo = f_Correo,
Telefono = f_Telefono,
IDJuntaDirectiva = f_IDJuntaDirectiva,
Estado = f_Estado
 WHERE IDSocioFundador = f_IDSocioFundador;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Upd_tipoactas` */

/*!50003 DROP PROCEDURE IF EXISTS  `Upd_tipoactas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Upd_tipoactas`(IN a_IDTipoActa INT ,IN a_Descripcion VARCHAR(20), IN a_NumeroActual INT,IN a_Estado VARCHAR(20))
BEGIN
UPDATE tbl_tipoactas SET
Descripcion = a_Descripcion,
NumeroActual = a_NumeroActual,
Estado = a_Estado
 WHERE IDTipoActa= a_IDTipoActa;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Upd_tipocambio` */

/*!50003 DROP PROCEDURE IF EXISTS  `Upd_tipocambio` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Upd_tipocambio`(IN c_IDRegistroTCambio INT, IN c_Abreviatura VARCHAR(5),IN c_IDMoneda INT,
IN c_IDCategoriaTCambio INT,IN c_Fecha DATETIME,IN c_ValorTipoCambio DOUBLE,IN c_Estado VARCHAR(10))
BEGIN
UPDATE tbl_tipocambio SET
Abreviatura=c_Abreviatura,
IDMoneda=c_IDMoneda,
IDCategoriaTCambio=c_IDCategoriaTCambio, 
Fecha=c_Fecha,
ValorTipoCambio=c_ValorTipoCambio,
Estado=c_Estado
WHERE	IDRegistroTCambio = c_IDRegistroTCambio;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Upd_tipoproyectos` */

/*!50003 DROP PROCEDURE IF EXISTS  `Upd_tipoproyectos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Upd_tipoproyectos`(IN c_IDTipoProyectos INT, IN c_Descripcion VARCHAR(200),IN c_Estado VARCHAR(10))
BEGIN
UPDATE tbl_tipoproyectos SET
Descripcion=c_Descripcion,
Estado=c_Estado
WHERE	IDTipoProyectos = c_IDTipoProyectos;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Upd_Usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `Upd_Usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Upd_Usuario`(IN d_IDUsuario INT,
IN d_NombrePersona VARCHAR(20),
IN d_Apellido1 VARCHAR(20),
IN d_Apellido2 VARCHAR(20),
IN d_Usuario VARCHAR(20),
IN d_Contraseña VARCHAR(255),
IN d_TipoUsuario VARCHAR(20),
IN d_Correo VARCHAR(200),
IN d_Estado VARCHAR(10))
BEGIN
UPDATE tbl_usuarios SET
NombrePersona=d_NombrePersona,
Apellido1=d_Apellido1,
Apellido2=d_Apellido2,
Usuario=d_Usuario,
Contraseña=d_Contraseña,
TipoUsuario=d_TipoUsuario,
Correo=d_Correo,
Estado=d_Estado
WHERE	IDUsuario = d_IDUsuario;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Vie_Actas` */

/*!50003 DROP PROCEDURE IF EXISTS  `Vie_Actas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Vie_Actas`()
BEGIN
select IDActa,Fecha,HoraInicio,HoraFinal,Lugar,Asistencia,IDTipoActa,NumActa,Observaciones,Agenda,Detalle,Acuerdos,Costos from tbl_actas;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Vie_Boletas` */

/*!50003 DROP PROCEDURE IF EXISTS  `Vie_Boletas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Vie_Boletas`()
BEGIN
SELECT IDBoleta, IDInvercionista, Descripcion, NumMedidor, NumContrato, MontoDonado, FirmaDigital, ImagenCedula FROM tbl_boletas;
 	
 END */$$
DELIMITER ;

/* Procedure structure for procedure `Vie_CategoriaTipoCambio` */

/*!50003 DROP PROCEDURE IF EXISTS  `Vie_CategoriaTipoCambio` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Vie_CategoriaTipoCambio`()
BEGIN
SELECT IDCategoriaTipoCambio,Categoria,IDEntidadFinanciera,IDMoneda FROM tbl_categoriatipocambio;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Vie_Costos` */

/*!50003 DROP PROCEDURE IF EXISTS  `Vie_Costos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Vie_Costos`()
begin
select IDCostos,Descripcion,Estado from tbl_costos;
 	
 end */$$
DELIMITER ;

/* Procedure structure for procedure `Vie_CuentasBancarias` */

/*!50003 DROP PROCEDURE IF EXISTS  `Vie_CuentasBancarias` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Vie_CuentasBancarias`()
BEGIN
SELECT IDCuentaBancaria,NumeroCuenta,Descripcion,TipoCuenta,IDMoneda,IDEntidadFinanciera,CuentaCliente,SaldoLibros,SaldoBancos,Estado FROM tbl_cuentasbancarias;
 	
 END */$$
DELIMITER ;

/* Procedure structure for procedure `Vie_Documentos` */

/*!50003 DROP PROCEDURE IF EXISTS  `Vie_Documentos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Vie_Documentos`()
BEGIN
SELECT IDDocumento,Descripcion,TipoMovimiento FROM tbl_documentos;
 	
 END */$$
DELIMITER ;

/* Procedure structure for procedure `Vie_donaciones` */

/*!50003 DROP PROCEDURE IF EXISTS  `Vie_donaciones` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Vie_donaciones`()
BEGIN
SELECT IDDonacion,NombrePersona, Apellido1, Apellido2,Cedula,TipoDonación, Telefono,
       Direccion, NumeroCuenta, MontoDonado, ConcurrenciaPago,Estado 
       FROM tbl_donaciones;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Vie_entidadesfinanciamiento` */

/*!50003 DROP PROCEDURE IF EXISTS  `Vie_entidadesfinanciamiento` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Vie_entidadesfinanciamiento`()
BEGIN
SELECT IDFinanciamiento, NombreEntidad, TipoEntidad, CedulaJuridica,Telefono,
       PersonaContacto, Apellido1, Apellido2, Cedula, TelefonoContacto, 
       CorreoContacto, PaginaWeb, Estado 
       FROM tbl_entidadesfinanciamiento;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Vie_entidadesfinancieras` */

/*!50003 DROP PROCEDURE IF EXISTS  `Vie_entidadesfinancieras` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Vie_entidadesfinancieras`()
BEGIN
SELECT IDEntidadFinanciera, Descripcion, Abreviatura, Telefono1, Telefono2, Estado FROM tbl_entidadesfinancieras;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Vie_general` */

/*!50003 DROP PROCEDURE IF EXISTS  `Vie_general` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Vie_general`()
BEGIN
SELECT Nombre,Direccion,Ciudad,Provincia,CedulaJuridica,Telefono,Fax,SitioWeb,Correo,CorreoContacto FROM tbl_general;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Vie_juntadirectiva` */

/*!50003 DROP PROCEDURE IF EXISTS  `Vie_juntadirectiva` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Vie_juntadirectiva`()
BEGIN
SELECT  IDJuntaDirectiva,Descripcion,Estado FROM tbl_juntadirectiva;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Vie_moneda` */

/*!50003 DROP PROCEDURE IF EXISTS  `Vie_moneda` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Vie_moneda`()
BEGIN
SELECT IDMoneda,Abreviatura,Descripcion,Simbolo,Estado FROM tbl_moneda;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Vie_MovimientoLibro` */

/*!50003 DROP PROCEDURE IF EXISTS  `Vie_MovimientoLibro` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Vie_MovimientoLibro`()
BEGIN
SELECT IDlibro, IDCuentaBancaria, IDMoneda, IDTipoDocumento, IDTipoDescripcion, IDTipoMovimiento, NumDocumento, FechaDocumento,
Monto, TipoCambio, MontoMonedaLocal, SaldoActual, Beneficiario, Detalle, FechaRegistro FROM tbl_movimientolibro;
 	
 END */$$
DELIMITER ;

/* Procedure structure for procedure `Vie_Notas` */

/*!50003 DROP PROCEDURE IF EXISTS  `Vie_Notas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Vie_Notas`()
BEGIN
SELECT IDNotas, Fecha, Lugar, Asistencia, Objetivos, Detalle, Acciones, Fotos, Costos, Beneficiario, FechaRegistro, Estado FROM tbl_notas;
 	
 END */$$
DELIMITER ;

/* Procedure structure for procedure `Vie_Proyectos` */

/*!50003 DROP PROCEDURE IF EXISTS  `Vie_Proyectos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Vie_Proyectos`()
BEGIN
SELECT IDProyecto, Descripcion, Periodo, MontoProyecto, 
     MontoEjecutado, MontoDonado, MontoContrapartida, Objetivo, Metas, Actividades, Lugar,Costo,
     Resultados, Fotos,Estado FROM tbl_proyectos;
 	
 END */$$
DELIMITER ;

/* Procedure structure for procedure `Vie_SocioInver` */

/*!50003 DROP PROCEDURE IF EXISTS  `Vie_SocioInver` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Vie_SocioInver`()
BEGIN
SELECT IDInvercionista,TipoPersona,Cedula,NombrePersona,Apellido1,Apellido2,TelefonoCasa,TelefonoMovil,TelefonoTrabajo,Direccion,FechaNacimiento,Correo,Estado FROM tbl_sociosinvercionistas;
 	
 END */$$
DELIMITER ;

/* Procedure structure for procedure `Vie_SociosFundadores` */

/*!50003 DROP PROCEDURE IF EXISTS  `Vie_SociosFundadores` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Vie_SociosFundadores`()
BEGIN
SELECT IDSocioFundador, NombrePersona, Apellido1, Apellido2, Cedula, Direccion, Correo, Telefono, IDJuntaDirectiva, Estado FROM tbl_sociosfundadores;
 	
 END */$$
DELIMITER ;

/* Procedure structure for procedure `Vie_tipoactas` */

/*!50003 DROP PROCEDURE IF EXISTS  `Vie_tipoactas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Vie_tipoactas`()
BEGIN
SELECT IDTipoActa,Descripcion,NumeroActual,Estado FROM tbl_tipoactas;
 	
 END */$$
DELIMITER ;

/* Procedure structure for procedure `Vie_TipoCambio` */

/*!50003 DROP PROCEDURE IF EXISTS  `Vie_TipoCambio` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Vie_TipoCambio`()
BEGIN
SELECT IDRegistroTCambio,Abreviatura,IDMoneda,IDCategoriaTCambio,Fecha,ValorTipoCambio,Estado FROM tbl_tipocambio;
 	
 END */$$
DELIMITER ;

/* Procedure structure for procedure `Vie_Usuario` */

/*!50003 DROP PROCEDURE IF EXISTS  `Vie_Usuario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Vie_Usuario`()
BEGIN
SELECT IDUsuario,NombrePersona,Apellido1,Apellido2,Usuario,Contraseña,TipoUsuario,Correo,Estado FROM tbl_usuarios;
 	
 END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
