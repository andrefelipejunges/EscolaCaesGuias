-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Jul-2023 às 05:12
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `caes`
--
CREATE DATABASE IF NOT EXISTS `caes` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `caes`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `caes`
--

CREATE TABLE `caes` (
  `ID` int(10) NOT NULL,
  `NOME` varchar(30) NOT NULL,
  `RACA` varchar(30) NOT NULL,
  `IDADE` int(3) NOT NULL,
  `PESO` int(3) NOT NULL,
  `NOME_PAI` varchar(30) NOT NULL,
  `NOME_MAE` varchar(30) NOT NULL,
  `DATA_CADASTRO` date NOT NULL,
  `SEXO` varchar(1) NOT NULL,
  `FOTO` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Cães';

--
-- Extraindo dados da tabela `caes`
--

INSERT INTO `caes` (`ID`, `NOME`, `RACA`, `IDADE`, `PESO`, `NOME_PAI`, `NOME_MAE`, `DATA_CADASTRO`, `SEXO`, `FOTO`) VALUES
(1, 'Max', 'Labrador', 3, 25, 'Rocky', 'Luna', '2022-01-01', 'M', NULL),
(2, 'Bella', 'Golden Retriever', 4, 30, 'Max', 'Luna', '2021-12-15', 'F', NULL),
(3, 'Charlie', 'Bulldog', 2, 20, 'Max', 'Luna', '2023-05-10', 'M', NULL),
(4, 'Lucy', 'Beagle', 5, 18, 'Buddy', 'Daisy', '2020-09-20', 'F', NULL),
(5, 'Daisy', 'Poodle', 1, 12, 'Rocky', 'Luna', '2022-03-05', 'F', NULL),
(6, 'Cooper', 'Schnauzer', 4, 22, 'Max', 'Luna', '2021-11-11', 'M', NULL),
(7, 'Lola', 'Chihuahua', 3, 8, 'Buddy', 'Daisy', '2023-01-30', 'F', NULL),
(8, 'Rocky', 'Labrador', 2, 26, 'Max', 'Luna', '2020-10-25', 'M', NULL),
(9, 'Sadie', 'Boxer', 6, 28, 'Buddy', 'Daisy', '2022-08-17', 'F', NULL),
(10, 'Milo', 'Shih Tzu', 1, 10, 'Rocky', 'Luna', '2023-06-05', 'M', NULL),
(11, 'Molly', 'Husky', 4, 24, 'Max', 'Luna', '2021-12-10', 'F', NULL),
(12, 'Buddy', 'Golden Retriever', 5, 32, 'Max', 'Luna', '2020-09-05', 'M', NULL),
(13, 'Zoe', 'Bulldog', 2, 19, 'Buddy', 'Daisy', '2022-04-20', 'F', NULL),
(14, 'Bailey', 'Poodle', 3, 14, 'Rocky', 'Luna', '2023-02-15', 'M', NULL),
(15, 'Luna', 'Labrador', 1, 28, 'Max', 'Luna', '2021-10-30', 'F', NULL),
(16, 'Charlie', 'Beagle', 6, 16, 'Rocky', 'Luna', '2020-07-12', 'M', NULL),
(17, 'Sophie', 'Chihuahua', 4, 9, 'Buddy', 'Daisy', '2022-05-18', 'F', NULL),
(18, 'Oliver', 'Schnauzer', 2, 23, 'Rocky', 'Luna', '2021-11-28', 'M', NULL),
(19, 'Mia', 'Boxer', 3, 27, 'Max', 'Luna', '2020-12-06', 'F', NULL),
(20, 'Toby', 'Shih Tzu', 5, 11, 'Buddy', 'Daisy', '2023-03-14', 'M', NULL),
(21, 'Ruby', 'Husky', 1, 21, 'Rocky', 'Luna', '2022-01-02', 'F', NULL),
(22, 'Lucky', 'Golden Retriever', 4, 29, 'Max', 'Luna', '2021-09-09', 'M', NULL),
(23, 'Coco', 'Bulldog', 2, 17, 'Max', 'Luna', '2020-08-16', 'F', NULL),
(24, 'Zeus', 'Poodle', 6, 13, 'Buddy', 'Daisy', '2022-07-25', 'M', NULL),
(25, 'Lily', 'Labrador', 1, 30, 'Rocky', 'Luna', '2023-05-01', 'F', NULL),
(26, 'Duke', 'Beagle', 5, 15, 'Max', 'Luna', '2021-10-18', 'M', NULL),
(27, 'Maggie', 'Chihuahua', 3, 10, 'Buddy', 'Daisy', '2020-11-30', 'F', NULL),
(28, 'Bear', 'Schnauzer', 2, 24, 'Rocky', 'Luna', '2022-04-08', 'M', NULL),
(29, 'Coco', 'Boxer', 4, 26, 'Max', 'Luna', '2021-08-20', 'F', NULL),
(30, 'Oscar', 'Shih Tzu', 1, 9, 'Buddy', 'Daisy', '2023-01-10', 'M', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contatos`
--

CREATE TABLE `contatos` (
  `id` int(11) NOT NULL,
  `nome` varchar(32) NOT NULL,
  `email` varchar(32) DEFAULT NULL,
  `telefone` varchar(14) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `endereco` varchar(65) DEFAULT NULL,
  `bairro` varchar(32) DEFAULT NULL,
  `cidade` varchar(32) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `data_cadastro` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `contatos`
--

INSERT INTO `contatos` (`id`, `nome`, `email`, `telefone`, `cep`, `endereco`, `bairro`, `cidade`, `uf`, `data_cadastro`) VALUES
(6, 'Ribamar de Souza', 'ribamar@email.com', '(11) 0011-0022', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-08 21:38:38'),
(7, 'Ribamar Teste', 'ribamar@email.teste', '(02) 0055-0066', '31.255-901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 01:22:56'),
(8, 'Maria Rita', 'maria.rita@email.teste', '(00) 0010-0020', '31255900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 21:30:39'),
(9, 'Pedro Teste', 'pedro@email.teste', '(11) 1000-0001', '31255901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 00:35:19'),
(11, 'Ana Lúcia', 'ana.lucia@email.com', '(00) 9988-7766', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-10 02:25:46'),
(12, 'Teobaldo', 'teobaldo@email.teste', '(99) 8877-6655', '81170-423', 'Rua 1', 'Cidade Industrial', 'Curitiba', 'PR', '2021-04-10 02:26:48'),
(13, 'Fernanda', 'fernanda@teste.email', '(22) 5566-8877', '45061-812', 'Rua 1', 'Campinhos', 'Vitória da Conquista', 'BA', '2021-04-10 02:27:51'),
(14, 'Fernando', 'fernando@email.teste', '(55) 8877-4445', '78300-000', '', '', 'Tangará da Serra', 'MT', '2021-04-10 02:31:04'),
(15, 'Celso Teste', 'celso@email.com', '(99) 8855-6221', '12238-542', 'Rua 1', 'Rio Comprido', 'São José dos Campos', 'SP', '2021-04-10 02:32:06'),
(16, 'Mário Teste', 'mario@teste.email', '(33) 6655-4452', '29260-000', 'Rua Teste, 101', 'Teste', 'Domingos Martins', 'ES', '2021-04-10 02:33:24'),
(17, 'João Paulo', 'joao@paulo.email', '(88) 7744-1122', '37300-000', 'Rua Teste, 101', 'Teste', 'Andrelândia', 'MG', '2021-04-10 02:34:44'),
(18, 'Rita Teste', 'rita@teste.email', '(00) 1144-7755', '49680-000', 'Rua Teste, 900', 'Teste', 'Nossa Senhora da Glória', 'SE', '2021-04-10 02:35:54'),
(19, 'Paiva e Silva', 'paiva@silva.email', '(00) 2558-9464', '08226-021', 'Rua 18 de Abril', 'Cidade Antônio Estevão de Carval', 'São Paulo', 'SP', '2021-04-10 02:37:12'),
(20, 'Ana Beatriz', 'ana.beatriz@email.com', '(32) 1465-4679', '04180-112', 'Travessa 19 de Agosto', 'Jardim Maria Estela', 'São Paulo', 'SP', '2021-04-10 02:37:59'),
(21, 'José Pacheco', 'pacheco@email.com', '(31) 9717-4211', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 02:35:01'),
(22, 'Carlos Teste', 'carlos@teste.email', '(22) 2222-2222', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 02:37:09'),
(23, 'Maria', 'maria@email.com', '(02) 0055-0066', '31.255-900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 04:14:40'),
(24, 'Ribamar de Souza', 'ribamar@email.com', '(11) 0011-0022', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-09 00:38:38'),
(25, 'Ribamar Teste', 'ribamar@email.teste', '(02) 0055-0066', '31.255-901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 04:22:56'),
(26, 'Maria Rita', 'maria.rita@email.teste', '(00) 0010-0020', '31255900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-10 00:30:39'),
(27, 'Pedro Teste', 'pedro@email.teste', '(11) 1000-0001', '31255901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 03:35:19'),
(28, 'Ana Lúcia', 'ana.lucia@email.com', '(00) 9988-7766', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-10 05:25:46'),
(29, 'Teobaldo', 'teobaldo@email.teste', '(99) 8877-6655', '81170-423', 'Rua 1', 'Cidade Industrial', 'Curitiba', 'PR', '2021-04-10 05:26:48'),
(30, 'Fernanda', 'fernanda@teste.email', '(22) 5566-8877', '45061-812', 'Rua 1', 'Campinhos', 'Vitória da Conquista', 'BA', '2021-04-10 05:27:51'),
(31, 'Fernando', 'fernando@email.teste', '(55) 8877-4445', '78300-000', '', '', 'Tangará da Serra', 'MT', '2021-04-10 05:31:04'),
(32, 'Celso Teste', 'celso@email.com', '(99) 8855-6221', '12238-542', 'Rua 1', 'Rio Comprido', 'São José dos Campos', 'SP', '2021-04-10 05:32:06'),
(33, 'Mário Teste', 'mario@teste.email', '(33) 6655-4452', '29260-000', 'Rua Teste, 101', 'Teste', 'Domingos Martins', 'ES', '2021-04-10 05:33:24'),
(34, 'João Paulo', 'joao@paulo.email', '(88) 7744-1122', '37300-000', 'Rua Teste, 101', 'Teste', 'Andrelândia', 'MG', '2021-04-10 05:34:44'),
(35, 'Rita Teste', 'rita@teste.email', '(00) 1144-7755', '49680-000', 'Rua Teste, 900', 'Teste', 'Nossa Senhora da Glória', 'SE', '2021-04-10 05:35:54'),
(36, 'Paiva e Silva', 'paiva@silva.email', '(00) 2558-9464', '08226-021', 'Rua 18 de Abril', 'Cidade Antônio Estevão de Carval', 'São Paulo', 'SP', '2021-04-10 05:37:12'),
(37, 'Ana Beatriz', 'ana.beatriz@email.com', '(32) 1465-4679', '04180-112', 'Travessa 19 de Agosto', 'Jardim Maria Estela', 'São Paulo', 'SP', '2021-04-10 05:37:59'),
(38, 'José Pacheco', 'pacheco@email.com', '(31) 9717-4211', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 05:35:01'),
(39, 'Carlos Teste', 'carlos@teste.email', '(22) 2222-2222', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 05:37:09'),
(40, 'Maria', 'maria@email.com', '(02) 0055-0066', '31.255-900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 04:14:40'),
(41, 'Ribamar de Souza', 'ribamar@email.com', '(11) 0011-0022', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-09 00:38:38'),
(42, 'Ribamar Teste', 'ribamar@email.teste', '(02) 0055-0066', '31.255-901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 04:22:56'),
(43, 'Maria Rita', 'maria.rita@email.teste', '(00) 0010-0020', '31255900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-10 00:30:39'),
(44, 'Pedro Teste', 'pedro@email.teste', '(11) 1000-0001', '31255901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 03:35:19'),
(45, 'Ana Lúcia', 'ana.lucia@email.com', '(00) 9988-7766', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-10 05:25:46'),
(46, 'Teobaldo', 'teobaldo@email.teste', '(99) 8877-6655', '81170-423', 'Rua 1', 'Cidade Industrial', 'Curitiba', 'PR', '2021-04-10 05:26:48'),
(47, 'Fernanda', 'fernanda@teste.email', '(22) 5566-8877', '45061-812', 'Rua 1', 'Campinhos', 'Vitória da Conquista', 'BA', '2021-04-10 05:27:51'),
(48, 'Fernando', 'fernando@email.teste', '(55) 8877-4445', '78300-000', '', '', 'Tangará da Serra', 'MT', '2021-04-10 05:31:04'),
(49, 'Celso Teste', 'celso@email.com', '(99) 8855-6221', '12238-542', 'Rua 1', 'Rio Comprido', 'São José dos Campos', 'SP', '2021-04-10 05:32:06'),
(50, 'Mário Teste', 'mario@teste.email', '(33) 6655-4452', '29260-000', 'Rua Teste, 101', 'Teste', 'Domingos Martins', 'ES', '2021-04-10 05:33:24'),
(51, 'João Paulo', 'joao@paulo.email', '(88) 7744-1122', '37300-000', 'Rua Teste, 101', 'Teste', 'Andrelândia', 'MG', '2021-04-10 05:34:44'),
(52, 'Rita Teste', 'rita@teste.email', '(00) 1144-7755', '49680-000', 'Rua Teste, 900', 'Teste', 'Nossa Senhora da Glória', 'SE', '2021-04-10 05:35:54'),
(53, 'Paiva e Silva', 'paiva@silva.email', '(00) 2558-9464', '08226-021', 'Rua 18 de Abril', 'Cidade Antônio Estevão de Carval', 'São Paulo', 'SP', '2021-04-10 05:37:12'),
(54, 'Ana Beatriz', 'ana.beatriz@email.com', '(32) 1465-4679', '04180-112', 'Travessa 19 de Agosto', 'Jardim Maria Estela', 'São Paulo', 'SP', '2021-04-10 05:37:59'),
(55, 'José Pacheco', 'pacheco@email.com', '(31) 9717-4211', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 05:35:01'),
(56, 'Carlos Teste', 'carlos@teste.email', '(22) 2222-2222', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 05:37:09'),
(57, 'Maria', 'maria@email.com', '(02) 0055-0066', '31.255-900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 04:14:40'),
(58, 'Ribamar de Souza', 'ribamar@email.com', '(11) 0011-0022', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-09 00:38:38'),
(59, 'Ribamar Teste', 'ribamar@email.teste', '(02) 0055-0066', '31.255-901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 04:22:56'),
(60, 'Maria Rita', 'maria.rita@email.teste', '(00) 0010-0020', '31255900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-10 00:30:39'),
(61, 'Pedro Teste', 'pedro@email.teste', '(11) 1000-0001', '31255901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 03:35:19'),
(62, 'Ana Lúcia', 'ana.lucia@email.com', '(00) 9988-7766', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-10 05:25:46'),
(63, 'Teobaldo', 'teobaldo@email.teste', '(99) 8877-6655', '81170-423', 'Rua 1', 'Cidade Industrial', 'Curitiba', 'PR', '2021-04-10 05:26:48'),
(64, 'Fernanda', 'fernanda@teste.email', '(22) 5566-8877', '45061-812', 'Rua 1', 'Campinhos', 'Vitória da Conquista', 'BA', '2021-04-10 05:27:51'),
(65, 'Fernando', 'fernando@email.teste', '(55) 8877-4445', '78300-000', '', '', 'Tangará da Serra', 'MT', '2021-04-10 05:31:04'),
(66, 'Celso Teste', 'celso@email.com', '(99) 8855-6221', '12238-542', 'Rua 1', 'Rio Comprido', 'São José dos Campos', 'SP', '2021-04-10 05:32:06'),
(67, 'Mário Teste', 'mario@teste.email', '(33) 6655-4452', '29260-000', 'Rua Teste, 101', 'Teste', 'Domingos Martins', 'ES', '2021-04-10 05:33:24'),
(68, 'João Paulo', 'joao@paulo.email', '(88) 7744-1122', '37300-000', 'Rua Teste, 101', 'Teste', 'Andrelândia', 'MG', '2021-04-10 05:34:44'),
(69, 'Rita Teste', 'rita@teste.email', '(00) 1144-7755', '49680-000', 'Rua Teste, 900', 'Teste', 'Nossa Senhora da Glória', 'SE', '2021-04-10 05:35:54'),
(70, 'Paiva e Silva', 'paiva@silva.email', '(00) 2558-9464', '08226-021', 'Rua 18 de Abril', 'Cidade Antônio Estevão de Carval', 'São Paulo', 'SP', '2021-04-10 05:37:12'),
(71, 'Ana Beatriz', 'ana.beatriz@email.com', '(32) 1465-4679', '04180-112', 'Travessa 19 de Agosto', 'Jardim Maria Estela', 'São Paulo', 'SP', '2021-04-10 05:37:59'),
(72, 'José Pacheco', 'pacheco@email.com', '(31) 9717-4211', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 05:35:01'),
(73, 'Carlos Teste', 'carlos@teste.email', '(22) 2222-2222', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 05:37:09'),
(74, 'Maria', 'maria@email.com', '(02) 0055-0066', '31.255-900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 04:14:40'),
(75, 'Ribamar de Souza', 'ribamar@email.com', '(11) 0011-0022', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-09 00:38:38'),
(76, 'Ribamar Teste', 'ribamar@email.teste', '(02) 0055-0066', '31.255-901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 04:22:56'),
(77, 'Maria Rita', 'maria.rita@email.teste', '(00) 0010-0020', '31255900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-10 00:30:39'),
(78, 'Pedro Teste', 'pedro@email.teste', '(11) 1000-0001', '31255901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 03:35:19'),
(79, 'Ana Lúcia', 'ana.lucia@email.com', '(00) 9988-7766', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-10 05:25:46'),
(80, 'Teobaldo', 'teobaldo@email.teste', '(99) 8877-6655', '81170-423', 'Rua 1', 'Cidade Industrial', 'Curitiba', 'PR', '2021-04-10 05:26:48'),
(81, 'Fernanda', 'fernanda@teste.email', '(22) 5566-8877', '45061-812', 'Rua 1', 'Campinhos', 'Vitória da Conquista', 'BA', '2021-04-10 05:27:51'),
(82, 'Fernando', 'fernando@email.teste', '(55) 8877-4445', '78300-000', '', '', 'Tangará da Serra', 'MT', '2021-04-10 05:31:04'),
(83, 'Celso Teste', 'celso@email.com', '(99) 8855-6221', '12238-542', 'Rua 1', 'Rio Comprido', 'São José dos Campos', 'SP', '2021-04-10 05:32:06'),
(84, 'Mário Teste', 'mario@teste.email', '(33) 6655-4452', '29260-000', 'Rua Teste, 101', 'Teste', 'Domingos Martins', 'ES', '2021-04-10 05:33:24'),
(85, 'João Paulo', 'joao@paulo.email', '(88) 7744-1122', '37300-000', 'Rua Teste, 101', 'Teste', 'Andrelândia', 'MG', '2021-04-10 05:34:44'),
(86, 'Rita Teste', 'rita@teste.email', '(00) 1144-7755', '49680-000', 'Rua Teste, 900', 'Teste', 'Nossa Senhora da Glória', 'SE', '2021-04-10 05:35:54'),
(87, 'Paiva e Silva', 'paiva@silva.email', '(00) 2558-9464', '08226-021', 'Rua 18 de Abril', 'Cidade Antônio Estevão de Carval', 'São Paulo', 'SP', '2021-04-10 05:37:12'),
(88, 'Ana Beatriz', 'ana.beatriz@email.com', '(32) 1465-4679', '04180-112', 'Travessa 19 de Agosto', 'Jardim Maria Estela', 'São Paulo', 'SP', '2021-04-10 05:37:59'),
(89, 'José Pacheco', 'pacheco@email.com', '(31) 9717-4211', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 05:35:01'),
(90, 'Carlos Teste', 'carlos@teste.email', '(22) 2222-2222', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 05:37:09'),
(91, 'Maria', 'maria@email.com', '(02) 0055-0066', '31.255-900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 04:14:40'),
(92, 'Ribamar de Souza', 'ribamar@email.com', '(11) 0011-0022', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-09 00:38:38'),
(93, 'Ribamar Teste', 'ribamar@email.teste', '(02) 0055-0066', '31.255-901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 04:22:56'),
(94, 'Maria Rita', 'maria.rita@email.teste', '(00) 0010-0020', '31255900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-10 00:30:39'),
(95, 'Pedro Teste', 'pedro@email.teste', '(11) 1000-0001', '31255901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 03:35:19'),
(96, 'Ana Lúcia', 'ana.lucia@email.com', '(00) 9988-7766', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-10 05:25:46'),
(97, 'Teobaldo', 'teobaldo@email.teste', '(99) 8877-6655', '81170-423', 'Rua 1', 'Cidade Industrial', 'Curitiba', 'PR', '2021-04-10 05:26:48'),
(98, 'Fernanda', 'fernanda@teste.email', '(22) 5566-8877', '45061-812', 'Rua 1', 'Campinhos', 'Vitória da Conquista', 'BA', '2021-04-10 05:27:51'),
(99, 'Fernando', 'fernando@email.teste', '(55) 8877-4445', '78300-000', '', '', 'Tangará da Serra', 'MT', '2021-04-10 05:31:04'),
(100, 'Celso Teste', 'celso@email.com', '(99) 8855-6221', '12238-542', 'Rua 1', 'Rio Comprido', 'São José dos Campos', 'SP', '2021-04-10 05:32:06'),
(101, 'Mário Teste', 'mario@teste.email', '(33) 6655-4452', '29260-000', 'Rua Teste, 101', 'Teste', 'Domingos Martins', 'ES', '2021-04-10 05:33:24'),
(102, 'João Paulo', 'joao@paulo.email', '(88) 7744-1122', '37300-000', 'Rua Teste, 101', 'Teste', 'Andrelândia', 'MG', '2021-04-10 05:34:44'),
(103, 'Rita Teste', 'rita@teste.email', '(00) 1144-7755', '49680-000', 'Rua Teste, 900', 'Teste', 'Nossa Senhora da Glória', 'SE', '2021-04-10 05:35:54'),
(104, 'Paiva e Silva', 'paiva@silva.email', '(00) 2558-9464', '08226-021', 'Rua 18 de Abril', 'Cidade Antônio Estevão de Carval', 'São Paulo', 'SP', '2021-04-10 05:37:12'),
(105, 'Ana Beatriz', 'ana.beatriz@email.com', '(32) 1465-4679', '04180-112', 'Travessa 19 de Agosto', 'Jardim Maria Estela', 'São Paulo', 'SP', '2021-04-10 05:37:59'),
(106, 'José Pacheco', 'pacheco@email.com', '(31) 9717-4211', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 05:35:01'),
(107, 'Carlos Teste', 'carlos@teste.email', '(22) 2222-2222', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 05:37:09'),
(108, 'Maria', 'maria@email.com', '(02) 0055-0066', '31.255-900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 04:14:40'),
(109, 'Ribamar de Souza', 'ribamar@email.com', '(11) 0011-0022', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-09 00:38:38'),
(110, 'Ribamar Teste', 'ribamar@email.teste', '(02) 0055-0066', '31.255-901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 04:22:56'),
(111, 'Maria Rita', 'maria.rita@email.teste', '(00) 0010-0020', '31255900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-10 00:30:39'),
(112, 'Pedro Teste', 'pedro@email.teste', '(11) 1000-0001', '31255901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 03:35:19'),
(113, 'Ana Lúcia', 'ana.lucia@email.com', '(00) 9988-7766', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-10 05:25:46'),
(114, 'Teobaldo', 'teobaldo@email.teste', '(99) 8877-6655', '81170-423', 'Rua 1', 'Cidade Industrial', 'Curitiba', 'PR', '2021-04-10 05:26:48'),
(115, 'Fernanda', 'fernanda@teste.email', '(22) 5566-8877', '45061-812', 'Rua 1', 'Campinhos', 'Vitória da Conquista', 'BA', '2021-04-10 05:27:51'),
(116, 'Fernando', 'fernando@email.teste', '(55) 8877-4445', '78300-000', '', '', 'Tangará da Serra', 'MT', '2021-04-10 05:31:04'),
(117, 'Celso Teste', 'celso@email.com', '(99) 8855-6221', '12238-542', 'Rua 1', 'Rio Comprido', 'São José dos Campos', 'SP', '2021-04-10 05:32:06'),
(118, 'Mário Teste', 'mario@teste.email', '(33) 6655-4452', '29260-000', 'Rua Teste, 101', 'Teste', 'Domingos Martins', 'ES', '2021-04-10 05:33:24'),
(119, 'João Paulo', 'joao@paulo.email', '(88) 7744-1122', '37300-000', 'Rua Teste, 101', 'Teste', 'Andrelândia', 'MG', '2021-04-10 05:34:44'),
(120, 'Rita Teste', 'rita@teste.email', '(00) 1144-7755', '49680-000', 'Rua Teste, 900', 'Teste', 'Nossa Senhora da Glória', 'SE', '2021-04-10 05:35:54'),
(121, 'Paiva e Silva', 'paiva@silva.email', '(00) 2558-9464', '08226-021', 'Rua 18 de Abril', 'Cidade Antônio Estevão de Carval', 'São Paulo', 'SP', '2021-04-10 05:37:12'),
(122, 'Ana Beatriz', 'ana.beatriz@email.com', '(32) 1465-4679', '04180-112', 'Travessa 19 de Agosto', 'Jardim Maria Estela', 'São Paulo', 'SP', '2021-04-10 05:37:59'),
(123, 'José Pacheco', 'pacheco@email.com', '(31) 9717-4211', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 05:35:01'),
(124, 'Carlos Teste', 'carlos@teste.email', '(22) 2222-2222', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 05:37:09'),
(125, 'Maria', 'maria@email.com', '(02) 0055-0066', '31.255-900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 04:14:40'),
(126, 'Ribamar de Souza', 'ribamar@email.com', '(11) 0011-0022', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-09 00:38:38'),
(127, 'Ribamar Teste', 'ribamar@email.teste', '(02) 0055-0066', '31.255-901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 04:22:56'),
(128, 'Maria Rita', 'maria.rita@email.teste', '(00) 0010-0020', '31255900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-10 00:30:39'),
(129, 'Pedro Teste', 'pedro@email.teste', '(11) 1000-0001', '31255901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 03:35:19'),
(130, 'Ana Lúcia', 'ana.lucia@email.com', '(00) 9988-7766', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-10 05:25:46'),
(131, 'Teobaldo', 'teobaldo@email.teste', '(99) 8877-6655', '81170-423', 'Rua 1', 'Cidade Industrial', 'Curitiba', 'PR', '2021-04-10 05:26:48'),
(132, 'Fernanda', 'fernanda@teste.email', '(22) 5566-8877', '45061-812', 'Rua 1', 'Campinhos', 'Vitória da Conquista', 'BA', '2021-04-10 05:27:51'),
(133, 'Fernando', 'fernando@email.teste', '(55) 8877-4445', '78300-000', '', '', 'Tangará da Serra', 'MT', '2021-04-10 05:31:04'),
(134, 'Celso Teste', 'celso@email.com', '(99) 8855-6221', '12238-542', 'Rua 1', 'Rio Comprido', 'São José dos Campos', 'SP', '2021-04-10 05:32:06'),
(135, 'Mário Teste', 'mario@teste.email', '(33) 6655-4452', '29260-000', 'Rua Teste, 101', 'Teste', 'Domingos Martins', 'ES', '2021-04-10 05:33:24'),
(136, 'João Paulo', 'joao@paulo.email', '(88) 7744-1122', '37300-000', 'Rua Teste, 101', 'Teste', 'Andrelândia', 'MG', '2021-04-10 05:34:44'),
(137, 'Rita Teste', 'rita@teste.email', '(00) 1144-7755', '49680-000', 'Rua Teste, 900', 'Teste', 'Nossa Senhora da Glória', 'SE', '2021-04-10 05:35:54'),
(138, 'Paiva e Silva', 'paiva@silva.email', '(00) 2558-9464', '08226-021', 'Rua 18 de Abril', 'Cidade Antônio Estevão de Carval', 'São Paulo', 'SP', '2021-04-10 05:37:12'),
(139, 'Ana Beatriz', 'ana.beatriz@email.com', '(32) 1465-4679', '04180-112', 'Travessa 19 de Agosto', 'Jardim Maria Estela', 'São Paulo', 'SP', '2021-04-10 05:37:59'),
(140, 'José Pacheco', 'pacheco@email.com', '(31) 9717-4211', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 05:35:01'),
(141, 'Carlos Teste', 'carlos@teste.email', '(22) 2222-2222', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 05:37:09'),
(142, 'Maria', 'maria@email.com', '(02) 0055-0066', '31.255-900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 04:14:40'),
(143, 'Ribamar de Souza', 'ribamar@email.com', '(11) 0011-0022', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-09 00:38:38'),
(144, 'Ribamar Teste', 'ribamar@email.teste', '(02) 0055-0066', '31.255-901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 04:22:56'),
(145, 'Maria Rita', 'maria.rita@email.teste', '(00) 0010-0020', '31255900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-10 00:30:39'),
(146, 'Pedro Teste', 'pedro@email.teste', '(11) 1000-0001', '31255901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 03:35:19'),
(147, 'Ana Lúcia', 'ana.lucia@email.com', '(00) 9988-7766', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-10 05:25:46'),
(148, 'Teobaldo', 'teobaldo@email.teste', '(99) 8877-6655', '81170-423', 'Rua 1', 'Cidade Industrial', 'Curitiba', 'PR', '2021-04-10 05:26:48'),
(149, 'Fernanda', 'fernanda@teste.email', '(22) 5566-8877', '45061-812', 'Rua 1', 'Campinhos', 'Vitória da Conquista', 'BA', '2021-04-10 05:27:51'),
(150, 'Fernando', 'fernando@email.teste', '(55) 8877-4445', '78300-000', '', '', 'Tangará da Serra', 'MT', '2021-04-10 05:31:04'),
(151, 'Celso Teste', 'celso@email.com', '(99) 8855-6221', '12238-542', 'Rua 1', 'Rio Comprido', 'São José dos Campos', 'SP', '2021-04-10 05:32:06'),
(152, 'Mário Teste', 'mario@teste.email', '(33) 6655-4452', '29260-000', 'Rua Teste, 101', 'Teste', 'Domingos Martins', 'ES', '2021-04-10 05:33:24'),
(153, 'João Paulo', 'joao@paulo.email', '(88) 7744-1122', '37300-000', 'Rua Teste, 101', 'Teste', 'Andrelândia', 'MG', '2021-04-10 05:34:44'),
(154, 'Rita Teste', 'rita@teste.email', '(00) 1144-7755', '49680-000', 'Rua Teste, 900', 'Teste', 'Nossa Senhora da Glória', 'SE', '2021-04-10 05:35:54'),
(155, 'Paiva e Silva', 'paiva@silva.email', '(00) 2558-9464', '08226-021', 'Rua 18 de Abril', 'Cidade Antônio Estevão de Carval', 'São Paulo', 'SP', '2021-04-10 05:37:12'),
(156, 'Ana Beatriz', 'ana.beatriz@email.com', '(32) 1465-4679', '04180-112', 'Travessa 19 de Agosto', 'Jardim Maria Estela', 'São Paulo', 'SP', '2021-04-10 05:37:59'),
(157, 'José Pacheco', 'pacheco@email.com', '(31) 9717-4211', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 05:35:01'),
(158, 'Carlos Teste', 'carlos@teste.email', '(22) 2222-2222', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 05:37:09'),
(159, 'Maria', 'maria@email.com', '(02) 0055-0066', '31.255-900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 04:14:40'),
(160, 'Ribamar de Souza', 'ribamar@email.com', '(11) 0011-0022', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-09 00:38:38'),
(161, 'Ribamar Teste', 'ribamar@email.teste', '(02) 0055-0066', '31.255-901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 04:22:56'),
(162, 'Maria Rita', 'maria.rita@email.teste', '(00) 0010-0020', '31255900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-10 00:30:39'),
(163, 'Pedro Teste', 'pedro@email.teste', '(11) 1000-0001', '31255901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 03:35:19'),
(164, 'Ana Lúcia', 'ana.lucia@email.com', '(00) 9988-7766', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-10 05:25:46'),
(165, 'Teobaldo', 'teobaldo@email.teste', '(99) 8877-6655', '81170-423', 'Rua 1', 'Cidade Industrial', 'Curitiba', 'PR', '2021-04-10 05:26:48'),
(166, 'Fernanda', 'fernanda@teste.email', '(22) 5566-8877', '45061-812', 'Rua 1', 'Campinhos', 'Vitória da Conquista', 'BA', '2021-04-10 05:27:51'),
(167, 'Fernando', 'fernando@email.teste', '(55) 8877-4445', '78300-000', '', '', 'Tangará da Serra', 'MT', '2021-04-10 05:31:04'),
(168, 'Celso Teste', 'celso@email.com', '(99) 8855-6221', '12238-542', 'Rua 1', 'Rio Comprido', 'São José dos Campos', 'SP', '2021-04-10 05:32:06'),
(169, 'Mário Teste', 'mario@teste.email', '(33) 6655-4452', '29260-000', 'Rua Teste, 101', 'Teste', 'Domingos Martins', 'ES', '2021-04-10 05:33:24'),
(170, 'João Paulo', 'joao@paulo.email', '(88) 7744-1122', '37300-000', 'Rua Teste, 101', 'Teste', 'Andrelândia', 'MG', '2021-04-10 05:34:44'),
(171, 'Rita Teste', 'rita@teste.email', '(00) 1144-7755', '49680-000', 'Rua Teste, 900', 'Teste', 'Nossa Senhora da Glória', 'SE', '2021-04-10 05:35:54'),
(172, 'Paiva e Silva', 'paiva@silva.email', '(00) 2558-9464', '08226-021', 'Rua 18 de Abril', 'Cidade Antônio Estevão de Carval', 'São Paulo', 'SP', '2021-04-10 05:37:12'),
(173, 'Ana Beatriz', 'ana.beatriz@email.com', '(32) 1465-4679', '04180-112', 'Travessa 19 de Agosto', 'Jardim Maria Estela', 'São Paulo', 'SP', '2021-04-10 05:37:59'),
(174, 'José Pacheco', 'pacheco@email.com', '(31) 9717-4211', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 05:35:01'),
(175, 'Carlos Teste', 'carlos@teste.email', '(22) 2222-2222', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 05:37:09'),
(176, 'Maria', 'maria@email.com', '(02) 0055-0066', '31.255-900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 04:14:40'),
(177, 'Ribamar de Souza', 'ribamar@email.com', '(11) 0011-0022', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-09 00:38:38'),
(178, 'Ribamar Teste', 'ribamar@email.teste', '(02) 0055-0066', '31.255-901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 04:22:56'),
(179, 'Maria Rita', 'maria.rita@email.teste', '(00) 0010-0020', '31255900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-10 00:30:39'),
(180, 'Pedro Teste', 'pedro@email.teste', '(11) 1000-0001', '31255901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 03:35:19'),
(181, 'Ana Lúcia', 'ana.lucia@email.com', '(00) 9988-7766', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-10 05:25:46'),
(182, 'Teobaldo', 'teobaldo@email.teste', '(99) 8877-6655', '81170-423', 'Rua 1', 'Cidade Industrial', 'Curitiba', 'PR', '2021-04-10 05:26:48'),
(183, 'Fernanda', 'fernanda@teste.email', '(22) 5566-8877', '45061-812', 'Rua 1', 'Campinhos', 'Vitória da Conquista', 'BA', '2021-04-10 05:27:51'),
(184, 'Fernando', 'fernando@email.teste', '(55) 8877-4445', '78300-000', '', '', 'Tangará da Serra', 'MT', '2021-04-10 05:31:04'),
(185, 'Celso Teste', 'celso@email.com', '(99) 8855-6221', '12238-542', 'Rua 1', 'Rio Comprido', 'São José dos Campos', 'SP', '2021-04-10 05:32:06'),
(186, 'Mário Teste', 'mario@teste.email', '(33) 6655-4452', '29260-000', 'Rua Teste, 101', 'Teste', 'Domingos Martins', 'ES', '2021-04-10 05:33:24'),
(187, 'João Paulo', 'joao@paulo.email', '(88) 7744-1122', '37300-000', 'Rua Teste, 101', 'Teste', 'Andrelândia', 'MG', '2021-04-10 05:34:44'),
(188, 'Rita Teste', 'rita@teste.email', '(00) 1144-7755', '49680-000', 'Rua Teste, 900', 'Teste', 'Nossa Senhora da Glória', 'SE', '2021-04-10 05:35:54'),
(189, 'Paiva e Silva', 'paiva@silva.email', '(00) 2558-9464', '08226-021', 'Rua 18 de Abril', 'Cidade Antônio Estevão de Carval', 'São Paulo', 'SP', '2021-04-10 05:37:12'),
(190, 'Ana Beatriz', 'ana.beatriz@email.com', '(32) 1465-4679', '04180-112', 'Travessa 19 de Agosto', 'Jardim Maria Estela', 'São Paulo', 'SP', '2021-04-10 05:37:59'),
(191, 'José Pacheco', 'pacheco@email.com', '(31) 9717-4211', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 05:35:01'),
(192, 'Carlos Teste', 'carlos@teste.email', '(22) 2222-2222', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 05:37:09'),
(193, 'Maria', 'maria@email.com', '(02) 0055-0066', '31.255-900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 04:14:40'),
(194, 'Ribamar de Souza', 'ribamar@email.com', '(11) 0011-0022', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-09 00:38:38'),
(195, 'Ribamar Teste', 'ribamar@email.teste', '(02) 0055-0066', '31.255-901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 04:22:56'),
(196, 'Maria Rita', 'maria.rita@email.teste', '(00) 0010-0020', '31255900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-10 00:30:39'),
(197, 'Pedro Teste', 'pedro@email.teste', '(11) 1000-0001', '31255901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 03:35:19'),
(198, 'Ana Lúcia', 'ana.lucia@email.com', '(00) 9988-7766', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-10 05:25:46'),
(199, 'Teobaldo', 'teobaldo@email.teste', '(99) 8877-6655', '81170-423', 'Rua 1', 'Cidade Industrial', 'Curitiba', 'PR', '2021-04-10 05:26:48'),
(200, 'Fernanda', 'fernanda@teste.email', '(22) 5566-8877', '45061-812', 'Rua 1', 'Campinhos', 'Vitória da Conquista', 'BA', '2021-04-10 05:27:51'),
(201, 'Fernando', 'fernando@email.teste', '(55) 8877-4445', '78300-000', '', '', 'Tangará da Serra', 'MT', '2021-04-10 05:31:04'),
(202, 'Celso Teste', 'celso@email.com', '(99) 8855-6221', '12238-542', 'Rua 1', 'Rio Comprido', 'São José dos Campos', 'SP', '2021-04-10 05:32:06'),
(203, 'Mário Teste', 'mario@teste.email', '(33) 6655-4452', '29260-000', 'Rua Teste, 101', 'Teste', 'Domingos Martins', 'ES', '2021-04-10 05:33:24'),
(204, 'João Paulo', 'joao@paulo.email', '(88) 7744-1122', '37300-000', 'Rua Teste, 101', 'Teste', 'Andrelândia', 'MG', '2021-04-10 05:34:44'),
(205, 'Rita Teste', 'rita@teste.email', '(00) 1144-7755', '49680-000', 'Rua Teste, 900', 'Teste', 'Nossa Senhora da Glória', 'SE', '2021-04-10 05:35:54'),
(206, 'Paiva e Silva', 'paiva@silva.email', '(00) 2558-9464', '08226-021', 'Rua 18 de Abril', 'Cidade Antônio Estevão de Carval', 'São Paulo', 'SP', '2021-04-10 05:37:12'),
(207, 'Ana Beatriz', 'ana.beatriz@email.com', '(32) 1465-4679', '04180-112', 'Travessa 19 de Agosto', 'Jardim Maria Estela', 'São Paulo', 'SP', '2021-04-10 05:37:59'),
(208, 'José Pacheco', 'pacheco@email.com', '(31) 9717-4211', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 05:35:01'),
(209, 'Carlos Teste', 'carlos@teste.email', '(22) 2222-2222', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 05:37:09'),
(210, 'Maria', 'maria@email.com', '(02) 0055-0066', '31.255-900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-09 04:14:40'),
(211, 'Ribamar de Souza', 'ribamar@email.com', '(11) 0011-0022', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-09 00:38:38'),
(212, 'Ribamar Teste', 'ribamar@email.teste', '(02) 0055-0066', '31.255-901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 04:22:56'),
(213, 'Maria Rita', 'maria.rita@email.teste', '(00) 0010-0020', '31255900', 'Rua Izabel Bueno 442', 'Santa Rosa', 'Belo Horizonte', 'MG', '2021-04-10 00:30:39'),
(214, 'Pedro Teste', 'pedro@email.teste', '(11) 1000-0001', '31255901', 'Rodovia Anel Rodoviário Celso Mello Azevedo km 21', 'Universitário', 'Belo Horizonte', 'MG', '2021-04-09 03:35:19'),
(215, 'Ana Lúcia', 'ana.lucia@email.com', '(00) 9988-7766', '66070520', 'Vila Soares', 'Canudos', 'Belém', 'PA', '2021-04-10 05:25:46'),
(216, 'Teobaldo', 'teobaldo@email.teste', '(99) 8877-6655', '81170-423', 'Rua 1', 'Cidade Industrial', 'Curitiba', 'PR', '2021-04-10 05:26:48'),
(217, 'Fernanda', 'fernanda@teste.email', '(22) 5566-8877', '45061-812', 'Rua 1', 'Campinhos', 'Vitória da Conquista', 'BA', '2021-04-10 05:27:51'),
(218, 'Fernando', 'fernando@email.teste', '(55) 8877-4445', '78300-000', '', '', 'Tangará da Serra', 'MT', '2021-04-10 05:31:04'),
(219, 'Celso Teste', 'celso@email.com', '(99) 8855-6221', '12238-542', 'Rua 1', 'Rio Comprido', 'São José dos Campos', 'SP', '2021-04-10 05:32:06'),
(220, 'Mário Teste', 'mario@teste.email', '(33) 6655-4452', '29260-000', 'Rua Teste, 101', 'Teste', 'Domingos Martins', 'ES', '2021-04-10 05:33:24'),
(221, 'João Paulo', 'joao@paulo.email', '(88) 7744-1122', '37300-000', 'Rua Teste, 101', 'Teste', 'Andrelândia', 'MG', '2021-04-10 05:34:44'),
(222, 'Rita Teste', 'rita@teste.email', '(00) 1144-7755', '49680-000', 'Rua Teste, 900', 'Teste', 'Nossa Senhora da Glória', 'SE', '2021-04-10 05:35:54'),
(223, 'Paiva e Silva', 'paiva@silva.email', '(00) 2558-9464', '08226-021', 'Rua 18 de Abril', 'Cidade Antônio Estevão de Carval', 'São Paulo', 'SP', '2021-04-10 05:37:12'),
(224, 'Ana Beatriz', 'ana.beatriz@email.com', '(32) 1465-4679', '04180-112', 'Travessa 19 de Agosto', 'Jardim Maria Estela', 'São Paulo', 'SP', '2021-04-10 05:37:59'),
(225, 'José Pacheco', 'pacheco@email.com', '(31) 9717-4211', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 05:35:01'),
(226, 'Carlos Teste', 'carlos@teste.email', '(22) 2222-2222', '31565-390', 'Rua Doutor Aleixo Paraguassu', 'Santa Branca', 'Belo Horizonte', 'MG', '2021-04-10 05:37:09'),
(227, 'Aderbal Teste', 'aderbal@teste.email', '(00) 9812-7271', '86020-908', 'Avenida Higienópolis 174', 'Centro', 'Londrina', 'PR', '2021-04-12 02:27:03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `eventos`
--

CREATE TABLE `eventos` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(30) NOT NULL,
  `DESCRICAO` varchar(50) DEFAULT NULL,
  `DATA` date NOT NULL,
  `CAO` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `eventos`
--

INSERT INTO `eventos` (`ID`, `NOME`, `DESCRICAO`, `DATA`, `CAO`) VALUES
(1, 'Vacinação', 'Vacinação anual para prevenção de doenças', '2023-07-01', 'Rex'),
(2, 'Banho e Tosa', 'Banho e tosa para deixar o pet limpo e com a pelag', '2023-07-02', 'Mel'),
(3, 'Passeio no Parque', 'Passeio divertido no parque com o pet', '2023-07-03', 'Max'),
(4, 'Adestramento', 'Sessão de adestramento para melhorar o comportamen', '2023-07-04', 'Luna'),
(5, 'Consulta Veterinária', 'Consulta de rotina com o veterinário', '2023-07-05', 'Charlie'),
(6, 'Encontro de Cães', 'Encontro de cães da mesma raça para socialização', '2023-07-06', 'Bella'),
(7, 'Treinamento de Agility', 'Treinamento de agility para exercitar e estimular ', '2023-07-07', 'Toby'),
(8, 'Exposição Canina', 'Participação em uma exposição canina para mostrar ', '2023-07-08', 'Lola'),
(9, 'Aula de Natação', 'Aula de natação para cães, uma atividade refrescan', '2023-07-09', 'Rocky'),
(10, 'Festa de Aniversário', 'Comemoração do aniversário do pet com amigos e pet', '2023-07-10', 'Maggie'),
(11, 'Caminhada na Praia', 'Caminhada relaxante na praia junto com o pet', '2023-07-11', 'Duke'),
(12, 'Curso de Obediência', 'Curso para ensinar comandos básicos de obediência ', '2023-07-12', 'Lucky'),
(13, 'Café com Cães', 'Encontro descontraído para os tutores interagirem ', '2023-07-13', 'Coco'),
(14, 'Terapia Assistida por Animais', 'Sessão de terapia com animais para auxiliar na rec', '2023-07-14', 'Buddy'),
(15, 'Caminhada Ecológica', 'Caminhada em trilha na natureza junto com o pet', '2023-07-15', 'Sophie'),
(16, 'Aula de Agility', 'Aula de agility para praticar obstáculos e estimul', '2023-07-16', 'Bailey'),
(17, 'Curso de Primeiros Socorros', 'Curso para aprender técnicas de primeiros socorros', '2023-07-17', 'Cooper'),
(18, 'Piquenique no Parque', 'Piquenique divertido no parque com o pet', '2023-07-18', 'Luna'),
(19, 'Aula de Canicross', 'Aula de canicross, uma modalidade esportiva que en', '2023-07-19', 'Max'),
(20, 'Sessão de Fotos', 'Sessão de fotos profissional para capturar momento', '2023-07-20', 'Bella'),
(21, 'Encontro de Raças', 'Encontro de diferentes raças de cães para comparti', '2023-07-21', 'Toby'),
(22, 'Exposição de Agility', 'Participação em uma competição de agility para mos', '2023-07-22', 'Lola'),
(23, 'Aula de Treinamento Positivo', 'Aula de treinamento baseado em reforço positivo pa', '2023-07-23', 'Rocky'),
(24, 'Caminhada Noturna', 'Caminhada noturna com o pet para explorar a cidade', '2023-07-24', 'Maggie'),
(25, 'Festival de Comida para Cães', 'Evento com diferentes opções de comida e petiscos ', '2023-07-25', 'Duke'),
(26, 'Cinema ao Ar Livre', 'Sessão de cinema ao ar livre especialmente para tu', '2023-07-26', 'Lucky'),
(27, 'Workshop de Massagem para Cães', 'Workshop para aprender técnicas de massagem relaxa', '2023-07-27', 'Coco'),
(28, 'Cãominhada Beneficente', 'Caminhada com o pet em apoio a uma causa social', '2023-07-28', 'Buddy'),
(29, 'Aula de Canisport', 'Aula de canisport, que envolve atividades esportiv', '2023-07-29', 'Sophie'),
(30, 'Feira de Adoção', 'Feira para adoção de cães em parceria com abrigos ', '2023-07-30', 'Bailey');

-- --------------------------------------------------------

--
-- Estrutura da tabela `grupos`
--

CREATE TABLE `grupos` (
  `ID` int(10) NOT NULL,
  `NOME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Grupos de acesso';

-- --------------------------------------------------------

--
-- Estrutura da tabela `tutores`
--

CREATE TABLE `tutores` (
  `ID` int(10) NOT NULL,
  `NOME` varchar(70) NOT NULL,
  `USUARIO` int(10) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `DATA_NASCIMENTO` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tutores dos cães';

--
-- Extraindo dados da tabela `tutores`
--

INSERT INTO `tutores` (`ID`, `NOME`, `USUARIO`, `CPF`, `DATA_NASCIMENTO`) VALUES
(1, 'João Silva', 1, '11111111111', '1990-01-01'),
(2, 'Maria Santos', 2, '22222222222', '1985-05-10'),
(3, 'Pedro Oliveira', 3, '33333333333', '1992-03-15'),
(4, 'Ana Souza', 4, '44444444444', '1988-07-20'),
(5, 'Carlos Rodrigues', 5, '55555555555', '1995-12-25'),
(6, 'Mariana Almeida', 6, '66666666666', '1993-08-05'),
(7, 'Fernanda Costa', 7, '77777777777', '1987-06-30'),
(8, 'Rafael Santos', 8, '88888888888', '1991-02-14'),
(9, 'Juliana Pereira', 9, '99999999999', '1989-09-09'),
(10, 'Lucas Oliveira', 10, '10101010101', '1997-04-03'),
(11, 'Camila Silva', 11, '11111111112', '1994-11-07'),
(12, 'Daniel Souza', 12, '22222222223', '1986-10-12'),
(13, 'Isabela Alves', 13, '33333333334', '1998-06-28'),
(14, 'Gustavo Martins', 14, '44444444445', '1992-09-16'),
(15, 'Larissa Ferreira', 15, '55555555556', '1987-07-11'),
(16, 'Ricardo Gomes', 16, '66666666667', '1996-03-08'),
(17, 'Amanda Santos', 17, '77777777778', '1990-05-24'),
(18, 'Marcos Costa', 18, '88888888889', '1988-12-29'),
(19, 'Beatriz Lima', 19, '99999999990', '1993-02-02'),
(20, 'Diego Fernandes', 20, '20202020202', '1995-10-19'),
(21, 'Patrícia Castro', 21, '21212121212', '1991-11-23'),
(22, 'Eduardo Rocha', 22, '22222222222', '1997-09-04'),
(23, 'Sofia Nunes', 23, '23232323232', '1994-04-09'),
(24, 'Henrique Santos', 24, '24242424242', '1986-06-27'),
(25, 'Lívia Oliveira', 25, '25252525252', '1998-08-13'),
(26, 'Gabriel Sousa', 26, '26262626262', '1992-12-21'),
(27, 'Isabella Fernandes', 27, '27272727272', '1985-09-16'),
(28, 'Matheus Lima', 28, '28282828282', '1993-07-05'),
(29, 'Laura Rodrigues', 29, '29292929292', '1989-06-25'),
(30, 'Arthur Santos', 30, '30303030303', '1996-03-18'),
(31, 'Hellen Keller', 31, '30303030303', '1996-03-18'),
(32, 'Vinícius Junges', 32, '30303030303', '1996-03-18');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tutores_caes`
--

CREATE TABLE `tutores_caes` (
  `ID_CAO` int(11) NOT NULL,
  `ID_TUTOR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tutores dos cães';

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(10) NOT NULL COMMENT 'Identificador do usuário.',
  `LOGIN` varchar(20) NOT NULL COMMENT 'Login para entrar no sistema.',
  `SENHA` varchar(20) NOT NULL COMMENT 'Senha do usuário.',
  `EMAIL` varchar(70) NOT NULL COMMENT 'E-mail usado na redefinição de senha.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Usuários do sistema';

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`ID`, `LOGIN`, `SENHA`, `EMAIL`) VALUES
(1, 'usuario1', 'senha123', 'usuario1@example.com'),
(2, 'usuario2', 'senha456', 'usuario2@example.com'),
(3, 'usuario3', 'senha789', 'usuario3@example.com'),
(4, 'usuario4', 'senhaabc', 'usuario4@example.com'),
(5, 'usuario5', 'senhaxyz', 'usuario5@example.com'),
(6, 'usuario6', 'senha123', 'usuario6@example.com'),
(7, 'usuario7', 'senha456', 'usuario7@example.com'),
(8, 'usuario8', 'senha789', 'usuario8@example.com'),
(9, 'usuario9', 'senhaabc', 'usuario9@example.com'),
(10, 'usuario10', 'senhaxyz', 'usuario10@example.com'),
(11, 'usuario11', 'senha123', 'usuario11@example.com'),
(12, 'usuario12', 'senha456', 'usuario12@example.com'),
(13, 'usuario13', 'senha789', 'usuario13@example.com'),
(14, 'usuario14', 'senhaabc', 'usuario14@example.com'),
(15, 'usuario15', 'senhaxyz', 'usuario15@example.com'),
(16, 'usuario16', 'senha123', 'usuario16@example.com'),
(17, 'usuario17', 'senha456', 'usuario17@example.com'),
(18, 'usuario18', 'senha789', 'usuario18@example.com'),
(19, 'usuario19', 'senhaabc', 'usuario19@example.com'),
(20, 'usuario20', 'senhaxyz', 'usuario20@example.com'),
(21, 'usuario21', 'senha123', 'usuario21@example.com'),
(22, 'usuario22', 'senha456', 'usuario22@example.com'),
(23, 'usuario23', 'senha789', 'usuario23@example.com'),
(24, 'usuario24', 'senhaabc', 'usuario24@example.com'),
(25, 'usuario25', 'senhaxyz', 'usuario25@example.com'),
(26, 'usuario26', 'senha123', 'usuario26@example.com'),
(27, 'usuario27', 'senha456', 'usuario27@example.com'),
(28, 'usuario28', 'senha789', 'usuario28@example.com'),
(29, 'usuario29', 'senhaabc', 'usuario29@example.com'),
(30, 'usuario30', 'senhaxyz', 'usuario30@example.com'),
(31, 'keller', 'keller', 'keller@gmail.com'),
(32, 'vinicius', 'vinicius', 'vinicius.j2001@aluno.ifsc.edu.br');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `caes`
--
ALTER TABLE `caes`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `NOME` (`NOME`);

--
-- Índices para tabela `tutores`
--
ALTER TABLE `tutores`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `USUARIO` (`USUARIO`);

--
-- Índices para tabela `tutores_caes`
--
ALTER TABLE `tutores_caes`
  ADD UNIQUE KEY `ID_CAO` (`ID_CAO`,`ID_TUTOR`),
  ADD KEY `ID_TUTOR` (`ID_TUTOR`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `LOGIN` (`LOGIN`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `caes`
--
ALTER TABLE `caes`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `contatos`
--
ALTER TABLE `contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT de tabela `eventos`
--
ALTER TABLE `eventos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `grupos`
--
ALTER TABLE `grupos`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tutores`
--
ALTER TABLE `tutores`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Identificador do usuário.', AUTO_INCREMENT=73;


--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata para tabela caes
--

--
-- Metadata para tabela contatos
--

--
-- Metadata para tabela eventos
--

--
-- Metadata para tabela grupos
--

--
-- Metadata para tabela tutores
--

--
-- Extraindo dados da tabela `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'caes', 'tutores', '{\"sorted_col\":\"`tutores`.`ID` ASC\"}', '2023-03-06 02:27:56');

--
-- Metadata para tabela tutores_caes
--

--
-- Extraindo dados da tabela `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'caes', 'tutores_caes', '{\"sorted_col\":\"`tutores_caes`.`ID_TUTOR` ASC\"}', '2023-03-06 02:27:36');

--
-- Metadata para tabela usuarios
--

--
-- Metadata para o banco de dados caes
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
