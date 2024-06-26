-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `consulta`
--

DROP TABLE IF EXISTS `consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consulta` (
  `id_consulta` int NOT NULL AUTO_INCREMENT,
  `data` datetime NOT NULL,
  `id_medico` int NOT NULL,
  `id_paciente` int NOT NULL,
  `valor_consulta` int NOT NULL,
  `convenio` text NOT NULL,
  `especialidade` text NOT NULL,
  PRIMARY KEY (`id_consulta`),
  KEY `id_paciente` (`id_paciente`),
  CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta`
--

LOCK TABLES `consulta` WRITE;
/*!40000 ALTER TABLE `consulta` DISABLE KEYS */;
INSERT INTO `consulta` VALUES (21,'2015-01-15 09:00:00',1,1,150,'Convenio A','Cardiologia'),(22,'2016-02-20 10:00:00',2,2,200,'Convenio B','Pediatria'),(23,'2017-03-25 11:00:00',3,3,180,'Convenio C','Ortopedia'),(24,'2018-04-30 12:00:00',4,4,170,'Convenio D','Ginecologia'),(25,'2019-05-05 13:00:00',5,5,160,'Convenio A','Cardiologia'),(26,'2020-06-10 14:00:00',1,6,150,'Convenio B','Cardiologia'),(27,'2021-07-15 15:00:00',2,7,200,'Convenio C','Pediatria'),(28,'2015-08-20 16:00:00',3,8,180,'Convenio D','Ortopedia'),(29,'2016-09-25 17:00:00',4,9,170,'Convenio A','Ginecologia'),(30,'2017-10-30 18:00:00',5,10,160,'Convenio B','Cardiologia'),(31,'2018-11-05 09:00:00',1,11,150,'Convenio C','Cardiologia'),(32,'2019-12-10 10:00:00',2,12,200,'Convenio D','Pediatria'),(33,'2020-01-15 11:00:00',3,13,180,'Convenio A','Ortopedia'),(34,'2021-02-20 12:00:00',4,14,170,'Convenio B','Ginecologia'),(35,'2015-03-25 13:00:00',5,15,160,'Convenio C','Cardiologia'),(36,'2016-04-30 14:00:00',1,1,150,'Convenio D','Cardiologia'),(37,'2017-05-05 15:00:00',2,2,200,'Convenio A','Pediatria'),(38,'2018-06-10 16:00:00',3,3,180,'Convenio B','Ortopedia'),(39,'2019-07-15 17:00:00',4,4,170,'Convenio C','Ginecologia'),(40,'2020-08-20 18:00:00',5,5,160,'Convenio D','Cardiologia'),(41,'2015-01-10 10:00:00',1,1,150,'Convenio A','Cardiologia'),(42,'2015-02-15 11:00:00',2,2,200,'Convenio B','Pediatria'),(43,'2015-03-20 14:00:00',3,3,180,'Convenio C','Ortopedia'),(44,'2015-04-25 15:30:00',4,4,170,'Convenio D','Ginecologia'),(45,'2015-05-30 16:45:00',5,5,160,'Convenio A','Cardiologia'),(46,'2015-06-05 10:30:00',1,6,150,'Convenio B','Pediatria'),(47,'2015-07-10 11:15:00',2,7,200,'Convenio C','Ortopedia'),(48,'2015-08-15 14:45:00',3,8,180,'Convenio D','Ginecologia'),(49,'2015-09-20 15:00:00',4,9,170,'Convenio A','Cardiologia'),(50,'2015-10-25 16:30:00',5,10,160,'Convenio B','Pediatria'),(51,'2015-11-30 17:00:00',1,11,150,'Convenio C','Ortopedia'),(52,'2016-01-05 10:00:00',2,12,200,'Convenio D','Ginecologia'),(53,'2016-02-10 11:30:00',3,13,180,'Convenio A','Cardiologia'),(54,'2016-03-15 14:00:00',4,14,170,'Convenio B','Pediatria'),(55,'2016-04-20 15:30:00',5,15,160,'Convenio C','Ortopedia'),(56,'2016-05-25 16:45:00',1,1,150,'Convenio D','Ginecologia'),(57,'2016-06-30 10:30:00',2,2,200,'Convenio A','Cardiologia'),(58,'2016-07-05 11:15:00',3,3,180,'Convenio B','Pediatria'),(59,'2016-08-10 14:45:00',4,4,170,'Convenio C','Ortopedia'),(60,'2016-09-15 15:00:00',5,5,160,'Convenio D','Ginecologia');
/*!40000 ALTER TABLE `consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `convenio`
--

DROP TABLE IF EXISTS `convenio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `convenio` (
  `id_convenio` int NOT NULL AUTO_INCREMENT,
  `nome` text NOT NULL,
  `CNPJ` varchar(20) NOT NULL,
  `tempo_de_carencia` date NOT NULL,
  PRIMARY KEY (`id_convenio`),
  UNIQUE KEY `CNPJ` (`CNPJ`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convenio`
--

LOCK TABLES `convenio` WRITE;
/*!40000 ALTER TABLE `convenio` DISABLE KEYS */;
INSERT INTO `convenio` VALUES (9,'Convenio A','12345678901234','2023-01-30'),(10,'Convenio B','23456789012345','2023-02-28'),(11,'Convenio C','34567890123456','2023-03-15'),(12,'Convenio D','45678901234567','2023-04-20');
/*!40000 ALTER TABLE `convenio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfermeiro`
--

DROP TABLE IF EXISTS `enfermeiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enfermeiro` (
  `id_enfermeiro` int NOT NULL AUTO_INCREMENT,
  `nome_enfermeiro` varchar(100) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `cre` varchar(20) NOT NULL,
  PRIMARY KEY (`id_enfermeiro`),
  UNIQUE KEY `cpf` (`cpf`),
  UNIQUE KEY `cre` (`cre`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermeiro`
--

LOCK TABLES `enfermeiro` WRITE;
/*!40000 ALTER TABLE `enfermeiro` DISABLE KEYS */;
INSERT INTO `enfermeiro` VALUES (1,'Joana Silva','123.456.789-01','123456'),(2,'Carlos Santos','234.567.890-12','234567'),(3,'Maria Oliveira','345.678.901-23','345678'),(4,'Pedro Souza','456.789.012-34','456789'),(5,'Ana Pereira','567.890.123-45','567890'),(6,'José Lima','678.901.234-56','678901'),(7,'Mariana Costa','789.012.345-67','789012'),(8,'Lucas Almeida','890.123.456-78','890123'),(9,'Juliana Ferreira','901.234.567-89','901234'),(10,'Paulo Santos','012.345.678-90','012345');
/*!40000 ALTER TABLE `enfermeiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidade`
--

DROP TABLE IF EXISTS `especialidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidade` (
  `id_especialidade` int NOT NULL AUTO_INCREMENT,
  `nome` text NOT NULL,
  PRIMARY KEY (`id_especialidade`),
  UNIQUE KEY `id_especialidade` (`id_especialidade`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidade`
--

LOCK TABLES `especialidade` WRITE;
/*!40000 ALTER TABLE `especialidade` DISABLE KEYS */;
INSERT INTO `especialidade` VALUES (1,'Cardiologia'),(2,'Neurologia'),(3,'Ortopedia'),(4,' Pediatria'),(5,'clínica geral'),(6,'gastrenterologia'),(7,'dermatologia');
/*!40000 ALTER TABLE `especialidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internacao`
--

DROP TABLE IF EXISTS `internacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internacao` (
  `id_internacao` int NOT NULL AUTO_INCREMENT,
  `data_entrada` datetime NOT NULL,
  `data_prev_alta` datetime NOT NULL,
  `data_alta` datetime NOT NULL,
  `procedimento` text NOT NULL,
  `id_medico` int NOT NULL,
  `id_quarto` int NOT NULL,
  `id_enfermeiro` int NOT NULL,
  PRIMARY KEY (`id_internacao`),
  KEY `id_medico` (`id_medico`),
  KEY `id_quarto` (`id_quarto`),
  KEY `id_enfermeiro` (`id_enfermeiro`),
  CONSTRAINT `internacao_ibfk_1` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id_medico`),
  CONSTRAINT `internacao_ibfk_2` FOREIGN KEY (`id_quarto`) REFERENCES `quarto` (`id_quarto`),
  CONSTRAINT `internacao_ibfk_3` FOREIGN KEY (`id_enfermeiro`) REFERENCES `enfermeiro` (`id_enfermeiro`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internacao`
--

LOCK TABLES `internacao` WRITE;
/*!40000 ALTER TABLE `internacao` DISABLE KEYS */;
INSERT INTO `internacao` VALUES (6,'2023-01-10 08:00:00','2023-01-15 10:00:00','2023-01-16 12:00:00','Cirurgia de apêndice',1,1,1),(7,'2022-08-20 10:30:00','2022-08-25 09:00:00','2022-08-27 14:00:00','Tratamento de fratura',3,2,2),(8,'2021-12-01 12:00:00','2021-12-05 08:00:00','2021-12-07 16:00:00','Internação por pneumonia',2,3,3),(9,'2020-10-05 09:00:00','2020-10-10 11:00:00','2020-10-12 13:00:00','Cirurgia de emergência',4,1,4),(10,'2019-11-15 11:30:00','2019-11-20 07:30:00','2019-11-25 15:00:00','Internação para observação',5,2,5);
/*!40000 ALTER TABLE `internacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico` (
  `id_medico` int NOT NULL AUTO_INCREMENT,
  `nome` text NOT NULL,
  `endereco` text NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `tipo_de_medico` text NOT NULL,
  `id_especialidade` int NOT NULL,
  `status` enum('ativo','inativo') DEFAULT 'ativo',
  PRIMARY KEY (`id_medico`),
  KEY `id_especialidade` (`id_especialidade`),
  CONSTRAINT `medico_ibfk_1` FOREIGN KEY (`id_especialidade`) REFERENCES `especialidade` (`id_especialidade`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
INSERT INTO `medico` VALUES (1,'Dr. João Silva','Rua A, 123','(11) 9999-8888','Cardiologista',1,'inativo'),(2,'Dra. Maria Santos','Av. B, 456','(11) 7777-6666','Ortopedista',2,'ativo'),(3,'Dr. Pedro Oliveira','Rua C, 789','(11) 5555-4444','Pediatria',3,'ativo'),(4,'Dra. Ana Costa','Av. D, 321','(11) 3333-2222','Ginecologista',4,'ativo'),(5,'Dr. Luiz Souza','Rua E, 654','(11) 1111-0000','Neurologista',5,'inativo'),(6,'Dra. Carla Pereira','Av. F, 987','(11) 8888-9999','Dermatologista',6,'ativo'),(7,'Dr. Marcos Ferreira','Rua G, 234','(11) 2222-3333','Oftalmologista',7,'ativo'),(8,'Dra. Juliana Martins','Av. H, 567','(11) 4444-5555','Oncologista',1,'ativo'),(9,'Dr. Rafael Costa','Rua I, 890','(11) 6666-7777','Ortopedista',2,'ativo'),(10,'Dra. Fernanda Oliveira','Av. J, 1234','(11) 9999-1111','Cardiologista',3,'ativo');
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico_especialidade`
--

DROP TABLE IF EXISTS `medico_especialidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico_especialidade` (
  `id_medico` int NOT NULL,
  `id_especialidade` int NOT NULL,
  PRIMARY KEY (`id_medico`,`id_especialidade`),
  KEY `id_especialidade` (`id_especialidade`),
  CONSTRAINT `medico_especialidade_ibfk_1` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id_medico`),
  CONSTRAINT `medico_especialidade_ibfk_2` FOREIGN KEY (`id_especialidade`) REFERENCES `especialidade` (`id_especialidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico_especialidade`
--

LOCK TABLES `medico_especialidade` WRITE;
/*!40000 ALTER TABLE `medico_especialidade` DISABLE KEYS */;
INSERT INTO `medico_especialidade` VALUES (1,1),(10,1),(5,2),(2,3),(9,3),(3,4),(7,5),(8,5),(6,6),(4,7);
/*!40000 ALTER TABLE `medico_especialidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `id_paciente` int NOT NULL AUTO_INCREMENT,
  `nome` text NOT NULL,
  `data_nascimento` date NOT NULL,
  `endereco` text NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `RG` varchar(20) NOT NULL,
  `id_convenio` int NOT NULL,
  PRIMARY KEY (`id_paciente`),
  UNIQUE KEY `CPF` (`CPF`),
  UNIQUE KEY `RG` (`RG`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1,'Alice Moura','1980-01-01','Rua A, 123','1111111111','alice.moura@example.com','12345678901','MG1234567',9),(2,'Bruno Nogueira','1985-02-02','Rua B, 234','2222222222','bruno.nogueira@example.com','23456789012','SP2345678',10),(3,'Carla Figueiredo','1990-03-03','Rua C, 345','3333333333','carla.figueiredo@example.com','34567890123','RJ3456789',11),(4,'Daniel Martins','1995-04-04','Rua D, 456','4444444444','daniel.martins@example.com','45678901234','ES4567890',12),(5,'Evelyn Silva','2000-05-05','Rua E, 567','5555555555','evelyn.silva@example.com','56789012345','MG5678901',9),(6,'Felipe Costa','1975-06-06','Rua F, 678','6666666666','felipe.costa@example.com','67890123456','SP6789012',10),(7,'Gabriela Lima','1988-07-07','Rua G, 789','7777777777','gabriela.lima@example.com','78901234567','RJ7890123',11),(8,'Henrique Barbosa','1992-08-08','Rua H, 890','8888888888','henrique.barbosa@example.com','89012345678','ES8901234',12),(9,'Isabela Santos','1978-09-09','Rua I, 901','9999999999','isabela.santos@example.com','90123456789','MG9012345',9),(10,'João Mendes','1983-10-10','Rua J, 101','1010101010','joao.mendes@example.com','01234567890','SP0123456',10),(11,'Karen Ferreira','1995-11-11','Rua K, 202','1111111112','karen.ferreira@example.com','11234567890','RJ1123456',3),(12,'Lucas Rocha','1989-12-12','Rua L, 303','1212121212','lucas.rocha@example.com','12234567890','ES1223456',4),(13,'Mariana Fernandes','1977-01-13','Rua M, 404','1313131313','mariana.fernandes@example.com','13234567890','MG1323456',1),(14,'Nicolas Teixeira','1986-02-14','Rua N, 505','1414141414','nicolas.teixeira@example.com','14234567890','SP1423456',2),(15,'Olivia Silva','1993-03-15','Rua O, 606','1515151515','olivia.silva@example.com','15234567890','RJ1523456',3);
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quarto`
--

DROP TABLE IF EXISTS `quarto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quarto` (
  `id_quarto` int NOT NULL AUTO_INCREMENT,
  `numero` int NOT NULL,
  `tipo` text NOT NULL,
  `id_tipo_quarto` int NOT NULL,
  PRIMARY KEY (`id_quarto`),
  KEY `id_tipo_quarto` (`id_tipo_quarto`),
  CONSTRAINT `quarto_ibfk_1` FOREIGN KEY (`id_tipo_quarto`) REFERENCES `tipo_quarto` (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quarto`
--

LOCK TABLES `quarto` WRITE;
/*!40000 ALTER TABLE `quarto` DISABLE KEYS */;
INSERT INTO `quarto` VALUES (1,1,'Apartamento',1),(2,2,'Quarto Duplo',2),(3,3,'Enfermaria',3),(4,4,'Apartamento',1),(5,5,'Enfermaria',3),(6,6,'Quarto Duplo',2),(7,7,'Apartamento',1),(8,8,'Quarto Duplo',2),(9,9,'Enfermaria',3),(10,10,'Enfermaria',3);
/*!40000 ALTER TABLE `quarto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receita`
--

DROP TABLE IF EXISTS `receita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receita` (
  `id_receita` int NOT NULL AUTO_INCREMENT,
  `id_medico` int NOT NULL,
  `medicamento` text NOT NULL,
  `quantidade` decimal(10,0) NOT NULL,
  `instrucoes_de_uso` text NOT NULL,
  PRIMARY KEY (`id_receita`),
  KEY `id_medico` (`id_medico`),
  CONSTRAINT `receita_ibfk_1` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id_medico`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receita`
--

LOCK TABLES `receita` WRITE;
/*!40000 ALTER TABLE `receita` DISABLE KEYS */;
INSERT INTO `receita` VALUES (1,1,'Medicamento A',10,'Tomar 1 comprimido a cada 8 horas'),(2,10,'Medicamento B',20,'Tomar 1 comprimido a cada 12 horas'),(3,2,'Medicamento C',15,'Tomar 1 comprimido após o almoço'),(4,9,'Medicamento D',30,'Tomar 1 comprimido antes de dormir'),(5,3,'Medicamento E',10,'Aplicar pomada 2 vezes ao dia'),(6,4,'Medicamento F',25,'Tomar 2 comprimidos de manhã'),(7,5,'Medicamento G',20,'Tomar 1 comprimido a cada 6 horas'),(8,6,'Medicamento H',10,'Tomar 1 comprimido a cada 4 horas'),(9,6,'Medicamento I',20,'Tomar 1 comprimido antes do café da manhã'),(10,1,'Medicamento J',15,'Tomar 1 comprimido após o jantar'),(11,2,'Medicamento K',30,'Tomar 1 comprimido ao acordar'),(12,8,'Medicamento L',20,'Tomar 1 comprimido antes de dormir'),(13,3,'Medicamento M',10,'Aplicar pomada 3 vezes ao dia'),(14,4,'Medicamento N',15,'Tomar 2 comprimidos a cada 12 horas'),(15,7,'Medicamento O',25,'Tomar 1 comprimido a cada 6 horas'),(16,5,'Medicamento P',20,'Tomar 1 comprimido após o café da manhã'),(17,6,'Medicamento Q',10,'Tomar 1 comprimido antes do jantar'),(18,1,'Medicamento R',15,'Aplicar pomada antes de dormir'),(19,2,'Medicamento S',20,'Tomar 1 comprimido ao acordar'),(20,3,'Medicamento T',10,'Tomar 1 comprimido a cada 6 horas'),(21,4,'Medicamento U',30,'Tomar 2 comprimidos de manhã'),(22,7,'Medicamento V',25,'Tomar 1 comprimido antes do almoço'),(23,5,'Medicamento W',20,'Tomar 1 comprimido a cada 8 horas'),(24,6,'Medicamento X',10,'Tomar 1 comprimido antes de dormir'),(25,10,'Medicamento Y',15,'Aplicar pomada 2 vezes ao dia'),(26,2,'Medicamento Z',20,'Tomar 1 comprimido após o almoço'),(27,9,'Medicamento AA',10,'Tomar 1 comprimido antes de dormir'),(28,3,'Medicamento BB',30,'Tomar 2 comprimidos a cada 12 horas'),(29,8,'Medicamento CC',25,'Tomar 1 comprimido a cada 6 horas'),(30,1,'Medicamento DD',20,'Tomar 1 comprimido após o café da manhã'),(31,6,'Medicamento EE',10,'Tomar 1 comprimido antes do jantar'),(32,7,'Medicamento FF',15,'Aplicar pomada antes de dormir'),(33,4,'Medicamento GG',20,'Tomar 1 comprimido ao acordar'),(34,5,'Medicamento HH',10,'Tomar 1 comprimido a cada 6 horas'),(35,10,'Medicamento II',30,'Tomar 2 comprimidos de manhã'),(36,2,'Medicamento JJ',25,'Tomar 1 comprimido antes do almoço'),(37,9,'Medicamento KK',20,'Tomar 1 comprimido a cada 8 horas'),(38,3,'Medicamento LL',10,'Tomar 1 comprimido antes de dormir'),(39,4,'Medicamento MM',15,'Aplicar pomada 2 vezes ao dia'),(40,5,'Medicamento NN',20,'Tomar 1 comprimido após o almoço');
/*!40000 ALTER TABLE `receita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_quarto`
--

DROP TABLE IF EXISTS `tipo_quarto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_quarto` (
  `id_tipo` int NOT NULL,
  `descricao` text NOT NULL,
  `valor_diaria` int NOT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_quarto`
--

LOCK TABLES `tipo_quarto` WRITE;
/*!40000 ALTER TABLE `tipo_quarto` DISABLE KEYS */;
INSERT INTO `tipo_quarto` VALUES (1,'Apartamento',350),(2,'Quarto Duplo',250),(3,'Enfermaria',150);
/*!40000 ALTER TABLE `tipo_quarto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-26 17:14:35
