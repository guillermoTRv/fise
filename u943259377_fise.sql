-- MySQL dump 10.15  Distrib 10.0.20-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: u943259377_fise
-- ------------------------------------------------------
-- Server version	10.0.20-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `usuario` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('villagran_gg@hotmail.com','123qweasdzx');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

--
-- Table structure for table `appear`
--

DROP TABLE IF EXISTS `appear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appear` (
  `titulo_nota` varchar(120) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appear`
--

/*!40000 ALTER TABLE `appear` DISABLE KEYS */;
INSERT INTO `appear` VALUES ('Física y Biotecnología Luz sincroton ');
/*!40000 ALTER TABLE `appear` ENABLE KEYS */;

--
-- Table structure for table `contents_fise`
--

DROP TABLE IF EXISTS `contents_fise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contents_fise` (
  `id_content` int(11) NOT NULL AUTO_INCREMENT,
  `materia` varchar(20) NOT NULL,
  `tema` varchar(120) NOT NULL,
  `titulo` varchar(120) NOT NULL,
  `tipo` varchar(35) NOT NULL,
  `texto_descripcion` varchar(1500) NOT NULL,
  `link` varchar(120) DEFAULT NULL,
  `fecha` varchar(10) NOT NULL,
  PRIMARY KEY (`id_content`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents_fise`
--

/*!40000 ALTER TABLE `contents_fise` DISABLE KEYS */;
INSERT INTO `contents_fise` VALUES (1,'Calculo','Integral indefinida','Que son las integrales sin complicarnos tanto ','Nota','En la siguiente imagen podremos observar que una integral no es mas que el proceso inverso a la derivación, así como la resta lo es para la suma o la división para la multiplicación ','','11-08-2015'),(2,'Algebra','Logaritmos','Explicacion sencilla sobre que es un logaritmo','Nota','Los logaritmos tienen una enorme variedad de aplicaciones, unas de las muchas que podemos mencionar están en el uso de las finanzas y en el estudio de las reacciones químicas ','','11-08-2015'),(3,'Calculo','Derivadas ','Introducción a la derivacion','Apunte','En esta primer apunte sobre una serie de que es la derivación, introduciremos el proceso para derivar una funcion','https://www.facebook.com/ejerciciosmatematicasymas/photos/pb.880612488657772.-2207520000.1439486521./886450491407305/?ty','13-08-2015'),(4,'Calculo','Introduccion a la derivacion II','La recta tangente y la derivación ','Apunte ','Para llegar a definir que es la derivación en necesario conocer el problema de calcular el valor de la pendiente de la recta tangente a un punto sobre una curva. ','','13-08-2015'),(5,'Calculo','Integral definida','Ejemplos básicos sobre integración definida','Ejercicios','Son sencillos los pasos que debemos seguir para poder integrar definidamente una funcion','','14-08-2015'),(6,'Calculo','Derivadas de funciones logarítmicas ','Ejemplos básicos sobre derivación logaritmica ','Ejercicios','--','https://www.facebook.com/ejerciciosmatematicasymas?ref=aymt_homepage_panel','16-08-2015'),(7,'Algebra','Ecuaciones fraccionarias ','Como resolver una ecuacion fraccionaria paso a paso ','Ejercicios','Lo que mas debemos de tener en cuenta al momento de resolver una ecuación fraccionaria es eliminar los denominadores para poder pasar a una ecuación lineal básica, la clave sera encontrar el mínimo común múltiplo de los denominadores, es decir el numero que puede ser dividido exactamente por los denominadores','https://www.facebook.com/ejerciciosmatematicasymas','17-08-2015'),(8,'Algebra','Aplicaciónes de las ecuaciones','Del problema a la ecuacion','Nota','Uno de los fines principales del álgebra es pasar de datos y problemas a un modelo o ecuación que nos permita llegar a una solución, en las siguientes imágenes se presentan 3 ejemplos que tal ves sean los mas sencillos a cerca de como podemos aplicar el álgebra. Primero debemos de leer nuestro problema y entender que es lo que se nos esta pidiendo que resolvamos, después hay que observar con que datos  contamos y con cuales no, para continuar debemos de relacionar nuestra variables para llegar a construir una ecuación con la que podamos encontrar la o los datos que se nos pedían al principio y para concluir solo hay que verificar lo hecho','','17-08-2015'),(9,'Algebra','Factorizacion','4 sencillas formas de factorización ','Nota','Con la factorización hallamos dos o mas factores cuyo producto es igual a la expresión propuesta. \r\nNo solo hay una forma de poder factorizar una expresión ya que así como hay expresiones simples las hay de grandes y complicadas, pero en general existen varios casos que tienen una regla para poder factorizar y que con una combinación de estas podremos trabajar cualquier expresion. Si quieres saber mas sobre este tema te recomendamos leer el capitulo 10 del libro Algebra de Baldor ','','17-08-2015'),(10,'Algebra','Potencias','Reglas para la operacion con potencias','Nota','En estas imágenes te mostramos 3 sencillas reglas que hay que seguir para la operación de expresiones con potencias, la primera es sobre potencias elevadas a otra potencia, en la segunda se explica como representar una raíz enésima a una potencia y en la tercera se trata el exponente negativo. ','','17-08-2015'),(13,'Algebra','Radicales','Reglas básicas para la operación con radicales','Nota','En estas sencillas imagines veremos los temas de simplificación y racionalización de expresiones con radicales. La simplificación es cuando reducimos nuestra expresión y la racionalización es cuando se quita una expresión radical que esta presente en el denominador.','','17-08-2015'),(14,'Calculo','Introduccion a la derivacion III','Definición formal de la derivida','Nota','En esta serie de imágenes presentamos una definición mas formal sobre la derivación y llegaremos a una formula que es la que podremos aplicar a cualquier tipo de función, llámese polinomial, trigonométrica, exponencial, logarítmica, etc, para poder hallar su respectiva derivada. Para poder entender tal formula hay que tener siempre en cuenta que la derivación surge por una razón de cambio, es decir la forma si cambia mucho o poco una variable en relación a otra.','','18-08-2015'),(15,'Calculo','Regla de la cadena','Regla de la cadena ','Nota ','Con la regla de la cadena nosotros podremos derivar funciones en las que expresiones  (x+3), (6x-8), (9x-1) están elevadas a cierta potencia o están dentro de un signo de radical y no solo eso, también son aplicables a funciones trigonométricas, logarítmicas, exponenciales, etc. ','','18-08-2015'),(16,'Calculo','Método de los 4 pasos ','Ejemplos sobre el método de los 4 pasos ','Ejercicios','El método de los 4 pasos lo ocupamos para derivar una función usando una formula general que proviene de la definición formal de la derivación. En estas 2 imágenes te presentamos ejemplos sencillos sobre como se aplica tal método.','','18-08-2015'),(17,'Calculo','Derivada de la función seno ','Demostración de la derivada de la función seno ','Nota','Para demostrar el porque la derivada de la función seno es igual a coseno negativo, necesitamos tener muy cuenta la definición formal de la derivación y el uso de identidades trigonométricas. En las siguientes imágenes mostraremos primero una serie de piezas que serán necesarias para después armar nuestro rompecabezas que sera la demostración de la derivada de la función seno. \r\n','','18-08-2015'),(18,'Calculo','Derivada de la función coseno  ','Demostración de la derivada de la función coseno','Nota','Esta demostración es un tanto sencilla ya que solo debemos tener en cuenta algunas identidades trigonométricas básicas.  ','','18-08-2015'),(19,'Calculo','Derivada de la función tengente','Demostración de la derivada de la función tengente ','Nota','Como en la demostración para la derivada de la función seno y de la función coseno, para la demostrar la de la tangente, debemos tener presentes unas sencillas identidades trigonométricas y agregar la formula de la derivada de un cociente de funciones.','','18-08-2015'),(20,'Calculo','Diferenciales ','Diferenciales, el paso para entender las integrales','Nota','Podemos ver que la diferencial es ?y y esta es igual al producto del incremento de la variable independiente o sea ?x por la derivada de la función que tengamos. En las siguientes imágenes presentamos primero una serie de conceptos a repasar y después definimos que es la diferencial con unos ejemplos.   ','','18-08-2015'),(30,'Estadistica','Distribución de probabilidad de una variable aleatoria discreta ','Variables aleatorias y distribución de probabilidad','Nota','Para poder entender tal tema, debemos de tener en cuenta que los eventos a analizar deberán ser discretos.','','23-08-2015'),(31,'Calculo','Integración de funciones compuestas ','Integración de funciones compuestas I','Nota','Si os nos hemos percatado, en muchas integrales, no solo tenemos nuestra x multiplicada y elevada a una n potencia sino que se nos presenta un producto notable que podría ser desarrollado, pero bien tendríamos un polinomio enorme y seria tedioso integrarlo, es decir tratemos de integrar (x+5) elevado a la 11, seria tremenda integración, así que se recurre al método de integración compuesta, que lo disfruten y espero les ayude. ','','23-08-2015'),(28,'Estadistica','Probabilidad','Tipos de probabilidad','Nota','Como escritor de este articulo, en el estudio de la estadística me llegaba a perder sobre cuantos tipos de probabilidades existen, bien algunos libros mostraban solo las reglas de suma y multiplicación, otros explicaban mediante conjuntos pero de una forma en la cual no era posible organizar tales conceptos de una manera consecutiva. Es por eso que hice la siguiente guía sobre tipos de probabilidad y bien la comparto con vosotros. \n\n','','23-08-2015'),(23,'Calculo','Integración indefinida básica -  Potencias ','Regla para integrar variables elevadas a la n potencia ','Nota','--','','19-08-2015'),(24,'Calculo','Reglas básicas de integracion','Reglas básicas de integración ','Nota','--','','19-08-2015'),(32,'Calculo','Integración de funciones compuestas ','Integración de funciones compuestas II','Nota','En este post continuamos con el tema de integrales compuestas','','23-08-2015'),(33,'Calculo','Raíces - Método de la regla falsa ','Método de la regla falsa para calcular la raíz de una función','Nota','Mediante el método de la regla falsa se pude aproximar la raíz de una ecuación. Este es un método de tipo recursivo entendiéndose por esto un proceso que bajo ciertas condiciones iniciales del problema o bien ante un análisis de la función involucrada permite obtener una primera aproximación x cero y con base en esta se obtiene otra y así sucesivamente, a cada paso le llamamos iteración.','','24-08-2015'),(34,'Calculo','Raíces - Método de Newton Raphson','Método de Newton - Raphson  para calcular la raíz de una función\n','Nota','La clave en tal método consiste en hacer un buen proceso de derivación y conocer las condiciones del problema al igual que el tipo de función, ya que este método solo es efectivo en algunos casos ','','25-08-2015'),(35,'Geometria analitica','Ovo circular ','El ovo circular ','Nota','De antemano le agradecemos al Ing. Rogelio Enrique Lara Martínez por dejarnos compartir este material para ustedes. Para seguir, el ovo circular tal y como lo dice la imagen es el lugar geométrico de un punto que se mueve en un plano y se mantiene equidistante a un segmento de directriz tangente a una circunferencia generatriz.','','05-09-2015'),(36,'Geometria analitica','Ovo elíptico en el plano cartesiano ','El Ovo elíptico en el plano cartesiano ','Nota ','De antemano le agradecemos al Ing. Rogelio Enrique Lara Martínez por dejarnos compartir este material para ustedes. \r\nEn el mundo de la geometría podemos apreciar que se pueden generar una gran variedad de figuras en el espacio y en nuestra percepcion podemos encontrar algunas de ellas curiosas y en esta nota conoceremos mas acerca de una de ellas que es el ovo eliptico','','05-09-2015'),(37,'','','','','','','09-09-2015');
/*!40000 ALTER TABLE `contents_fise` ENABLE KEYS */;

--
-- Table structure for table `image_content`
--

DROP TABLE IF EXISTS `image_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_content` (
  `id_imagen` int(11) NOT NULL AUTO_INCREMENT,
  `id_content` int(11) DEFAULT NULL,
  `nombre_imagen` varchar(100) NOT NULL,
  PRIMARY KEY (`id_imagen`),
  KEY `id_content` (`id_content`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_content`
--

/*!40000 ALTER TABLE `image_content` DISABLE KEYS */;
INSERT INTO `image_content` VALUES (1,1,'1456025_890341347684886_7343592734837613068_n.jpg'),(2,2,'11760121_956912277694459_8331728664957050259_n.jpg'),(3,3,'1610889_886450491407305_1082504339932553838_n.jpg'),(4,4,'queesderivaruno.jpg'),(5,4,'queesderivardos.jpg'),(6,4,'queesderivartres.jpg'),(7,4,'queesderivarcuatro.jpg'),(8,5,'integracion definida.jpg'),(9,5,'integracion definidados.jpg'),(10,6,'logaritmo.jpg'),(11,6,'logaritmodos.jpg'),(12,7,'10994055_882644998454521_7263785984278030159_n.jpg'),(13,7,'10991184_882658475119840_7360389347477962141_n.jpg'),(14,7,'11022586_882658548453166_7413894129990559738_n.jpg'),(15,7,'10999104_882658608453160_5282860282823627554_n.jpg'),(16,8,'10993095_882982521754102_1524130592568471197_n.jpg'),(17,8,'10615474_882982508420770_5465484683253505667_n.jpg'),(18,8,'10393952_882982538420767_7809064325010732928_n.jpg'),(19,9,'14380_883712441681110_5696775956587486482_n.jpg'),(20,9,'10998322_883712428347778_7892472770785907403_n.jpg'),(21,10,'potenciauno.jpg'),(22,10,'potenciados.jpg'),(23,10,'potenciatres.jpg'),(26,13,'radicalesdos.jpg'),(27,13,'radicalesuno.jpg'),(28,14,'tresderivaruno.jpg'),(29,14,'tresderivardos.jpg'),(30,14,'tresderivartres.jpg'),(31,14,'tresderivarcuatro.jpg'),(32,15,'cero.jpg'),(33,15,'derivadaunos.jpg'),(34,15,'derivadados.jpg'),(35,15,'derivadatres.jpg'),(36,16,'10430886_888606167858404_953551938555907824_n.jpg'),(37,16,'1926721_888606201191734_8651125137585760455_n.png'),(38,17,'senouno.jpg'),(39,17,'senodos.jpg'),(40,17,'senotres.jpg'),(41,17,'senocuatro.jpg'),(42,17,'senocinco.jpg'),(43,18,'cosenouno.jpg'),(44,18,'cosenodos.jpg'),(45,19,'tangenteuno.jpg'),(46,19,'tangentedos.jpg'),(47,20,'11029640_890852554300432_473658774778735928_n.jpg'),(48,20,'10987462_890852570967097_7326086043456170853_n.png'),(49,20,'11044512_890875274298160_5291632708686054952_n.png'),(57,28,'Guia rapida de tipos de probabilidad.jpg'),(52,23,'integrales.jpg'),(53,24,'10455639_891917497527271_3543095734985566850_n.jpg'),(54,24,'10177901_891917524193935_4565434500592581685_n.jpg'),(58,30,'aleatoria discreta.jpg'),(59,31,'compuestauno.jpg'),(60,31,'compuestados.jpg'),(61,31,'Integracion de una funcion compuesta 1b.jpg'),(62,32,'Integracion de una funcion compuesta 2a.jpg'),(63,32,'Integracion de una funcion compuesta 2b.jpg'),(64,33,'metodouno.jpg'),(65,33,'metododos.jpg'),(66,33,'metodotres.jpg'),(67,33,'metodocuatro.jpg'),(68,34,'newtonuno.jpg'),(69,34,'newtondos.jpg'),(70,34,'newtontres.jpg'),(71,35,'ovocircular.jpg'),(72,36,'ovolo.jpg');
/*!40000 ALTER TABLE `image_content` ENABLE KEYS */;

--
-- Table structure for table `image_nota`
--

DROP TABLE IF EXISTS `image_nota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_nota` (
  `id_nota` int(11) DEFAULT NULL,
  `nombre_imagen_nota` varchar(100) NOT NULL,
  KEY `id_nota` (`id_nota`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_nota`
--

/*!40000 ALTER TABLE `image_nota` DISABLE KEYS */;
INSERT INTO `image_nota` VALUES (1,'facturados.jpg'),(3,'1280px-Schéma_de_principe_du_synchrotron.jpg');
/*!40000 ALTER TABLE `image_nota` ENABLE KEYS */;

--
-- Table structure for table `image_reco`
--

DROP TABLE IF EXISTS `image_reco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_reco` (
  `id_imagen` int(11) NOT NULL AUTO_INCREMENT,
  `id_reco` int(11) NOT NULL,
  `nombre_imagen` varchar(100) NOT NULL,
  PRIMARY KEY (`id_imagen`),
  KEY `id_reco` (`id_reco`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_reco`
--

/*!40000 ALTER TABLE `image_reco` DISABLE KEYS */;
INSERT INTO `image_reco` VALUES (1,2,'khan.jpg');
/*!40000 ALTER TABLE `image_reco` ENABLE KEYS */;

--
-- Table structure for table `image_reto`
--

DROP TABLE IF EXISTS `image_reto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_reto` (
  `id_imagen_reto` int(11) NOT NULL,
  `id_reto` int(11) NOT NULL,
  `nombre_imagen` varchar(100) NOT NULL,
  PRIMARY KEY (`id_imagen_reto`),
  KEY `id_reto` (`id_reto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_reto`
--

/*!40000 ALTER TABLE `image_reto` DISABLE KEYS */;
INSERT INTO `image_reto` VALUES (1,1,'1514614_963582773694076_3745879301189622242_n.jpg'),(2,2,'11825136_965449670174053_1393681179231410373_n.jpg'),(0,3,'marcianos.jpg');
/*!40000 ALTER TABLE `image_reto` ENABLE KEYS */;

--
-- Table structure for table `notas_tec`
--

DROP TABLE IF EXISTS `notas_tec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas_tec` (
  `id_nota` int(11) NOT NULL AUTO_INCREMENT,
  `titulo_nota` varchar(120) NOT NULL,
  `texto_nota` varchar(1500) NOT NULL,
  `link_nota` varchar(140) DEFAULT NULL,
  `fuente` varchar(120) DEFAULT NULL,
  `fecha` varchar(14) NOT NULL,
  PRIMARY KEY (`id_nota`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas_tec`
--

/*!40000 ALTER TABLE `notas_tec` DISABLE KEYS */;
INSERT INTO `notas_tec` VALUES (1,'prueba','prueba\r\n\r\n\r\n\r\n','','gg','12-08-2015 22:'),(2,'gg','gh','','g','12-08-2015 22:'),(3,'Física y Biotecnología Luz sincroton ','Es un tipo de radiación electromagnética emitida por partículas con carga(como electrones y protones) que se mueven a velocidades cercanas a la de la luz. \nEl encargado de generar este tipo de luz es un acelerador de partículas llamado sincroton que funciona bajo unos principios iguales a lo de los bulbos de un televisor antiguo. El espectro de esta luz va desde el infrarrojo, espectro visible por el ojo humano, ultravioleta y terminando en los rayos x. \nSu importancia en las aplicaciones biotecnologías es que con esta luz se pueden obtener gran cantidad de informacion sobre estructuras atómicas y moleculares biológicas como el adn y proteínas o bien se pueden estudiar mas a fondo diferentes tipos de fármacos. \n¿Pero porque y como la Luz sincroton nos permite obtener tanta informacion?\nCuando una luz pasa sobre un objeto, podemos obtener informacion de tal objeto, por ejemplo si nos podemos ver en tal objeto, decimos que es un espejo, si podemos ver que hay detrás de ese objeto decimos que es una ventana, o si lo que vemos dentro de un vaso de agua es diferente a los que se ve en el aire, decimos que ambos presentan estados diferentes. \nLo mismo sucede con la luz sincroton, solo que su estudio lo vemos sobre partículas atómicas y estructuras moleculares y  debido a que posee propiedades únicas como alta brillantez,un amplio espectro electromagnético y fácil control de la polarización se pueden hacer una gran variedad de experimentos  ','https://www.cells.es/en/outreach/dosier_visitaalba_esp.pdf','Luz cincroton alba','12-08-2015 23:'),(4,'','','','','06-10-2015 13:');
/*!40000 ALTER TABLE `notas_tec` ENABLE KEYS */;

--
-- Table structure for table `recomendaciones_fise`
--

DROP TABLE IF EXISTS `recomendaciones_fise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recomendaciones_fise` (
  `id_reco` int(11) NOT NULL AUTO_INCREMENT,
  `titulo_reco` varchar(120) NOT NULL,
  `descripcion_reco` varchar(1500) NOT NULL,
  `link_reco` varchar(140) DEFAULT NULL,
  `fecha` varchar(20) NOT NULL,
  PRIMARY KEY (`id_reco`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recomendaciones_fise`
--

/*!40000 ALTER TABLE `recomendaciones_fise` DISABLE KEYS */;
INSERT INTO `recomendaciones_fise` VALUES (1,'Practica problemas de matemáticas de una forma dinamica','thatquiz es una plataforma en donde los usuarios podrán resolver ejercicios de distintas ramas de las matemáticas, desde la aritmética hasta el calculo integral de una forma dinámica, ya que los resuelve contra reloj y hay un contador que permite saber el tiempo que se tarda en una operación ademas de que se puede personalizar las listas de ejercicios para practicar','http://www.thatquiz.org/es/','12-08-2015 23:03'),(2,'Khan Academy un gigante de la educacion en linea','Es una plataforma de educacion gratuita, en donde las personas pueden crear fácilmente una sesión y registrarse a diferentes cursos interactivos que van desde las matemáticas hasta la historia ademas de que tiene un agradable diseño para la vista. Lo que mas cabe resaltar de Khan Academy es la forma en como podemos interacutar con la plataforma, ya que no solo vemos vídeos sino que se pone a prueba lo aprendido con diferentes actividades interactivas. ','https://es.khanacademy.org/','13-08-2015 12:43'),(3,'Cursos de calidad en Tareas Plus','Para el gusto de muchos Tareas Plus contiene los mejores cursos de ciencia y tecnología, posee una gran variedad en el ámbito matemático, cursos que van desde álgebra básica hasta series de fourier y ecuaciones diferenciales. Algunos son de paga pero bien la mayoría son de libre acceso. Así que si quieres un buen catalogo de cursos en linea esta es nuestra recomendacion','https://www.tareasplus.com/Matematica-y-Ciencia','18-08-2015 09:56');
/*!40000 ALTER TABLE `recomendaciones_fise` ENABLE KEYS */;

--
-- Table structure for table `relaciones`
--

DROP TABLE IF EXISTS `relaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relaciones` (
  `id_par` int(11) NOT NULL AUTO_INCREMENT,
  `id_relacionado` int(11) NOT NULL,
  `id_relacion` int(11) NOT NULL,
  PRIMARY KEY (`id_par`,`id_relacion`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relaciones`
--

/*!40000 ALTER TABLE `relaciones` DISABLE KEYS */;
INSERT INTO `relaciones` VALUES (1,5,1),(2,17,18),(3,17,19),(4,18,17),(5,18,19),(6,19,17),(7,19,18),(8,3,4),(9,3,14),(10,3,16),(11,3,15),(12,3,6),(13,1,3),(14,20,3),(15,20,1),(16,31,32),(17,32,31),(18,23,24),(19,24,23),(20,24,1),(21,23,1),(22,30,28),(23,33,34),(24,34,33),(25,35,36),(26,36,35);
/*!40000 ALTER TABLE `relaciones` ENABLE KEYS */;

--
-- Table structure for table `retos_fise`
--

DROP TABLE IF EXISTS `retos_fise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retos_fise` (
  `id_reto` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_reto` varchar(1500) NOT NULL,
  `comentario` varchar(1500) DEFAULT NULL,
  `reto` varchar(1500) NOT NULL,
  `link_reto` varchar(120) DEFAULT NULL,
  `fecha` varchar(20) NOT NULL,
  PRIMARY KEY (`id_reto`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retos_fise`
--

/*!40000 ALTER TABLE `retos_fise` DISABLE KEYS */;
INSERT INTO `retos_fise` VALUES (1,'Circulos concentricos - La dona','Para resolver este reto solo necesitas paciencia y un buen uso de la lógica, diviértete y éxito !!','Tienes 2 circunferencias concéntricas y una cuerda de la circunferencia mayor que es tangente a la circunferencia menor que mide raíz cuadrada de 3. ¿Cuanto mide el área de la dona?','','12-08-2015 22:56'),(2,'Reto con vacas','Un buen pasatiempo es resolver este tipo de problemas, divierte un momento con el siguiente reto ','Si x vacas dan x + 1 botes de leche en x + 2 dias, ¿en cuantos dias x + 3 vacas daran x + 5 botes de leche?','','13-08-2015 00:14'),(3,'Marcianos ','Pongamos a trabajar de una forma distinta nuestra mente, si quieren saber la respuesta envíenos un mensaje en nuestra cuenta de facebook ejercicios de matematicas ','Para calcular cuántos brazos, piernas y ojos tienen los marcianos se procede como sigue: Para el número de los dos primeros se toma en cuenta la suma el producto de ambos y luego suma el resultado de ambas operaciones: obtendrás 34. Haz lo mismo con piernas y ojos y obtendrás 14. ¿Cuántos brazos, piernas y ojos tienen?','','23-08-2015 22:36');
/*!40000 ALTER TABLE `retos_fise` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-11 20:08:40
