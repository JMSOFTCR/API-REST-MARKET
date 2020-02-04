-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-02-2020 a las 09:07:11
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_sistema`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `GuardarImagen` (IN `idarticulo` INT, IN `route` VARCHAR(100))  BEGIN
   INSERT INTO photo (idarticulo, route) VALUES (idarticulo, route);
   END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `idarticulo` int(11) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `codigo` varchar(50) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `descripcion` varchar(256) DEFAULT NULL,
  `imagen` varchar(50) DEFAULT NULL,
  `condicion` tinyint(4) DEFAULT 1,
  `precio_costo` int(11) NOT NULL,
  `precio_venta` int(11) NOT NULL,
  `profit` decimal(5,2) NOT NULL,
  `others` int(11) NOT NULL,
  `idwarehouse` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`idarticulo`, `idcategoria`, `codigo`, `nombre`, `stock`, `descripcion`, `imagen`, `condicion`, `precio_costo`, `precio_venta`, `profit`, `others`, `idwarehouse`) VALUES
(9, 7, '56112004100095', 'Advance SC750', 15, '169.94 hr', '1564119817.jfif', 1, 0, 0, '0.00', 0, 0),
(10, 12, '100050', 'Esteam airmover', 8, 'Fan tipe Shell black', NULL, 1, 0, 0, '0.00', 0, 0),
(11, 12, '100044', 'Rabbit swing', 8, '19\" Swing Machine', NULL, 1, 0, 0, '0.00', 0, 0),
(12, 12, '100021', 'tennant T3', 9, '20\" Sceubber T3 Tennant', NULL, 1, 0, 0, '0.00', 0, 0),
(13, 12, '100049', 'Power Fist Fan', 10, '32\" Fan', NULL, 1, 0, 0, '0.00', 0, 0),
(14, 12, '2002412', 'SPE charger', 10, '24V charger', NULL, 1, 0, 0, '0.00', 0, 0),
(15, 12, '100019', 'Rabbit', 10, '19\" Swing Machine. Rabbit', NULL, 1, 0, 0, '0.00', 0, 0),
(16, 12, '100018', 'Rabbit 2', 10, 'Swing Machine 19\"', NULL, 1, 0, 0, '0.00', 0, 0),
(17, 12, '100015', 'Tennant 5680', 10, 'Auto Scrubber Tennant 5680', NULL, 1, 0, 0, '0.00', 0, 0),
(18, 12, '200064', 'Lester Electrical Charger', 10, '24v Charger Dual', NULL, 1, 0, 0, '0.00', 0, 0),
(19, 12, '200735', 'Quiq Charger', 10, '36V Charger Md 912-3600 E254286', NULL, 1, 0, 0, '0.00', 0, 0),
(20, 12, '100039', 'Clarke Betco 27 Buffer', 10, 'Clarke buffer with Betco Engine', NULL, 1, 0, 0, '0.00', 0, 0),
(21, 12, '10679738002333', 'Chanathon', 10, 'High Solids Finish 2x10L', NULL, 1, 0, 0, '0.00', 0, 0),
(23, 7, '100063', 'Viper', 10, 'model AS5160-CAN', NULL, 1, 0, 0, '0.00', 0, 0),
(24, 7, '100028', 'Clark Focus II', 10, 'Scrubber 32\"', NULL, 1, 0, 0, '0.00', 0, 0),
(25, 7, '100029', 'Tennant 5400', 10, '26\" auto scrubber Tennant 5400 serial 10035393', NULL, 1, 0, 0, '0.00', 0, 0),
(26, 7, '100027', 'Tennant 5680 27', 10, 'Auto scrubber 32\"  tennant 5680 serial 10571613', NULL, 1, 0, 0, '0.00', 0, 0),
(27, 7, '100020', 'Tennant 5680 20', 10, '32\" Tennant 5680 floor scrubber. Hrs 3513', NULL, 1, 0, 0, '0.00', 0, 0),
(28, 7, '100016', 'Advance Converta Max26', 10, NULL, NULL, 1, 0, 0, '0.00', 0, 0),
(29, 7, '100003', 'Tennant 5280', 10, '20\"  Auto Scrubber', NULL, 1, 0, 0, '0.00', 0, 0),
(31, 3, '110607021', 'GASKET MUFFLER', 10, 'KAWASAKI GASKET FOR THE MUFFLER AREA', NULL, 1, 0, 0, '0.00', 0, 1),
(32, 3, '211717034', 'Coil Betco E11439-00', 10, 'Betco Buffer Coil Engen', NULL, 1, 0, 0, '0.00', 0, 1),
(33, 3, NULL, 'Air Filter', 10, 'Kawasaki Air filter, works in engenes FR651/FR691/FR730 FS481/FS541/FS600 FS651/FS691/FS730', NULL, 1, 0, 0, '0.00', 0, 0),
(34, 3, NULL, 'Colson Wheel 6x1 1/2', 10, '6\" Colson Wheel for Betco Buffers', NULL, 1, 0, 0, '0.00', 0, 0),
(35, 3, NULL, 'Bushing', 10, 'Kawasaki engine Busing for Betco 18hp', NULL, 1, 0, 0, '0.00', 0, 0),
(36, 3, NULL, 'Propane hose', 10, '18\" ( standard ) Propane hose for Kawasaki engens', NULL, 1, 0, 0, '0.00', 0, 0),
(37, 3, NULL, 'Kawasaki gasket 1', 10, 'Gasket, carburetor to air fuel Hub', NULL, 1, 0, 0, '0.00', 0, 0),
(38, 3, NULL, 'Regulator T60', 10, 'Propane Regulatore T60 Betco', NULL, 1, 0, 0, '0.00', 0, 0),
(39, 3, NULL, 'Buffer Solenoid 12v', 10, 'Buffer Solenoid 12v, 3CT', NULL, 1, 0, 0, '0.00', 0, 0),
(40, 3, NULL, 'Starter 1', 10, 'Starter 12v DC, part # 21163-7031, Kawasaki # 99999-7080', NULL, 1, 0, 0, '0.00', 0, 0),
(41, 6, '100030', 'Betco 030', 10, '27 Betco buffer  50423X', NULL, 1, 0, 0, '0.00', 0, 0),
(42, 6, '100013', 'Betco Buffer 27', 10, '27 betco Buffer # 51815x. code FS481V-ES10-M', NULL, 1, 0, 0, '0.00', 0, 0),
(43, 6, '100042', 'Buffer Pioneer 24\"', 10, '24\" Buffer Pioneer Eclips,  rebild engine, new start, new Bord', NULL, 1, 0, 0, '0.00', 0, 0),
(44, 6, '100041', 'FCH Betco', 10, 'Buffer 27\" with new engine Betco 18hp, new battery, new regulator. new clutch.  Frame is from Pioneer Eclipse', NULL, 1, 0, 0, '0.00', 0, 0),
(45, 6, '100036', 'hurricane', 10, '27\" Propane Buffer 17Hp, Md. DBIR2725', NULL, 1, 0, 0, '0.00', 0, 0),
(46, 6, '100037', 'Speed Start', 10, NULL, NULL, 1, 0, 0, '0.00', 0, 0),
(47, 6, NULL, 'IPC Eagle', 10, '24\" Buffer Eagle', NULL, 1, 0, 0, '0.00', 0, 0),
(48, 5, NULL, 'Bissu', 10, 'polvo para cejas', NULL, 1, 0, 0, '0.00', 0, 0),
(49, 5, '95032386', 'ATTAC', 10, 'Floor Stripper', NULL, 1, 0, 0, '0.00', 0, 0),
(50, 5, '200075', 'Betco Kling', 10, 'Thickened Acid Toilet and Urinal Cleaner', NULL, 1, 0, 0, '0.00', 0, 0),
(51, 9, '300002', 'Shop Vac', 10, '1.25\" Dust Brush for Vacuum', NULL, 1, 0, 0, '0.00', 0, 0),
(53, 9, '100100', 'Scrapper', 10, '5\" red Scrapper', NULL, 1, 0, 0, '0.00', 0, 0),
(54, 63, '200028', 'Eglagle charger 28', 10, '24V charger Multy ise GL and As', NULL, 1, 0, 0, '0.00', 0, 0),
(55, 63, '100031', 'Centaur Rabbit', 10, '19\" Swing machine', NULL, 1, 0, 0, '0.00', 0, 0),
(56, 63, '200430', 'Dual Mode Charger', 10, 'Dual mode charger 24v 12A GL and As', NULL, 1, 0, 0, '0.00', 0, 0),
(57, 63, '200280', 'Lester Charger A1', 10, '24V charger Multy GL and As', NULL, 1, 0, 0, '0.00', 0, 0),
(58, 63, '2003625', 'Egle Charger', 10, '36V Smart Charger', NULL, 1, 0, 0, '0.00', 0, 0),
(59, 63, '2003879', 'Lester Electrical', 10, '24V. 12Am smart  charger', NULL, 1, 0, 0, '0.00', 0, 0),
(60, 2, NULL, 'Cobra CB Radio', 10, 'CB Radio 40 channels', NULL, 1, 0, 0, '0.00', 0, 1),
(61, 2, NULL, 'Cobra CB', 10, 'CB 40 Channels Radio', NULL, 1, 0, 0, '0.00', 0, 1),
(62, 10, NULL, 'Power First Yellow Led', 10, 'Yellow Led 1\"', NULL, 1, 0, 0, '0.00', 0, 0),
(63, 10, NULL, 'Led R', 10, 'Red Led 1\" 12v', NULL, 1, 0, 0, '0.00', 0, 0),
(64, 10, NULL, 'BlacksMiti', 10, 'Fog Light With 3\" Square', NULL, 1, 0, 0, '0.00', 0, 0),
(65, 10, NULL, 'work light led', 10, '4\" led Lights Squer', NULL, 1, 0, 0, '0.00', 0, 0),
(66, 10, NULL, 'Blacksmiti Fog light', 10, '2 White Fog Led Lights 3\" Square', NULL, 1, 0, 0, '0.00', 0, 0),
(67, 21, NULL, 'Brother 400', 10, 'Label and bar code printer', NULL, 1, 0, 0, '0.00', 0, 0),
(68, 25, '800100', 'Washer Lock Nuts', 10, 'Lock Nuts 3/8-16 SS', NULL, 1, 0, 0, '0.00', 0, 0),
(69, 25, '800103', 'Washer', 10, '3/8 Lock Washer Stainless', NULL, 1, 0, 0, '0.00', 0, 0),
(70, 25, '800101', 'Stainless Screw', 10, '3/8- 16 x 2\"', NULL, 1, 0, 0, '0.00', 0, 0),
(71, 25, '800107', 'Stainless Screw 1\"', 10, 'Hex cap Stainles Screw 3/8- 16x 1\"', NULL, 1, 0, 0, '0.00', 0, 0),
(72, 25, '800104', 'Washer Flat', 10, 'Flat Washer 3/8 Stainless', NULL, 1, 0, 0, '0.00', 0, 0),
(74, 25, '800105', 'Stainless Screw 1-1/2', 10, 'Hex Cap Screw 3/8- 16. 1-1/2\"  Stainless', NULL, 1, 0, 0, '0.00', 0, 0),
(75, 25, '800106', 'Stainless Screw 3/4', 10, 'Hex Cap Screw Stainless 3/8-16 x 3/4\"', NULL, 1, 0, 0, '0.00', 0, 0),
(76, 15, '100025', 'Advance 34RST', 10, 'Automatic Scrubber 34\"', NULL, 1, 0, 0, '0.00', 0, 0),
(77, 15, '56315115', 'Advance Tires', 10, '9\" tire for Advance 13\"', NULL, 1, 0, 0, '0.00', 0, 0),
(78, 23, NULL, '14\" Black Pad FCH', 10, '14\" auto scrubber pads for stripping and dip scrub', NULL, 1, 0, 0, '0.00', 0, 0),
(79, 23, NULL, '14\" Pad Twistef Red', 10, '14\" Red Diamond pads for dip scrubb or concret polish', NULL, 1, 0, 0, '0.00', 0, 0),
(80, 23, NULL, '13\" Blue Pads 3M', 10, NULL, NULL, 1, 0, 0, '0.00', 0, 0),
(81, 23, NULL, '13\" Black Pad 3M', 10, '13\" black black stripping pads', NULL, 1, 0, 0, '0.00', 0, 0),
(82, 23, NULL, '14\" Red Pad', 10, '14\" Red pad for daily clean', NULL, 1, 0, 0, '0.00', 0, 0),
(84, 23, NULL, '14\" Green Pad FCH', 10, '14\" green scrubbin and dip clean pads', NULL, 1, 0, 0, '0.00', 0, 0),
(85, 23, NULL, '14\"x28\" Green Pad', 10, 'Square pad 14x28 Scrubbing and dip clean pad', NULL, 1, 0, 0, '0.00', 0, 0),
(86, 23, NULL, '16\" Black Pad FCH', 10, '16\" Stripping and Scrubbing Pads', NULL, 1, 0, 0, '0.00', 0, 0),
(87, 23, NULL, '16\" Green pad FCH', 10, '16\" green scrubbing and dip clean pads', NULL, 1, 0, 0, '0.00', 0, 0),
(88, 23, NULL, '16\" Pad Twister Red', 10, 'Diamond pads for dip Scrubb or concret polish', NULL, 1, 0, 0, '0.00', 0, 0),
(89, 23, '50048011084065', '13 Blue pad 3M', 10, '13\" pad for scrubbing and dip clean', NULL, 1, 0, 0, '0.00', 0, 1),
(90, 4, NULL, 'Electric Wire', 10, 'Red Wire 18G 25ft', NULL, 1, 0, 0, '0.00', 0, 0),
(91, 23, '300016-1', 'Pad 16 red', 50, 'polish pad FCH red', '1565070470.png', 1, 0, 0, '0.00', 0, 0),
(93, 7, '123456098765432', 'Pad pepe', 10, 'Floor pad for scrubber machine', '1565845601.png', 1, 0, 0, '0.00', 0, 0),
(120, 2, 'codigo', 'AAAA', 3, 'asd', '', 1, 1000, 1200, '0.13', 1000, 1),
(122, 2, '13123123', 'AAAAAAAAAA', 1, 'asdasd', '', 1, 1000, 2300, '0.30', 1000, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(256) DEFAULT NULL,
  `condicion` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `condicion`) VALUES
(2, 'Electronics', 'Bords, Computers, Testers, Camara', 1),
(3, 'Buffer Parts NEW', 'Floor polish New Parts and accessories', 1),
(4, 'Wires and Cables', 'Industrial cables rolls, Electric Cords', 1),
(5, 'Chemicals', 'Acid cleaners', 1),
(6, 'Buffers', 'Propane Machine', 1),
(7, 'Auto Scrubbers', 'Floor wash Macchines', 1),
(8, 'Terminals', 'Multi cable terminal end.', 1),
(9, 'Cleaning Tools', 'Scrappers, Blades, Dustpan, Broom,', 1),
(10, 'Lights', 'Indicators, Leds, Lamps and more.', 1),
(11, 'Electric Tools', 'Drills and More', 1),
(12, 'Air Tools', 'Compressors and accessories', 1),
(13, 'buffer Use parts', 'Second Hand Floor Polish Equipmen', 1),
(14, 'Propane Tank', 'Floor Buffers Propane tanks', 1),
(15, 'Scrubber parts New', 'Floor wash machines new parts and accessories', 1),
(16, 'Wax', 'Floor Finish', 1),
(17, 'Auto Scrubber Use Parts', 'Second hand parts, floor Machines', 1),
(18, 'Vacuums', 'Wet Vacuum, D vac, parts and accessories', 1),
(19, 'Hoses', 'Watter, Propane , Air', 1),
(20, 'Buffing pads', 'floor buffer pads', 1),
(21, 'Office', 'all implements for office', 1),
(22, 'Cars, Trucks and Trailers', 'Cars', 1),
(23, 'Scrubbing pads', 'Floor scubber pads', 1),
(24, 'Stripper', 'Floor Stripper', 1),
(25, 'Screws and Bolts', 'All tipe of Screws and Bolts', 1),
(63, 'Electrics', '	Charger', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ingreso`
--

