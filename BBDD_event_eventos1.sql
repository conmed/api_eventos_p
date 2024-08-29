-- --------------------------------------------------------
-- Host:                         sql768.main-hosting.eu
-- Versión del servidor:         10.11.8-MariaDB-cll-lve - MariaDB Server
-- SO del servidor:              Linux
-- HeidiSQL Versión:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura de base de datos para ejemploDB
CREATE DATABASE IF NOT EXISTS `ejemploDB` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `ejemploDB`;

-- Volcando estructura para tabla ejemploDB.eventos
CREATE TABLE IF NOT EXISTS `eventos` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` char(50) NOT NULL,
  `nombre` varchar(100) NOT NULL DEFAULT '',
  `archlogo` varchar(150) NOT NULL DEFAULT '',
  `linkLogo` char(50) NOT NULL DEFAULT '',
  `hayBanner` binary(1) NOT NULL DEFAULT '0' COMMENT 'Valores: 0 y 1',
  `archBanner` varchar(150) NOT NULL DEFAULT '',
  `linkBanner` char(50) NOT NULL DEFAULT '',
  `ciudad` char(50) NOT NULL,
  `dirZona` char(50) NOT NULL,
  `archZona` varchar(150) NOT NULL,
  `linkZona` char(50) NOT NULL DEFAULT '',
  `dirCalle` varchar(200) NOT NULL DEFAULT '',
  `fechaApertura` date DEFAULT NULL,
  `horaApertura` time DEFAULT NULL,
  `cartelera` varchar(500) NOT NULL DEFAULT '',
  `estilo` varchar(200) NOT NULL DEFAULT '',
  `promoChk` char(1) NOT NULL DEFAULT '',
  `promoDetalle` varchar(200) NOT NULL DEFAULT '',
  `cover` double NOT NULL DEFAULT 0,
  `activo` binary(1) NOT NULL DEFAULT '0',
  `gmaps` varchar(200) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id_index` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla ejemploDB.eventos: ~2 rows
DELETE FROM `eventos`;
INSERT INTO `eventos` (`id`, `username`, `nombre`, `archlogo`, `linkLogo`, `hayBanner`, `archBanner`, `linkBanner`, `ciudad`, `dirZona`, `archZona`, `linkZona`, `dirCalle`, `fechaApertura`, `horaApertura`, `cartelera`, `estilo`, `promoChk`, `promoDetalle`, `cover`, `activo`, `gmaps`) VALUES
	(1, 'usuario1', 'Evento 1', 'https://ejemplo.com/imagenes/logo1.jpg', 'logo1.jpg', _binary 0x31, 'https://ejemplo.com/imagenes/banner1.jpg', 'banner1.jpg', 'Ciudad 1', 'Zona 1', 'https://ejemplo.com/imagenes/zona1.jpg', 'zona1.jpg', 'Calle Falsa 123', '2023-07-20', '18:00:00', 'Artista1, Artista2', 'Rock', '1', 'Promo 1', 20, _binary 0x31, 'https://goo.gl/maps/ejemplo1'),
	(2, 'usuario2', 'Evento 2', 'https://ejemplo.com/imagenes/logo2.jpg', 'logo2.jpg', _binary 0x30, 'https://ejemplo.com/imagenes/banner2.jpg', 'banner2.jpg', 'Ciudad 2', 'Zona 2', 'https://ejemplo.com/imagenes/zona2.jpg', 'zona2.jpg', 'Calle Inventada 456', '2024-08-15', '20:00:00', 'Artista3, Artista4', 'Pop', '0', '', 30, _binary 0x31, 'https://goo.gl/maps/ejemplo2');

-- Volcando estructura para tabla ejemploDB.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` char(50) NOT NULL DEFAULT '0',
  `password` varchar(200) NOT NULL DEFAULT '0',
  `nombre` char(50) NOT NULL,
  `nombreEmpresa` varchar(200) NOT NULL,
  `ciudad` char(50) NOT NULL,
  `zona` char(50) NOT NULL DEFAULT '',
  `direccion` varchar(300) NOT NULL,
  `maps` varchar(150) NOT NULL,
  `fechaAlta` date NOT NULL,
  `actividad` varchar(200) NOT NULL,
  `activo` binary(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla ejemploDB.usuarios: ~2 rows
DELETE FROM `usuarios`;
INSERT INTO `usuarios` (`id`, `username`, `password`, `nombre`, `nombreEmpresa`, `ciudad`, `zona`, `direccion`, `maps`, `fechaAlta`, `actividad`, `activo`) VALUES
	(1, 'usuario1', '$2y$12$EjemploHash', 'Nombre1', 'Empresa1', 'Ciudad1', 'Zona1', 'Calle Falsa 123', 'https://goo.gl/maps/ejemplo1', '2023-05-01', 'Actividad1', _binary 0x31),
	(2, 'usuario2', '$2y$12$EjemploHash', 'Nombre2', 'Empresa2', 'Ciudad2', 'Zona2', 'Calle Inventada 456', 'https://goo.gl/maps/ejemplo2', '2024-06-10', 'Actividad2', _binary 0x31);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
