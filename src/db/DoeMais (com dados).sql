CREATE DATABASE  IF NOT EXISTS `doemais` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `doemais`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: doemais
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `idFeedback` int NOT NULL AUTO_INCREMENT,
  `usuario_idusuario` int NOT NULL,
  `pedidoDoacao_idPedidoDoacao` int NOT NULL,
  `nota` smallint DEFAULT '5',
  `comentario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idFeedback`),
  KEY `fk_feedback_pedidoDoacao1_idx` (`pedidoDoacao_idPedidoDoacao`),
  KEY `fk_feedback_usuario1_idx` (`usuario_idusuario`),
  CONSTRAINT `fk_feedback_pedidoDoacao1` FOREIGN KEY (`pedidoDoacao_idPedidoDoacao`) REFERENCES `pedidodoacao` (`idPedidoDoacao`),
  CONSTRAINT `fk_feedback_usuario1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,1,1,5,'Excelente serviço!'),(2,2,2,4,'Muito bom!'),(3,3,3,3,'Bom, mas pode melhorar.');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parceiro`
--

DROP TABLE IF EXISTS `parceiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parceiro` (
  `idParceiro` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cnpj` varchar(18) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(200) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `razaoSocial` varchar(45) DEFAULT NULL,
  `ativo` tinyint DEFAULT '0',
  PRIMARY KEY (`idParceiro`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parceiro`
--

LOCK TABLES `parceiro` WRITE;
/*!40000 ALTER TABLE `parceiro` DISABLE KEYS */;
INSERT INTO `parceiro` VALUES (1,'Parceiro A','12345678000101','parceiroa@example.com','senha123','Tipo A','Endereço A','Razão A',1),(2,'Parceiro B','23456789000102','parceirob@example.com','senha123','Tipo B','Endereço B','Razão B',1),(3,'Parceiro C','34567890000103','parceiroc@example.com','senha123','Tipo C','Endereço C','Razão C',1),(6,'Parceiro F','67890000000106','parceirof@example.com','senha123','Tipo F','Endereço F','Razão F',1);
/*!40000 ALTER TABLE `parceiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidodoacao`
--

DROP TABLE IF EXISTS `pedidodoacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidodoacao` (
  `idPedidoDoacao` int NOT NULL AUTO_INCREMENT,
  `usuario_idusuario` int NOT NULL,
  `parceiro_idParceiro` int NOT NULL,
  `dataPedido` date NOT NULL,
  `dataAceite` date DEFAULT NULL,
  `dataEntregue` date DEFAULT NULL,
  PRIMARY KEY (`idPedidoDoacao`),
  KEY `fk_pedidoDoacao_usuario1_idx` (`usuario_idusuario`),
  KEY `fk_pedidoDoacao_parceiro1_idx` (`parceiro_idParceiro`),
  CONSTRAINT `fk_pedidoDoacao_parceiro1` FOREIGN KEY (`parceiro_idParceiro`) REFERENCES `parceiro` (`idParceiro`),
  CONSTRAINT `fk_pedidoDoacao_usuario1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidodoacao`
--

LOCK TABLES `pedidodoacao` WRITE;
/*!40000 ALTER TABLE `pedidodoacao` DISABLE KEYS */;
INSERT INTO `pedidodoacao` VALUES (1,1,1,'2023-01-01','2023-01-02','2023-01-05'),(2,2,2,'2023-01-03','2023-01-04',NULL),(3,3,3,'2023-01-05','2023-01-06','2023-01-10');
/*!40000 ALTER TABLE `pedidodoacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sacola`
--

DROP TABLE IF EXISTS `sacola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sacola` (
  `idSacolaDoacao` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(400) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `parceiro_idParceiro` int NOT NULL,
  PRIMARY KEY (`idSacolaDoacao`),
  KEY `fk_sacolaDoacao_parceiro1_idx` (`parceiro_idParceiro`),
  CONSTRAINT `fk_sacolaDoacao_parceiro1` FOREIGN KEY (`parceiro_idParceiro`) REFERENCES `parceiro` (`idParceiro`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sacola`
--

LOCK TABLES `sacola` WRITE;
/*!40000 ALTER TABLE `sacola` DISABLE KEYS */;
INSERT INTO `sacola` VALUES (1,'Descrição Sacola A','Sacola A',1),(2,'Descrição Sacola B','Sacola B',2),(3,'Descrição Sacola C','Sacola C',3),(6,'Descrição Sacola F','Sacola F',6);
/*!40000 ALTER TABLE `sacola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sacolapedido`
--

DROP TABLE IF EXISTS `sacolapedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sacolapedido` (
  `pedidoDoacao_idPedidoDoacao` int NOT NULL,
  `sacolaDoacao_idSacolaDoacao` int NOT NULL,
  PRIMARY KEY (`pedidoDoacao_idPedidoDoacao`,`sacolaDoacao_idSacolaDoacao`),
  KEY `fk_sacolaDoacao_pedidoDoacao1_idx` (`pedidoDoacao_idPedidoDoacao`),
  KEY `fk_sacolaPedido_sacolaDoacao1_idx` (`sacolaDoacao_idSacolaDoacao`),
  CONSTRAINT `fk_sacolaDoacao_pedidoDoacao10` FOREIGN KEY (`pedidoDoacao_idPedidoDoacao`) REFERENCES `pedidodoacao` (`idPedidoDoacao`),
  CONSTRAINT `fk_sacolaPedido_sacolaDoacao1` FOREIGN KEY (`sacolaDoacao_idSacolaDoacao`) REFERENCES `sacola` (`idSacolaDoacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sacolapedido`
--

LOCK TABLES `sacolapedido` WRITE;
/*!40000 ALTER TABLE `sacolapedido` DISABLE KEYS */;
INSERT INTO `sacolapedido` VALUES (1,1),(2,2),(3,3);
/*!40000 ALTER TABLE `sacolapedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitacaocadastro`
--

DROP TABLE IF EXISTS `solicitacaocadastro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitacaocadastro` (
  `idsolicitacaoCadastro` int NOT NULL AUTO_INCREMENT,
  `revisaoAprovada` tinyint DEFAULT '0',
  `dataSolicitacao` date DEFAULT NULL,
  `dataAprovacao` date DEFAULT NULL,
  `parceiro_idParceiro` int DEFAULT NULL,
  PRIMARY KEY (`idsolicitacaoCadastro`),
  KEY `fk_solicitacaoCadastro_parceiro_idx` (`parceiro_idParceiro`),
  CONSTRAINT `fk_solicitacaoCadastro_parceiro` FOREIGN KEY (`parceiro_idParceiro`) REFERENCES `parceiro` (`idParceiro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitacaocadastro`
--

LOCK TABLES `solicitacaocadastro` WRITE;
/*!40000 ALTER TABLE `solicitacaocadastro` DISABLE KEYS */;
INSERT INTO `solicitacaocadastro` VALUES (1,1,'2023-01-01','2023-01-02',1),(2,0,'2023-01-03',NULL,2),(3,1,'2023-01-05','2023-01-06',3);
/*!40000 ALTER TABLE `solicitacaocadastro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idusuario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idusuario`),
  UNIQUE KEY `cpf_UNIQUE` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Alice Silva','12345678901','alice@example.com','senha123'),(2,'Bruno Souza','23456789012','bruno@example.com','senha123'),(3,'Carla Dias','34567890123','carla@example.com','senha123'),(4,'Daniel Costa','45678901234','daniel@example.com','senha123'),(5,'Elisa Moreira','56789012345','elisa@example.com','senha123'),(10,'Inês Ferreira','90123456789','ines@example.com','senha123'),(11,'João Almeida','01234567890','joao@example.com','senha123');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-22 19:48:37
