-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-01-2018 a las 14:49:12
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `periodico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(50) NOT NULL,
  `descripcion` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `descripcion`) VALUES
(1, 'noticias economicas'),
(2, 'noticias ciencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id_noticia` int(50) NOT NULL,
  `mail` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `id_categoria` int(50) DEFAULT NULL,
  `titulo_noticia` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `contenido` text CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `fecha_publicacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id_noticia`, `mail`, `id_categoria`, `titulo_noticia`, `contenido`, `fecha_publicacion`) VALUES
(1, 'juanperez@out.com', NULL, 'De Nixon a Trump, la noticia se repite', 'En el prólogo de los Papeles del Pentágono, el monumental informe de 7.000 páginas sobre dos décadas de estrategia de Estados Unidos en Vietnam, aflora una reflexión: “Escribir sobre historia, especialmente cuando se mezcla con acontecimientos actuales y cuando se trata de Vietnam, es un ejercicio engañoso”. Lo dice Leslie Gelb, el alto cargo del Departamento de Defensa que coordinó el proyecto que desembocó en uno de los episodios más apasionantes de la lucha por la libertad de prensa y de la relación entre el periodismo y el poder. Una historia que guarda paralelismos con la actualidad y que ha servido de base a la última película de Steven Spielberg, The Post. Este viernes se estrena en España con el título de Los archivos del Pentágono.\r\n\r\nEl informe top secret, que Gelb acabó el 5 de enero de 1969 tras año y medio de elaboración, mostraba cómo sucesivos Gobiernos mintieron a los estadounidenses sobre su implicación en el país asiático. Washington, por ejemplo, llevó a cabo operaciones militares encubiertas, estuvo detrás del asesinato en 1963 del presidente de Vietnam del Sur, mandó a miles de soldados y defendió su campaña de bombardeos aún sabiendo que no eran efectivos.\r\n\r\nCansado de que el Pentágono ocultara la verdad, Daniel Ellsberg, otro de los autores del documento y veterano de Vietnam, decidió fotocopiarlo y filtrar una parte a la prensa en 1971. Aquella decisión abrió un cisma político e impulsó el movimiento pacifista.', '2018-01-19 09:02:20'),
(2, 'cristina@gmail.com', 2, 'El futuro de la edición genómica en 2018', 'Predecir lo que ocurrirá en el futuro es una tarea casi imposible. Nadie puede conocer con certeza qué pasará a lo largo de los próximos meses. Pero sí sabemos que, al menos a priori, 2018 será un año ajetreado para la exploración espacial y para la astronomía, además de estar marcado por importantes novedades en el campo de la nutrición.\r\n\r\nEl sistema CRISPR-Cas se enfrenta a nuevos retos para su posible aplicación como terapia.\r\nEl futuro de la edición genómica en 2018Iaroslav Neliubov | Shutterstock\r\nPredecir lo que ocurrirá en el futuro es una tarea casi imposible. Nadie puede conocer con certeza qué pasará a lo largo de los próximos meses. Pero sí sabemos que, al menos a priori, 2018 será un año ajetreado para la exploración espacial y para la astronomía, además de estar marcado por importantes novedades en el campo de la nutrición.\r\n\r\nDurante 2018 la ciencia seguirá pendiente de la edición genómica y de las aplicaciones con las que podría sorprendernos\r\nLa actualidad científica durante los próximos doce meses seguirá muy pendiente de la edición genómica y de las aplicaciones con las que herramientas como CRISPR-Cas podrían sorprendernos. La expectación es máxima después de que la ciencia en 2017 nos regalara avances llamativos como la modificación de embriones humanos para corregir una mutación relacionada con una grave enfermedad hereditaria. ¿Qué nos depara la edición genómica en 2018?', '2018-01-19 13:06:15'),
(3, 'fvuyvbujhb@noin.com', 1, 'agvbafdbv', 'adfbgnry', '2018-01-19 13:38:08');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id_noticia`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id_noticia` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `noticias_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
