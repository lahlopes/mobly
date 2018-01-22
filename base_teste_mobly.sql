CREATE DATABASE  IF NOT EXISTS `curso_carrinho_compras` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `curso_carrinho_compras`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: curso_carrinho_compras
-- ------------------------------------------------------
-- Server version	5.6.16

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `ativo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Sofás','S'),(2,'Poltronas','S'),(3,'Cadeiras','S'),(4,'Armários','S');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cor`
--

DROP TABLE IF EXISTS `cor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ds_cor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cor`
--

LOCK TABLES `cor` WRITE;
/*!40000 ALTER TABLE `cor` DISABLE KEYS */;
INSERT INTO `cor` VALUES (1,'Rosa'),(2,'Marrom'),(3,'Branco');
/*!40000 ALTER TABLE `cor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cupom_descontos`
--

DROP TABLE IF EXISTS `cupom_descontos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cupom_descontos` (
  `id` int(11) NOT NULL,
  `localizador` varchar(45) DEFAULT NULL,
  `ativo` varchar(45) DEFAULT NULL,
  `dthr_validade` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cupom_descontos`
--

LOCK TABLES `cupom_descontos` WRITE;
/*!40000 ALTER TABLE `cupom_descontos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cupom_descontos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `garantia`
--

DROP TABLE IF EXISTS `garantia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garantia` (
  `id` int(11) NOT NULL,
  `ds_garantia` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garantia`
--

LOCK TABLES `garantia` WRITE;
/*!40000 ALTER TABLE `garantia` DISABLE KEYS */;
INSERT INTO `garantia` VALUES (1,'3 meses'),(2,'1 ano');
/*!40000 ALTER TABLE `garantia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instrucoes`
--

DROP TABLE IF EXISTS `instrucoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instrucoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ds_instrucoes` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instrucoes`
--

LOCK TABLES `instrucoes` WRITE;
/*!40000 ALTER TABLE `instrucoes` DISABLE KEYS */;
INSERT INTO `instrucoes` VALUES (1,'Limpa com pano seco');
/*!40000 ALTER TABLE `instrucoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ds_material` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES (1,'	CHAPAS DE MDP 15MM');
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `idpassword_resets` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(45) DEFAULT NULL,
  `remember_token` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpassword_resets`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES (2,NULL,NULL,'larilopes93@gmail.com','964abb4fd900ccd33fdeca53a71a7ce25b1248e9766953af66bb6b2486fa9acc','2018-01-22 01:00:10');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_produtos`
--

DROP TABLE IF EXISTS `pedido_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pedido_id` int(11) DEFAULT NULL,
  `produto_id` int(11) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `desconto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_produtos`
--

LOCK TABLES `pedido_produtos` WRITE;
/*!40000 ALTER TABLE `pedido_produtos` DISABLE KEYS */;
INSERT INTO `pedido_produtos` VALUES (1,1,1,10.00,'CA','2018-01-17 23:29:00','2018-01-17 23:21:15',NULL),(2,1,2,30.00,'CA','2018-01-18 22:44:29','2018-01-17 23:27:07',NULL),(3,2,1,10.00,'PA','2018-01-18 22:44:18','2018-01-18 22:43:52',NULL),(10,5,11,369.99,'PA','2018-01-22 01:17:28','2018-01-22 01:13:47',NULL),(11,5,1,10.00,'CA','2018-01-22 01:18:30','2018-01-22 01:16:45',NULL),(13,5,1,10.00,'CA','2018-01-22 01:18:47','2018-01-22 01:17:21',NULL);
/*!40000 ALTER TABLE `pedido_produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(45) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'CA',2,'2018-01-17 23:17:46','2018-01-18 22:44:29'),(2,'PA',2,'2018-01-18 22:43:52','2018-01-18 22:44:18'),(5,'PA',3,'2018-01-22 01:13:47','2018-01-22 01:17:28');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto_categoria`
--

DROP TABLE IF EXISTS `produto_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto_categoria` (
  `id_produto` int(11) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_categoria`
--

LOCK TABLES `produto_categoria` WRITE;
/*!40000 ALTER TABLE `produto_categoria` DISABLE KEYS */;
INSERT INTO `produto_categoria` VALUES (1,3),(2,3),(3,2),(4,4),(5,4),(6,1),(7,1),(8,1),(9,2),(10,4),(11,3);
/*!40000 ALTER TABLE `produto_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `descricao` text,
  `imagem` varchar(255) DEFAULT NULL,
  `valor` varchar(45) DEFAULT NULL,
  `ativo` varchar(1) DEFAULT NULL,
  `id_cor` int(11) DEFAULT NULL,
  `id_garantia` int(11) DEFAULT NULL,
  `id_material` int(11) DEFAULT NULL,
  `id_tamanho` int(11) DEFAULT NULL,
  `id_instrucoes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Conjunto com 2 Cadeiras Eames Premium Branca Base Madeira','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nibh felis, aliquam nec porta eu, finibus ut odio. Integer facilisis mi purus, eu convallis massa suscipit a. Curabitur quis nibh quis magna blandit porttitor. Duis felis tortor, gravida a diam at, bibendum posuere purus. Aliquam placerat dignissim interdum. Fusce mollis accumsan augue et porta. Praesent tempus efficitur dui a viverra. Vestibulum convallis elit tempor lacus blandit, a placerat turpis placerat. Suspendisse dignissim tellus vel aliquet lacinia. Praesent ac magna ultricies augue tincidunt placerat. Proin aliquet, dui blandit semper condimentum, dolor lorem rutrum mauris, in euismod lorem nisi vitae sapien.','conjunto_cadeira.jpg','10.00','S',1,1,1,1,1),(2,'Conjunto de 2 Cadeiras Mistic Suede Canela','Descrição produto','cadeiras_mistic.jpg','169.99','S',1,1,1,1,1),(3,'Poltrona','Descrição produto','poltrona.jpg','50.00','S',1,2,2,2,1),(4,'Sapateria Retrô Plus Branco','Descrição produto','sapateira.jpg','100.00','S',1,1,1,1,1),(5,'Penteadeira com Espelho Atração Branco e Amarelo','Descrição produto','penteadeira.jpg','209.90','S',1,1,1,1,1),(6,'Sofá 3 Lugares Retrátil Fluence Suede Capuccino','Descrição produto','sofa1.jpg','974.99','S',1,1,1,1,1),(7,'Sofá 3 Lugares Retrátil Kennedy Suede Preto','Descrição produto','sofa2.jpg','866.99','S',1,1,1,1,1),(8,'Sofá 3 Lugares Retrátil Fluence Suede Fendi','Descrição produto','sofa3.jpg','974.99','S',1,1,1,1,1),(9,'Poltrona Rizzo Suede Rosa','Descrição produto','poltrona_rosa.jpg','340.00','S',1,1,1,1,1),(10,'Cozinha Compacta Cacau 5 PT 3 GV Branco',NULL,'cozinha_compacta.jpg','800.00','S',1,1,1,1,1),(11,'Conjunto com 2 Cadeiras Eames Premium Botonê Amarela',NULL,'cadeiras_eames.jpg','369.99','S',1,1,1,1,1);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tamanho`
--

DROP TABLE IF EXISTS `tamanho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tamanho` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ds_tamanho` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tamanho`
--

LOCK TABLES `tamanho` WRITE;
/*!40000 ALTER TABLE `tamanho` DISABLE KEYS */;
INSERT INTO `tamanho` VALUES (1,'Altura 111 cm Largura 66 cm Profundidade 42 cm');
/*!40000 ALTER TABLE `tamanho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL,
  `created_at` varchar(45) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `nm_entrega` varchar(255) DEFAULT NULL,
  `sobrenome_entrega` varchar(255) DEFAULT NULL,
  `nr_telefone` varchar(45) DEFAULT NULL,
  `nr_celular` varchar(45) DEFAULT NULL,
  `nr_cep` varchar(45) DEFAULT NULL,
  `nr_endereco` varchar(45) DEFAULT NULL,
  `ds_endereco` varchar(255) DEFAULT NULL,
  `ds_complemento` varchar(255) DEFAULT NULL,
  `ds_referencia` text,
  `ds_bairro` varchar(255) DEFAULT NULL,
  `ds_cidade` varchar(255) DEFAULT NULL,
  `ds_estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'larilopes93@gmail.com','$2y$10$8Dv2JZCYOrogGIxNcjxGKePEGxaaeMDU5..9pGB6U63XEVXaooEOm','Larissa Lopes','2018-01-22 00:59:58','2018-01-17 22:44:03','BfWXvgMGxC08A8mbNdeoOkH9CclSQVQ2UhwRqPDkgHeNzOO3BPGD4FLGuBfL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'paulohtc@gmail.com','$2y$10$KVUTYGS5ntJZW5r0jmBTW.4oG6JRVCylO9eEW9gQUiAW/dj53o4JW','paulo castro','2018-01-22 01:21:15','2018-01-22 01:08:44','9paxAKYwe0wlri11BaTyDETO91e5mTbxkxvX8O4QSnMc4iy0PxqM3dmIJGLS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'teste@teste.com.br','$2y$10$HFGDzObJBzMItRTLSQ6LZu7cTe.nvJhJpnmbKM75fwTlSSQyfSKiG','teste','2018-01-22 11:58:07','2018-01-22 11:58:07',NULL,'teste','teste','huhi','huuh','897978','878789','87789897','89778','79878','79789','89879','87978');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-22 10:13:03
