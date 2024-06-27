-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: clinica_medica
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `agenda_consulta`
--

DROP TABLE IF EXISTS `agenda_consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agenda_consulta` (
  `Registro_Agenda` int NOT NULL AUTO_INCREMENT,
  `Codigo_Usuario` int NOT NULL,
  `Codigo_Paciente` int NOT NULL,
  `Codigo_Medico` int NOT NULL,
  `Data` date DEFAULT NULL,
  `Hora` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Retorno` varchar(1) COLLATE utf8mb4_general_ci DEFAULT 'N',
  `Cancelado` varchar(1) COLLATE utf8mb4_general_ci DEFAULT 'N',
  `Motivo_Cancelamento` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`Registro_Agenda`),
  KEY `fk_agenda_consulta_pacientes1_idx` (`Codigo_Paciente`),
  KEY `fk_agenda_consulta_medicos1_idx` (`Codigo_Medico`),
  KEY `fk_agenda_consulta_usuarios1_idx` (`Codigo_Usuario`),
  CONSTRAINT `fk_agenda_consulta_medicos1` FOREIGN KEY (`Codigo_Medico`) REFERENCES `medicos` (`Codigo_Medico`),
  CONSTRAINT `fk_agenda_consulta_pacientes1` FOREIGN KEY (`Codigo_Paciente`) REFERENCES `pacientes` (`Codigo_Paciente`),
  CONSTRAINT `fk_agenda_consulta_usuarios1` FOREIGN KEY (`Codigo_Usuario`) REFERENCES `usuarios` (`Registro_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agenda_consulta`
--

LOCK TABLES `agenda_consulta` WRITE;
/*!40000 ALTER TABLE `agenda_consulta` DISABLE KEYS */;
/*!40000 ALTER TABLE `agenda_consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `convenios`
--

DROP TABLE IF EXISTS `convenios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `convenios` (
  `Codigo_Convenio` int NOT NULL AUTO_INCREMENT,
  `Empresa_Convenio` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CNPJ` varchar(18) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Telefone` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Codigo_Convenio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convenios`
--

LOCK TABLES `convenios` WRITE;
/*!40000 ALTER TABLE `convenios` DISABLE KEYS */;
/*!40000 ALTER TABLE `convenios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidades`
--

DROP TABLE IF EXISTS `especialidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidades` (
  `Codigo_Especialidade` int NOT NULL AUTO_INCREMENT,
  `Descricao_Especialidade` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Codigo_Especialidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidades`
--

LOCK TABLES `especialidades` WRITE;
/*!40000 ALTER TABLE `especialidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `especialidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `Codigo_Funcionario` int NOT NULL AUTO_INCREMENT,
  `Nome_Completo` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Numero_RG` varchar(12) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Orgao_Emissor` varchar(6) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Numero_CPF` varchar(14) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Endereco` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Numero` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Complemento` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Sexo` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Bairro` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Cidade` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Estado` varchar(2) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Telefone` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Celular` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Numero_CTPS` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Numero_PIS` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Data_Nascimento` date DEFAULT NULL,
  PRIMARY KEY (`Codigo_Funcionario`),
  KEY `Idx_Nome` (`Nome_Completo`),
  KEY `Idx_RG` (`Numero_RG`),
  KEY `Idx_CPF` (`Numero_CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicos`
--

DROP TABLE IF EXISTS `medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicos` (
  `Codigo_Medico` int NOT NULL AUTO_INCREMENT,
  `Nome_Medico` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Codigo_Especialidade` int NOT NULL,
  `CRM` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Codigo_Medico`),
  KEY `fk_medicos_especialidades1_idx` (`Codigo_Especialidade`),
  CONSTRAINT `fk_medicos_especialidades1` FOREIGN KEY (`Codigo_Especialidade`) REFERENCES `especialidades` (`Codigo_Especialidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicos`
--

LOCK TABLES `medicos` WRITE;
/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `Codigo_Paciente` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Numero_RG` varchar(12) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Orgao_Emissor` varchar(6) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Numero_CPF` varchar(14) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Endereco` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Numero` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Complemento` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Bairro` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Cidade` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Estado` varchar(2) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Telefone` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Celular` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Data_Nascimento` date DEFAULT NULL,
  `Sexo` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Tem_Convenio` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Codigo_Convenio` int NOT NULL,
  `Senha_Acesso` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Codigo_Paciente`),
  KEY `fk_pacientes_convenios1_idx` (`Codigo_Convenio`),
  CONSTRAINT `fk_pacientes_convenios1` FOREIGN KEY (`Codigo_Convenio`) REFERENCES `convenios` (`Codigo_Convenio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prontuario_paciente`
--

DROP TABLE IF EXISTS `prontuario_paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prontuario_paciente` (
  `Registro` int NOT NULL AUTO_INCREMENT,
  `Registro_Agenda` int NOT NULL,
  `Historico` text COLLATE utf8mb4_general_ci,
  `Receituario` text COLLATE utf8mb4_general_ci,
  `Exames` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`Registro`),
  KEY `fk_prontuario_paciente_agenda_consulta1_idx` (`Registro_Agenda`),
  CONSTRAINT `fk_prontuario_paciente_agenda_consulta1` FOREIGN KEY (`Registro_Agenda`) REFERENCES `agenda_consulta` (`Registro_Agenda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prontuario_paciente`
--

LOCK TABLES `prontuario_paciente` WRITE;
/*!40000 ALTER TABLE `prontuario_paciente` DISABLE KEYS */;
/*!40000 ALTER TABLE `prontuario_paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `Registro_Usuario` int NOT NULL AUTO_INCREMENT,
  `Identificacao_Usuario` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Senha_Acesso` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Cadastro_Funcionario` varchar(1) COLLATE utf8mb4_general_ci DEFAULT 'N',
  `Cadastro_Usuario` varchar(1) COLLATE utf8mb4_general_ci DEFAULT 'N',
  `Cadastro_Paciente` varchar(1) COLLATE utf8mb4_general_ci DEFAULT 'N',
  `Cadastro_Especialidade` varchar(1) COLLATE utf8mb4_general_ci DEFAULT 'N',
  `Cadastro_Medico` varchar(1) COLLATE utf8mb4_general_ci DEFAULT 'N',
  `Cadastro_Convenio` varchar(1) COLLATE utf8mb4_general_ci DEFAULT 'N',
  `Agendamento_Consulta` varchar(1) COLLATE utf8mb4_general_ci DEFAULT 'N',
  `Cancelamento_Consulta` varchar(1) COLLATE utf8mb4_general_ci DEFAULT 'N',
  `Modulo_Administrativo` varchar(1) COLLATE utf8mb4_general_ci DEFAULT 'N',
  `Modulo_Agendamento` varchar(1) COLLATE utf8mb4_general_ci DEFAULT 'N',
  `Modulo_Atendimento` varchar(1) COLLATE utf8mb4_general_ci DEFAULT 'N',
  PRIMARY KEY (`Registro_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vincula_usuario`
--

DROP TABLE IF EXISTS `vincula_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vincula_usuario` (
  `Codigo_Vinculo` int NOT NULL AUTO_INCREMENT,
  `Codigo_Funcionario` int NOT NULL,
  `Registro_Usuario` int NOT NULL,
  PRIMARY KEY (`Codigo_Vinculo`),
  KEY `fk_vincula_usuario_funcionarios1_idx` (`Codigo_Funcionario`),
  KEY `fk_vincula_usuario_usuarios1_idx` (`Registro_Usuario`),
  CONSTRAINT `fk_vincula_usuario_funcionarios1` FOREIGN KEY (`Codigo_Funcionario`) REFERENCES `funcionarios` (`Codigo_Funcionario`),
  CONSTRAINT `fk_vincula_usuario_usuarios1` FOREIGN KEY (`Registro_Usuario`) REFERENCES `usuarios` (`Registro_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vincula_usuario`
--

LOCK TABLES `vincula_usuario` WRITE;
/*!40000 ALTER TABLE `vincula_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `vincula_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'clinica_medica'
--

--
-- Dumping routines for database 'clinica_medica'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-24  3:15:56