CREATE TABLE `detalle_ingreso` (
  `iddetalle_ingreso` int(11) NOT NULL,
  `idingreso` int(11) NOT NULL,
  `idarticulo` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_compra` decimal(11,2) NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_ingreso`
--

INSERT INTO `detalle_ingreso` (`iddetalle_ingreso`, `idingreso`, `idarticulo`, `cantidad`, `precio_compra`, `precio_venta`) VALUES
(1, 1, 10, 1, '50.00', '60.00');

--
-- Disparadores `detalle_ingreso`
--
DELIMITER $$
CREATE TRIGGER `tr_updStockIngreso` AFTER INSERT ON `detalle_ingreso` FOR EACH ROW BEGIN
UPDATE articulo SET stock=stock + NEW.cantidad
WHERE articulo.idarticulo = NEW.idarticulo;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `iddetalle_venta` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `idarticulo` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL,
  `descuento` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`iddetalle_venta`, `idventa`, `idarticulo`, `cantidad`, `precio_venta`, `descuento`) VALUES
(29, 23, 12, 1, '300.00', '0.00'),
(30, 23, 11, 1, '300.00', '0.00'),
(31, 24, 10, 3, '3000.00', '0.00'),
(32, 25, 11, 1, '60.00', '0.00');

--
-- Disparadores `detalle_venta`
--
DELIMITER $$
CREATE TRIGGER `tr_udpStockVenta` AFTER INSERT ON `detalle_venta` FOR EACH ROW BEGIN
UPDATE articulo SET stock = stock - NEW.cantidad
WHERE articulo.idarticulo = NEW.idarticulo;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso`
--

CREATE TABLE `ingreso` (
  `idingreso` int(11) NOT NULL,
  `idproveedor` int(11) NOT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `tipo_comprobante` varchar(20) NOT NULL,
  `serie_comprobante` varchar(7) DEFAULT NULL,
  `num_comprobante` varchar(10) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  `total_compra` decimal(11,2) NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ingreso`
