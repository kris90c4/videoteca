-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `usr` varchar(25) NOT NULL COMMENT 'Nombre usuario ',
  `pass` varchar(100) NOT NULL COMMENT 'Contrasenya md5',
  `mail` varchar(70) NOT NULL COMMENT 'correo usuario',
  `last login` datetime DEFAULT NULL COMMENT 'fecha del ultimo inicio de sesion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL COMMENT 'id del video',
  `fomato` varchar(4) NOT NULL COMMENT 'formato (extension) pelicula',
  `categoria` varchar(20) NOT NULL DEFAULT '' COMMENT 'miedo, accion, comica, ...',
  `nombre` varchar(50) NOT NULL COMMENT 'nombre video',
  `porno` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'indica si la pelicula es o no porno para usuarios menores de edad',
  `url` varchar(250) NOT NULL COMMENT 'ubicacion pelicula'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`usr`);

--
-- Indices de la tabla `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`,`categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id del video';