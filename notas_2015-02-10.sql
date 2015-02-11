# ************************************************************
# Sequel Pro SQL dump
# Versión 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.22)
# Base de datos: notas
# Tiempo de Generación: 2015-02-11 02:16:04 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Volcado de tabla cursos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cursos`;

CREATE TABLE `cursos` (
  `idCurso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10000) COLLATE utf8_bin NOT NULL,
  `codigo` varchar(10000) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idCurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;

INSERT INTO `cursos` (`idCurso`, `nombre`, `codigo`)
VALUES
	(1,X'20576562',X'303031'),
	(2,X'416D6269656E746573',X'303032'),
	(3,X'486369',X'303033');

/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla nota
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nota`;

CREATE TABLE `nota` (
  `idNotas` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL,
  `idTipo` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idNotas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `nota` WRITE;
/*!40000 ALTER TABLE `nota` DISABLE KEYS */;

INSERT INTO `nota` (`idNotas`, `valor`, `idTipo`, `idCurso`, `idUsuario`)
VALUES
	(1,4.5,1,1,1),
	(2,4,2,2,2),
	(3,4.8,3,1,3),
	(4,4.2,1,2,1),
	(5,4.6,3,3,3),
	(6,4.1,2,3,2);

/*!40000 ALTER TABLE `nota` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla tipoNota
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tipoNota`;

CREATE TABLE `tipoNota` (
  `idTipo` int(11) NOT NULL AUTO_INCREMENT,
  `porcentaje` float NOT NULL,
  `nombre` varchar(10000) COLLATE utf8_bin NOT NULL,
  `idCurso` int(11) NOT NULL,
  PRIMARY KEY (`idTipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `tipoNota` WRITE;
/*!40000 ALTER TABLE `tipoNota` DISABLE KEYS */;

INSERT INTO `tipoNota` (`idTipo`, `porcentaje`, `nombre`, `idCurso`)
VALUES
	(1,0.3,X'5072696D65726120656E7472656761',1),
	(2,0.3,X'536567756E646120656E7472656761',1),
	(3,0.4,X'456E74726567612066696E616C',1);

/*!40000 ALTER TABLE `tipoNota` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla usuarios
# ------------------------------------------------------------

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10000) COLLATE utf8_bin NOT NULL,
  `nombreUsuario` varchar(10000) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;

INSERT INTO `usuarios` (`idUsuario`, `codigo`, `nombreUsuario`)
VALUES
	(1,X'313232313230363432',X'5665726F6E69636120416C6567726961'),
	(2,X'3132323132303633',X'44616E69656C612044656C6761646F'),
	(3,X'3132323132303632',X'4E617468616C6965204172616E61');

/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla usuariosCursos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `usuariosCursos`;

CREATE TABLE `usuariosCursos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `usuariosCursos` WRITE;
/*!40000 ALTER TABLE `usuariosCursos` DISABLE KEYS */;

INSERT INTO `usuariosCursos` (`id`, `idUsuario`, `idCurso`)
VALUES
	(1,1,1),
	(2,1,2),
	(3,1,3),
	(4,2,1),
	(5,2,3),
	(6,3,1),
	(7,3,2);

/*!40000 ALTER TABLE `usuariosCursos` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