--

INSERT INTO `ingreso` (`idingreso`, `idproveedor`, `idusuario`, `tipo_comprobante`, `serie_comprobante`, `num_comprobante`, `fecha_hora`, `impuesto`, `total_compra`, `estado`) VALUES
(1, 28, 4, 'Boleta', '111', '123', '2019-09-20 00:00:00', '13.00', '50.00', 'Aceptado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `idpermiso` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`idpermiso`, `nombre`) VALUES
(1, 'Escritorio'),
(2, 'Almacen'),
(3, 'Compras'),
(4, 'Ventas'),
(5, 'Acceso'),
(6, 'Consulta Compras'),
(7, 'Consulta Ventas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idpersona` int(11) NOT NULL,
  `tipo_persona` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipo_documento` varchar(20) DEFAULT NULL,
  `num_documento` varchar(20) DEFAULT NULL,
  `direccion` varchar(70) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `tipo_persona`, `nombre`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`) VALUES
(12, 'Cliente', 'Luis Molina', 'CEDULA', '11111111', 'San José, Costa Rica', '61372755', 'chepe35@hotmail.es'),
(13, 'Proveedor', 'Americo', 'CEDULA', 'a521', 'N/A', '8888888', 'N/A@example.com'),
(14, 'Proveedor', 'Magnecharge', 'CEDULA', 'hsgs56', '', '8888888', 'N/A@example.com'),
(15, 'Proveedor', 'Superior Solutions', 'CEDULA', 'SS888', 'N/A', '88888888', 'N/A@example.com'),
(16, 'Proveedor', 'Home Depot', 'CEDULA', 'HD223', 'All Ontario, North Bay', '8888888', 'sales@homedepod.com'),
(17, 'Proveedor', 'Lowes', 'CEDULA', 'L222', 'Barrie', '0', 'N/A@example.com'),
(18, 'Proveedor', 'MR Chemical', 'CEDULA', '19057619995/ 1705474', '101 Jacob Keffer Parkway, Vaughan, ON, L4K 5N8', '567', 'mike@misterchemical.com'),
(19, 'Proveedor', 'Aces and all Source', 'CEDULA', 'AAR', '200 Wilkinson Rd, Unit 9, Brampton , ON, L6T 4M4', '14165536407', 'alexr@acesclean.ca'),
(20, 'Proveedor', 'Staples Canada', 'CEDULA', 'STP12', '1899 Algonquin Ave, North bay, P1B 4Y8', '(705) 472-7223', 'costumer-service@staples.com'),
(21, 'Proveedor', 'Americo Manofacturing', 'CEDULA', 'po# FCH9517', '6224 N Main St SE, Acworth, GA 30101, USA', '1 770-974-7000', 'dhill@americomfg.com'),
(22, 'Proveedor', 'Mor-Value Parts', 'CEDULA', 'MVP21', 'PO Box 1813 Grand Rapids, MI,49501', '1-800-870-0687', 'orders@mor-value.com'),
(23, 'Proveedor', 'North Toronto Auction', 'CEDULA', 'NTA41', '3230 Thomas St, Innisfil, Innisfil, ON, L9S 3W5', '(705) 436-4111', 'sales@northtorontoauction.com'),
(24, 'Proveedor', 'Wallmart', 'CEDULA', 'WLL10', '1500 Fisher St #102, North bay, Ontario, P1B 2H3', '(705) 472-1704', 'N/A@example.com'),
(25, 'Proveedor', 'Ford Douglas and Ford Lincol', 'CEDULA', 'FD29', '379 Bayfield Street, Barrie, L4M 3C5', '705-7285558', 'N/A@example.com'),
(26, 'Proveedor', 'Betco', 'CEDULA', 'B200', 'N/A', '8888888', 'N/A@example.com'),
(27, 'Proveedor', 'Princes Auto', 'CEDULA', '18664165338', '356Bryne Drv, Barrie, L4N8V4', '567', 'princesauto@gmail.com'),
(28, 'Proveedor', 'Canadian Tire', 'CEDULA', '7057704229', '236 Eglingthon, North bay, L4M5H5', '12345', 'canadiantire@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `photo`
--

CREATE TABLE `photo` (
  `idphoto` int(11) NOT NULL,
  `route` varchar(500) NOT NULL,
  `idarticulo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `photo`
--

INSERT INTO `photo` (`idphoto`, `route`, `idarticulo`) VALUES
(1, 'photo', 120);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipo_documento` varchar(20) NOT NULL,
  `num_documento` varchar(20) NOT NULL,
  `direccion` varchar(70) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cargo` varchar(20) DEFAULT NULL,
  `login` varchar(20) NOT NULL,
  `clave` varchar(64) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `condicion` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`, `cargo`, `login`, `clave`, `imagen`, `condicion`) VALUES
(2, 'juan', 'DNI', '30115425', 'calle los jirasoles 450', '054789521', 'juan@hotmail.com', 'empleado', 'juan', '5b065b0996c44ab2e641e24472b28d3e38554ce13d06d72b1aa93480dda21d43', '1535417486.jpg', 1),
(4, 'Jose Luis', 'CEDULA', '604240231', 'San José, Costa Rica', '61372755', 'chepe352013@gmail.com', 'Administrador', 'Thanatos', '7c9e7c1494b2684ab7c19d6aff737e460fa9e98d5a234da1310c97ddf5691834', '1564118006.png', 1),
(5, 'Anthony Chan', 'CEDULA', '11111111', 'Ontario', '88888888', 'fchsuperior@gmail.com', 'Administrador', 'Anthony', '1cff8356fbf7b245fee27f832d332df1aea36b8645d315378fa729d5ff3a1006', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_permiso`
--

CREATE TABLE `usuario_permiso` (
  `idusuario_permiso` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idpermiso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario_permiso`
--

INSERT INTO `usuario_permiso` (`idusuario_permiso`, `idusuario`, `idpermiso`) VALUES
(97, 2, 1),
(98, 2, 4),
(120, 4, 1),
(121, 4, 2),
(122, 4, 3),
(123, 4, 4),
(124, 4, 5),
(125, 4, 6),
(126, 4, 7),
(127, 5, 1),
(128, 5, 2),
(129, 5, 3),
(130, 5, 4),
(131, 5, 5),
(132, 5, 6),
(133, 5, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `idventa` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `tipo_comprobante` varchar(20) NOT NULL,
  `serie_comprobante` varchar(7) DEFAULT NULL,
  `num_comprobante` varchar(10) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `impuesto` decimal(4,2) DEFAULT NULL,
  `total_venta` decimal(11,2) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`idventa`, `idcliente`, `idusuario`, `tipo_comprobante`, `serie_comprobante`, `num_comprobante`, `fecha_hora`, `impuesto`, `total_venta`, `estado`) VALUES
(23, 12, 5, 'Factura', '123', '111', '2019-08-03 00:00:00', '13.00', '600.00', 'Aceptado'),
(24, 12, 5, 'Factura', '1234', '222', '2019-08-03 00:00:00', '13.00', '9000.00', 'Aceptado'),
(25, 12, 4, 'Factura', '111', '123', '2019-09-20 00:00:00', '13.00', '60.00', 'Aceptado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `warehouse`
--

CREATE TABLE `warehouse` (
  `idwarehouse` int(11) NOT NULL,
  `namewarehouse` varchar(200) NOT NULL,
  `numberwarehouse` int(11) NOT NULL,
  `citywarehouse` varchar(200) NOT NULL,
  `condicion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `warehouse`
--

INSERT INTO `warehouse` (`idwarehouse`, `namewarehouse`, `numberwarehouse`, `citywarehouse`, `condicion`) VALUES
(1, 'Shoppers 653', 653, 'Sudbury', 1),
(2, 'Shoppers 655', 655, 'Kapuskasing', 1),
(3, 'Shoppers 665', 665, 'north Bay', 1),
(4, 'Shoppers 671', 671, 'Timmins', 1),
(5, 'Shoppers 1247', 1247, 'North Bay', 1),
(6, 'Shoppers 1347', 1347, 'Timmins', 1),
(7, 'No frills 703', 703, 'north Bay', 1),
(8, 'No frills 704', 704, 'Orillia', 1),
(9, 'No frills 3125', 3125, 'Timmins', 1),
(10, 'Larabies 812', 812, 'Kapuskasing', 1),
(11, 'Brian\'s 1793', 1793, 'hearst', 1),
(12, 'Chartrands 2611', 2611, 'Chelmsford', 1),
(13, 'Daileys 2628', 2628, 'Timmins', 1),
(14, 'Parker\'s 2639', 2639, 'North Bay', 1),
(15, 'Chris', 2671, 'Sudbury', 1),
(16, 'Rome\'s', 2683, 'sault Ste Marie', 1),
(17, 'freshco', 9762, 'north Bay', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`idarticulo`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`),
  ADD KEY `fk_articulo_categoria_idx` (`idcategoria`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`);

--
-- Indices de la tabla `detalle_ingreso`
--
ALTER TABLE `detalle_ingreso`
  ADD PRIMARY KEY (`iddetalle_ingreso`),
  ADD KEY `fk_detalle_ingreso_idx` (`idingreso`),
  ADD KEY `fk_detalle_articulo_idx` (`idarticulo`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`iddetalle_venta`),
  ADD KEY `fk_detalle_venta_venta_idx` (`idventa`),
  ADD KEY `fk_detalle_venta_articulo_idx` (`idarticulo`);

--
-- Indices de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD PRIMARY KEY (`idingreso`),
  ADD KEY `fk_ingreso_persona_idx` (`idproveedor`),
  ADD KEY `fk_ingreso_usuario_idx` (`idusuario`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`idpermiso`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idpersona`);

--
-- Indices de la tabla `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`idphoto`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD UNIQUE KEY `login_UNIQUE` (`login`);

--
-- Indices de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  ADD PRIMARY KEY (`idusuario_permiso`),
  ADD KEY `fk_u_permiso_usuario_idx` (`idusuario`),
  ADD KEY `fk_usuario_permiso_idx` (`idpermiso`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`idventa`),
  ADD KEY `fk_venta_persona_idx` (`idcliente`),
  ADD KEY `fk_venta_usuario_idx` (`idusuario`);

--
-- Indices de la tabla `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`idwarehouse`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `idarticulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `detalle_ingreso`
--
ALTER TABLE `detalle_ingreso`
  MODIFY `iddetalle_ingreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `iddetalle_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  MODIFY `idingreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `idpermiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `photo`
--
ALTER TABLE `photo`
  MODIFY `idphoto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  MODIFY `idusuario_permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `idventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `idwarehouse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD CONSTRAINT `fk_articulo_categoria` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_ingreso`
--
ALTER TABLE `detalle_ingreso`
  ADD CONSTRAINT `fk_detalle_articulo` FOREIGN KEY (`idarticulo`) REFERENCES `articulo` (`idarticulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_ingreso` FOREIGN KEY (`idingreso`) REFERENCES `ingreso` (`idingreso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `fk_detalle_venta_articulo` FOREIGN KEY (`idarticulo`) REFERENCES `articulo` (`idarticulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_venta_venta` FOREIGN KEY (`idventa`) REFERENCES `venta` (`idventa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD CONSTRAINT `fk_ingreso_persona` FOREIGN KEY (`idproveedor`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ingreso_usuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario_permiso`
--
ALTER TABLE `usuario_permiso`
  ADD CONSTRAINT `fk_u_permiso_usuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_permiso` FOREIGN KEY (`idpermiso`) REFERENCES `permiso` (`idpermiso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_venta_persona` FOREIGN KEY (`idcliente`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_venta_usuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
