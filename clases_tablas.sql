-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 12-12-2023 a las 08:46:13
-- Versión del servidor: 8.0.33
-- Versión de PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clases`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido1` varchar(25) NOT NULL,
  `apellido2` varchar(25) NOT NULL,
  `dirección` varchar(50) DEFAULT NULL,
  `telefono` char(9) DEFAULT NULL,
  `edad` char(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cif` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`dni`, `nombre`, `apellido1`, `apellido2`, `dirección`, `telefono`, `edad`, `cif`) VALUES
('12030430', 'Vanesa', 'Megino', 'Sánchez', 'c/ Abril 1', NULL, '20', '13000000J'),
('12049558', 'Luis', 'Abadía', 'Castrourdiales', 'c Mayor 45', '979721215', '35', '18000000Z'),
('12080980', 'Luisa', 'Calvo', 'Calvo', 'Avda Cardenal Cisneros 25', '979100011', '63', '20000000L'),
('12162777', 'Mercedes', 'Aragón', 'Cantor', 'c Clavel 3', '979700123', '54', '18000000Z'),
('12178979', 'Laura', 'Albero', 'Siniestra', 'Avda República Argentina 6', NULL, '45', '19000000H'),
('12213987', 'Matías', 'Hierro', 'Amo', 'c menéndez Pidal 7', '979700231', '38', '12000000H'),
('12239347', 'Esperanza', 'Castro', 'González', 'Carretera del Monte s/n', '979711635', '33', '12000000H'),
('12312908', 'Clarisa', 'Matachel', 'Garrido', 'C Tello Téllez 4', '639272777', '38', '19000000H'),
('12323844', 'Jaime', 'López', 'Herrero', 'Avda Cardenal cisneros 15', '979725454', '46', '13000000J'),
('12324372', 'Marisol', 'Triana', 'Crespo', 'Paseo del Otero 2', '979741716', '22', '09000000A'),
('12341222', 'Pura', 'Abadía', 'Sánchez', 'C Valentín Calderón 12', NULL, '24', '12000000H'),
('12343647', 'Rául', 'Baños', 'Del Mesón', 'C Mayor 26', NULL, '48', '12000000H'),
('12345678', 'Jaime', 'Seco', 'Maestro', 'C Mayor 55', '979723451', '24', '17000000K'),
('12347847', 'Marisa', 'Sánchez', 'Gonzalez', 'Paseo de San José 2', '979703918', '35', '18000000Z'),
('12354488', 'Antonio', 'Vallejo', 'Giner', 'Avda Valladolid 18', '979741625', '27', '18000000Z'),
('12354545', 'Ana María', 'Abadía', 'Castrourdiales', 'c Ferrocarril 2', '979725438', '46', '19000000H'),
('12364646', 'Antonio', 'Sánchez', 'Fernández', 'Avda Castilla 15', '979730916', '62', '12000000H'),
('12377474', 'Jana', 'Hernandez', 'Viejo', 'Avda Vacceos 13', '979722722', '33', '09000000A'),
('12384767', 'Maite', 'Bermejo', 'Sonsalve', 'C mayor 12', '659878787', '26', '21200000U'),
('12387475', 'Luis', 'Pérez', 'Cristo', 'c Mayor Antigua 11', '979731725', '24', '11000000G'),
('12434355', 'Mari Carmen', 'Sánchez', 'Sánchez', 'C La Cestilla 12', NULL, '24', '11000000G'),
('12434754', 'María Teresa', 'Alonso', 'Hierro', 'Plaza Rabi Sem Top 1', '979741625', '46', '19000000H'),
('12564722', 'Marcos', 'Asensio', 'Castro', 'Plaza Mayor 11', '979712221', '32', '19000000H'),
('12567733', 'Carla', 'Edberg', 'MacGregorg', 'plaza de León 7', '979732101', '33', '12000000H'),
('12654424', 'Pablo', 'Varilla', 'Sánchez', 'Avda Santander 11', '979712222', '61', '18000000Z'),
('12776767', 'Pedro', 'Pérez', 'Sánchez', 'Avda Asturias 11', '979723456', '43', '17000000K'),
('12890374', 'Miguel', 'Díez', 'Hueso', 'Avda Madrid 12', '979878882', '55', '21200000U'),
('21254545', 'Eloisa', 'Caballero', 'Jiménez', 'Avda Modesto Lafuente 11', '979712543', '35', '18000000Z'),
('21394854', 'Lucía', 'Sánchez', 'Bueno', 'C Clavel 13', '979733637', '57', '19000000H'),
('21721897', 'Pedro', 'Juárez', 'Mencía', 'paseo Frailes 1', '979701234', '19', '21200000U'),
('22383278', 'Jorge Luis', 'Andérez', 'Sánchez', 'C Mayor 17', '979728889', '62', '17000000K'),
('23436478', 'Alfredo', 'Sebastián', 'Hernández', 'Avda Castilla 11', '979738748', '35', '11000000G'),
('23438789', 'Marte', 'Bentura', 'Arístide', 'Paseo del Otero 4', '979723788', '25', '18000000Z'),
('23462378', 'Johann', 'Mazukelle', 'Nburu', 'Avda Santander 36', '978932399', '61', '18000000Z'),
('23687236', 'Venus', 'Bentura', 'Arístide', 'Paseo del Otero 4', '979723788', '23', '18000000Z'),
('24734484', 'Javier', 'Rodríguez', 'López', 'Avda Santander 12', '979702950', '68', '17000000K'),
('26343287', 'Arancha', 'Luanco', 'De Cea', 'C Tello Téllez 12', '645488458', '57', NULL),
('32623782', 'Matilde', 'Sánchez', 'Herrero', 'Avda Asturias 3', '654874578', '42', '17000000K'),
('34263248', 'Alicia', 'Martín', 'Mondragón', 'C Eras del Bosque 3', '979718188', '21', '12000000H'),
('34436778', 'Agapito', 'Bentura', 'Fontecha', 'Paseo del Otero 4', '979723788', '52', '18000000Z'),
('34543545', 'Mario', 'Castrejón', 'Hernández', 'c padilla 11', '979754544', '44', '19000000H'),
('43267437', 'Victoria', 'Laguardia', 'Cabello', 'Avda Castilla 11', '979738748', '32', '18000000Z'),
('43643785', 'Mercurio', 'Bentura', 'Arístide', 'Paseo del Otero 4', '979723788', '22', '18000000Z'),
('43763478', 'Pedro', 'García', 'García', 'C La Iglesia 3', '979777727', '32', '11000000G'),
('71327389', 'Alberto', 'Guerra', 'Sinés', 'c Balmes 13', '659871872', '21', NULL),
('71763276', 'Carola', 'Lombardi', 'Sewiss', 'Avda República Argentina 27', '659672666', '23', NULL),
('73628362', 'Jaime', 'Vega', 'Saldaña', 'c Mayor 25', '979828288', '32', '19000000H'),
('76782637', 'Maia', 'Jaúregi', 'Mendizábal', 'C Juan Bravo 7', NULL, '39', '18000000Z');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistir`
--

CREATE TABLE `asistir` (
  `dni` varchar(9) NOT NULL,
  `n_curso` char(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `nota` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `asistir`
--

INSERT INTO `asistir` (`dni`, `n_curso`, `nota`) VALUES
('12030430', '301', 7.5),
('12049558', '301', 6.25),
('12080980', '401', 8.5),
('12080980', '402', NULL),
('12162777', '433', NULL),
('12162777', '521', NULL),
('12178979', '401', 6.75),
('12178979', '433', NULL),
('12239347', '401', 9),
('12239347', '402', NULL),
('12323844', '301', 5.75),
('12324372', '401', 6.7),
('12341222', '402', NULL),
('12343647', '433', NULL),
('12345678', '301', 5.5),
('12345678', '521', NULL),
('12347847', '301', 6.5),
('12347847', '521', NULL),
('12354488', '301', 8.5),
('12354488', '401', 8.2),
('12354545', '301', 9),
('12364646', '301', 9.5),
('12364646', '521', NULL),
('12377474', '401', 6.45),
('12384767', '433', NULL),
('12387475', '403', 8),
('12434355', '455', 5.25),
('12434754', '403', 7.5),
('12564722', '403', 8.25),
('12567733', '403', 7.5),
('12654424', '403', 9),
('12776767', '402', NULL),
('12776767', '433', NULL),
('12890374', '433', NULL),
('21254545', '301', 6.5),
('21394854', '301', 9.5),
('21394854', '401', 6.25),
('21721897', '521', NULL),
('23436478', '455', 6.75),
('23438789', '451', NULL),
('23462378', '432', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `n_curso` int NOT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `cod_curso` char(18) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `dni_profesor` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`n_curso`, `fecha_inicio`, `fecha_fin`, `cod_curso`, `dni_profesor`) VALUES
(301, '2004-07-09', '2004-07-27', 'Diseño Gráfico', '71656565U'),
(401, '2004-07-09', '2004-07-27', 'Windows 2003 I', '12444444C'),
(402, '2004-09-06', '2004-11-26', 'Windows 2003 II', '12444444C'),
(403, '2004-07-10', '2004-08-08', 'Linux I', '12444444C'),
(432, '2004-09-24', '2004-11-26', 'Linux II', '12444444C'),
(433, '2004-09-06', '2004-09-27', 'Mecanografía', '12000000B'),
(451, '2004-10-04', '2004-10-22', 'Mecanografía', '12000000B'),
(455, '2004-11-29', '2004-12-20', 'Windows 2003 I', '12444444C'),
(521, '2004-11-29', '2004-12-23', 'Quarkxpress', '71656565U'),
(534, '2004-11-29', '2005-03-27', NULL, NULL),
(543, '2004-11-29', '2005-03-27', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `cif` varchar(9) NOT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  `dirección` varchar(50) DEFAULT NULL,
  `telefono` char(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`cif`, `nombre`, `dirección`, `telefono`) VALUES
('09000000A', 'Álvarez S. A.', 'c/ Mencía 16', '979707070'),
('11000000G', 'Tarrega', 'C/ Olvido 12', '979797979'),
('12000000H', 'Class', 'C/ Ruena 51', '979878781'),
('13000000J', 'López y Hermanos', 'C/ Alcorcón s/n', '983324563'),
('17000000K', 'Hierros y tornillos S. L.', 'Poligono Tres Casitas s/n', '979676767'),
('18000000Z', 'FRT S. A.', 'C/ Las Viudas 14', '979898989'),
('19000000H', 'Industrias Castellanas', 'Avda. Salmantina 23', '979888888'),
('20000000L', 'Vidrios Carmelo', 'C/ Los muelles 16', '979101919'),
('21200000U', 'Swinder', 'C/ París 12', '977718888');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido1` varchar(50) NOT NULL,
  `apellido2` varchar(50) NOT NULL,
  `dirección` varchar(50) DEFAULT NULL,
  `telefono` char(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`dni`, `nombre`, `apellido1`, `apellido2`, `dirección`, `telefono`) VALUES
('12000000B', 'Herminio', 'Juanez', 'Reina', 'Plaza de León 13', '979102040'),
('12444444C', 'Alfonso', 'Hernández', 'Seco', 'c Mayor 23', '979809100'),
('48726636K', 'Fernando', 'Algete', 'Soroya', 'c el cid 1', '659876777'),
('71656565U', 'Manuela', 'Casasola', 'Pedrosa', 'Plaza Pio XII 3', '979724765');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_curso`
--

CREATE TABLE `tipos_curso` (
  `cod_curso` char(8) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `duracion` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tipos_curso`
--

INSERT INTO `tipos_curso` (`cod_curso`, `titulo`, `duracion`) VALUES
('DSNGR001', 'Diseño Gráfico', 30),
('DSNGR009', 'Quarkxpress', 28),
('ELECT001', 'Electricidad', 200),
('INFOR021', 'Windows 2003 I', 45),
('INFOR022', 'Windows 2003 II', 110),
('INFOR030', 'Linux I', 65),
('INFOR031', 'Linux II', 90),
('MECAN011', 'Soldadura', 200),
('OFICG001', 'Mecanografía', 30),
('SGBDR010', 'Introducción a Oracle', 90),
('SGBDR011', 'Programación PL/SQL', 110);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `asistir`
--
ALTER TABLE `asistir`
  ADD PRIMARY KEY (`dni`,`n_curso`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`n_curso`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`cif`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `tipos_curso`
--
ALTER TABLE `tipos_curso`
  ADD PRIMARY KEY (`cod_curso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
