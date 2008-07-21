-- phpMyAdmin SQL Dump
-- version 2.11.3
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 21-07-2008 a las 17:19:41
-- Versión del servidor: 5.0.51
-- Versión de PHP: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de datos: `sghcopia_development`
--

--
-- Volcar la base de datos para la tabla `disponibilidades_ejemplares`
--

INSERT INTO `disponibilidades_ejemplares` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Disponible', 'El ejemplar puede ser asignado a una obra.', '2008-07-21 20:57:42', '2008-07-21 20:58:07'),
(2, 'No Disponible', 'El ejemplar no puede ser asignado a una obra por alguna de las siguientes razones:\n-Está asignado a una obra, -Se encuentra en reparación o -Está averíado.', '2008-07-21 20:58:59', '2008-07-21 21:03:14');

--
-- Volcar la base de datos para la tabla `estados_obras`
--

INSERT INTO `estados_obras` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Sin Iniciar', 'Indica que la obra se encuentra creada en el sistema paro no han empezado sus trabajos.  Tampoco ha sido asignada la herramienta a la obra.', '2008-07-21 20:35:32', '2008-07-21 20:35:32'),
(2, 'En Proceso', 'Indica que la Obra ya ha iniciado trabajos.  Ya ha sido asignada herramienta a esta obra.', '2008-07-21 20:36:20', '2008-07-21 20:36:20'),
(3, 'Finalizada', 'Indica que la Obra ha finalizado.  Los trabajos en ella han cesado.  La obra ya no tiene herramienta asignada.', '2008-07-21 20:37:26', '2008-07-21 20:37:38');

--
-- Volcar la base de datos para la tabla `estado_ejemplares`
--

INSERT INTO `estado_ejemplares` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Bueno', 'Indica que el ejemplar está en buenas condiciones.', '2008-07-21 20:42:08', '2008-07-21 20:42:08'),
(2, 'Averíado', 'Indica que el ejemplar está dañado, en malas condiciones.', '2008-07-21 20:46:19', '2008-07-21 20:46:19'),
(3, 'En Reparación', 'Indica que el ejemplar está siendo reparado.', '2008-07-21 20:53:11', '2008-07-21 20:53:11');
