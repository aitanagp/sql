-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.16-nt-max


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema alquila_coches
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ alquila_coches;
USE alquila_coches;

--
-- Table structure for table `alquila_coches`.`agencia`
--

DROP TABLE IF EXISTS `agencia`;
CREATE TABLE `agencia` (
  `codigo` int(2) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  PRIMARY KEY  (`codigo`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alquila_coches`.`agencia`
--

/*!40000 ALTER TABLE `agencia` DISABLE KEYS */;
INSERT INTO `agencia` (`codigo`,`nombre`) VALUES 
 (4,'Gran V¡a'),
 (2,'Infante'),
 (1,'La Flota'),
 (3,'San Andr‚s');
/*!40000 ALTER TABLE `agencia` ENABLE KEYS */;


--
-- Table structure for table `alquila_coches`.`cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `nif` char(9) NOT NULL,
  `codigo` int(2) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `direccion` varchar(20) default NULL,
  `ciudad` varchar(20) default NULL,
  `telefono` char(9) NOT NULL,
  PRIMARY KEY  (`codigo`),
  UNIQUE KEY `nif` (`nif`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alquila_coches`.`cliente`
--

/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` (`nif`,`codigo`,`nombre`,`direccion`,`ciudad`,`telefono`) VALUES 
 ('11223344A',1,'Antonio Gil','Paz, 161','Santomera','512345678'),
 ('12345678Z',2,'Isabel Aliaga','Tejera, 11','Ceut¡','522334455'),
 ('15103048M',3,'Rub‚n Montes','Rocasa, 2','Beniel','588990099'),
 ('54321234P',4,'Cristina Mota','Jard¡n, 31','Beniel','587654321'),
 ('44261472G',5,'Mar¡a Prats','Pinos, 27','La Alberca','566677767'),
 ('55667788B',6,'Gema Mora','Huertos, 28','Ceut¡','511223344'),
 ('14253647F',7,'Gin‚s Soriano','Libertad, 36','Murcia','555667788'),
 ('87654321D',8,'Violeta Romero','Caminante, 46','Molina de Segura','555566656'),
 ('99001122E',9,'Julia Ib ¤ez','P jaros, 54','La Alberca','511122212'),
 ('11122233C',10,'Marisa Ripoll','Paseo Rosales, 3','Molina de Segura','522233323'),
 ('23200231G',11,'Ferm¡n G¢mez','Aire, 33','Molina de Segura','567890123'),
 ('28123112F',12,'Pedro Ponte','Toboso, 5','Murcia','543210987'),
 ('52741624C',13,'Ernesto Blanes','Azucenas, 28','Santomera','544455545'),
 ('26073442E',14,'Eva Andr‚s','Gaud¡, 14','Murcia','533221100');
INSERT INTO `cliente` (`nif`,`codigo`,`nombre`,`direccion`,`ciudad`,`telefono`) VALUES 
 ('18171615L',15,'Sergio Saura','Roc¡o, 43','Santomera','599887766'),
 ('14421875D',16,'Ana Romero','Aires, 17','Ceut¡','516516516');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;


--
-- Table structure for table `alquila_coches`.`coche`
--

DROP TABLE IF EXISTS `coche`;
CREATE TABLE `coche` (
  `matricula` char(7) NOT NULL,
  `marca` varchar(15) NOT NULL,
  `modelo` varchar(15) NOT NULL,
  `color` varchar(10) NOT NULL,
  `garaje` char(2) NOT NULL,
  `precioalquiler` int(4) NOT NULL,
  PRIMARY KEY  (`matricula`),
  KEY `coche_garaje` (`garaje`),
  CONSTRAINT `coche_garaje` FOREIGN KEY (`garaje`) REFERENCES `garaje` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alquila_coches`.`coche`
--

/*!40000 ALTER TABLE `coche` DISABLE KEYS */;
INSERT INTO `coche` (`matricula`,`marca`,`modelo`,`color`,`garaje`,`precioalquiler`) VALUES 
 ('0765BBC','Seat','C¢rdoba','Plata','G1',82),
 ('1010BBC','Audi','A4','Negro','G2',90),
 ('1234XPQ','Volkswagen','Polo','Blanco','G2',63),
 ('1520CBM','Audi','A3','Negro','G3',75),
 ('1523BBD','Volkswagen','Polo','Verde','G2',60),
 ('2003CBS','Ford','Focus','Plata','G5',70),
 ('2132FPJ','Volkswagen','Passat','Azul','G5',83),
 ('2426CBM','Audi','A3','Azul','G4',71),
 ('2494TNT','Ford','Focus','Plata','G5',73),
 ('2495TNT','Ford','Focus','Rojo','G5',73),
 ('2832BDD','Seat','Toledo','Plata','G3',70),
 ('3030TNT','Opel','Corsa','Blanco','G1',55),
 ('4152CBM','Opel','Corsa','Verde','G4',50),
 ('4636XPQ','Seat','Toledo','Verde','G1',70),
 ('7425CNT','Seat','Panda','Negro','G4',30),
 ('8867GBC','Audi','A3','Rojo','G1',75),
 ('9495HBC','Ford','Fiesta','Azul','G3',35);
/*!40000 ALTER TABLE `coche` ENABLE KEYS */;


--
-- Table structure for table `alquila_coches`.`garaje`
--

DROP TABLE IF EXISTS `garaje`;
CREATE TABLE `garaje` (
  `codigo` char(2) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `direccion` varchar(20) default NULL,
  PRIMARY KEY  (`codigo`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alquila_coches`.`garaje`
--

/*!40000 ALTER TABLE `garaje` DISABLE KEYS */;
INSERT INTO `garaje` (`codigo`,`nombre`,`direccion`) VALUES 
 ('G1','San Ant¢n','Olma, 23'),
 ('G2','Vistabella','R¡o Thader, 7'),
 ('G3','La Flota','Salvador Dal¡, 4'),
 ('G4','El Carmen','Princesa, 8'),
 ('G5','Vistalegre','Jorge Guill‚n, 10'),
 ('G6','Ronda Sur','Sauce, 2');
/*!40000 ALTER TABLE `garaje` ENABLE KEYS */;


--
-- Table structure for table `alquila_coches`.`lista_reserva`
--

DROP TABLE IF EXISTS `lista_reserva`;
CREATE TABLE `lista_reserva` (
  `reserva` int(3) NOT NULL default '0',
  `coche` char(7) NOT NULL,
  `litrosInicio` int(2) NOT NULL,
  `precioFinal` int(5) NOT NULL,
  PRIMARY KEY  (`reserva`,`coche`),
  KEY `lista_reserva_coche` (`coche`),
  CONSTRAINT `lista_reserva_reserva` FOREIGN KEY (`reserva`) REFERENCES `reserva` (`numero`) ON DELETE CASCADE,
  CONSTRAINT `lista_reserva_coche` FOREIGN KEY (`coche`) REFERENCES `coche` (`matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alquila_coches`.`lista_reserva`
--

/*!40000 ALTER TABLE `lista_reserva` DISABLE KEYS */;
INSERT INTO `lista_reserva` (`reserva`,`coche`,`litrosInicio`,`precioFinal`) VALUES 
 (1,'2495TNT',25,438),
 (2,'4636XPQ',40,490),
 (3,'1234XPQ',20,252),
 (4,'1234XPQ',20,252),
 (4,'1520CBM',40,300),
 (4,'8867GBC',45,300),
 (5,'0765BBC',45,246),
 (5,'2832BDD',40,210),
 (5,'8867GBC',40,225),
 (6,'0765BBC',35,492),
 (7,'0765BBC',30,410),
 (7,'1010BBC',40,450),
 (8,'1234XPQ',25,630),
 (9,'1010BBC',30,270),
 (10,'2832BDD',40,490),
 (11,'2003CBS',30,140),
 (12,'2132FPJ',45,1411),
 (12,'3030TNT',15,935),
 (12,'4636XPQ',40,1190),
 (13,'3030TNT',15,1155),
 (14,'2832BDD',40,770),
 (15,'2426CBM',30,355),
 (16,'0765BBC',40,246),
 (17,'2132FPJ',45,332),
 (18,'1234XPQ',25,189),
 (19,'1010BBC',30,450),
 (19,'2132FPJ',30,415),
 (19,'2426CBM',35,355),
 (20,'1523BBD',20,300),
 (21,'1234XPQ',25,126),
 (22,'2426CBM',40,426),
 (22,'4152CBM',15,300),
 (23,'1523BBD',25,360),
 (23,'2832BDD',35,420),
 (24,'1234XPQ',20,252),
 (24,'1523BBD',25,240),
 (25,'2494TNT',45,292),
 (26,'2426CBM',40,426),
 (27,'2132FPJ',45,581),
 (28,'8867GBC',40,525);
INSERT INTO `lista_reserva` (`reserva`,`coche`,`litrosInicio`,`precioFinal`) VALUES 
 (29,'0765BBC',40,164),
 (30,'4636XPQ',35,490),
 (31,'4636XPQ',35,490),
 (32,'2495TNT',20,365);
/*!40000 ALTER TABLE `lista_reserva` ENABLE KEYS */;


--
-- Table structure for table `alquila_coches`.`reserva`
--

DROP TABLE IF EXISTS `reserva`;
CREATE TABLE `reserva` (
  `numero` int(3) NOT NULL,
  `fechaIni` date NOT NULL,
  `fechaFin` date NOT NULL,
  `cliente` int(2) NOT NULL,
  `agencia` int(2) NOT NULL,
  `precioTotal` int(6) NOT NULL,
  `devuelta` char(1) NOT NULL default 'n',
  PRIMARY KEY  (`numero`),
  KEY `reserva_cliente` (`cliente`),
  KEY `reserva_agencia` (`agencia`),
  CONSTRAINT `reserva_cliente` FOREIGN KEY (`cliente`) REFERENCES `cliente` (`codigo`),
  CONSTRAINT `reserva_agencia` FOREIGN KEY (`agencia`) REFERENCES `agencia` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alquila_coches`.`reserva`
--

/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` (`numero`,`fechaIni`,`fechaFin`,`cliente`,`agencia`,`precioTotal`,`devuelta`) VALUES 
 (1,'2003-12-26','2003-12-31',6,3,438,'n'),
 (2,'2003-01-04','2003-01-10',4,2,490,'s'),
 (3,'2003-06-08','2003-06-11',7,3,252,'s'),
 (4,'2004-02-20','2004-02-23',9,3,852,'n'),
 (5,'2003-05-07','2003-05-09',14,1,681,'s'),
 (6,'2003-12-10','2003-12-15',2,4,492,'n'),
 (7,'2003-12-03','2003-12-07',5,3,860,'n'),
 (8,'2003-12-19','2003-12-28',2,3,630,'n'),
 (9,'2002-11-20','2002-11-20',7,2,270,'s'),
 (10,'2004-08-29','2002-09-04',8,2,490,'s'),
 (11,'2003-05-20','2003-05-21',14,2,140,'s'),
 (12,'2003-04-04','2003-04-20',8,1,3536,'s'),
 (13,'2003-08-02','2003-09-22',6,4,1150,'s'),
 (14,'2003-02-05','2003-02-15',8,2,770,'s'),
 (15,'2004-01-03','2004-01-07',5,1,355,'n'),
 (16,'2002-03-04','2002-03-04',7,1,246,'s'),
 (17,'2003-07-28','2003-07-31',14,3,332,'s'),
 (18,'2003-10-11','2003-10-13',11,4,189,'s'),
 (19,'2004-01-12','2004-01-16',3,3,1220,'n'),
 (20,'2003-04-03','2003-04-07',7,2,300,'s'),
 (21,'2002-11-14','2002-11-15',1,1,126,'s');
INSERT INTO `reserva` (`numero`,`fechaIni`,`fechaFin`,`cliente`,`agencia`,`precioTotal`,`devuelta`) VALUES 
 (22,'2003-12-14','2003-12-19',14,4,726,'n'),
 (23,'2002-05-10','2002-05-15',7,2,780,'s'),
 (24,'2003-05-20','2003-05-23',9,3,492,'s'),
 (25,'2004-01-09','2004-01-12',5,3,292,'n'),
 (26,'2002-05-10','2002-05-15',10,1,426,'s'),
 (27,'2003-02-04','2003-02-10',4,2,581,'s'),
 (28,'2003-04-04','2003-04-10',12,4,525,'s'),
 (29,'2003-03-13','2003-03-14',13,2,164,'s'),
 (30,'2004-02-20','2004-02-26',7,4,490,'n'),
 (31,'2004-01-19','2004-01-25',15,4,490,'n'),
 (32,'2003-12-20','2003-12-24',8,2,365,'n');
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
