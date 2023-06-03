-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Jun-2023 às 19:08
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
  `FOTO` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Cães';

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
(1, 'Lucas Santos', 1, '11122233344', '1990-01-01'),
(2, 'Gabriela Silva', 2, '55566677788', '1985-02-15'),
(3, 'Juliana Oliveira', 3, '99988877766', '1995-06-30'),
(4, 'Pedro Henrique', 4, '44455566677', '1992-11-11'),
(5, 'Ana Paula Vieira', 5, '33322211100', '1980-08-24'),
(6, 'Thiago Alves', 6, '22233344455', '1991-05-06'),
(7, 'Carla Souza', 7, '66655544433', '1982-04-19'),
(8, 'Luciana Pereira', 8, '77788899900', '1994-12-12'),
(9, 'Ricardo Santos', 9, '88899900011', '1987-03-03'),
(10, 'Patrícia Lima', 10, '77766655544', '1998-07-28'),
(11, 'Fernando Oliveira', 11, '66677788899', '1981-02-18'),
(12, 'Camila Silva', 12, '22211133344', '1993-09-15'),
(13, 'Rodrigo Souza', 13, '55544433322', '1996-10-20'),
(14, 'Mariana Costa', 14, '44433322211', '1984-12-31'),
(15, 'Lucas Barbosa', 15, '99988877766', '1989-06-25'),
(16, 'Aline Pereira', 16, '33344455566', '1997-01-09'),
(17, 'Bruno Oliveira', 17, '11122233344', '1983-07-13'),
(18, 'Mônica Santos', 18, '88899900011', '1995-04-22'),
(19, 'Renato Almeida', 19, '55566677788', '1990-11-27'),
(20, 'Luiza Souza', 20, '22233344455', '1988-03-08');

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
  `EMAIL` varchar(70) NOT NULL COMMENT 'E-mail usado na redefinição de senha.',
  `FOTO` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Usuários do sistema';

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`ID`, `LOGIN`, `SENHA`, `EMAIL`, `FOTO`) VALUES
(1, 'andre', 'andre', 'user1@teste.com', ''),
(2, 'user2', 'senha2', 'user2@teste.com', ''),
(3, 'user3', 'senha3', 'user3@teste.com', ''),
(4, 'user4', 'senha4', 'user4@teste.com', ''),
(5, 'user5', 'senha5', 'user5@teste.com', ''),
(6, 'user6', 'senha6', 'user6@teste.com', ''),
(7, 'user7', 'senha7', 'user7@teste.com', ''),
(8, 'user8', 'senha8', 'user8@teste.com', ''),
(9, 'user9', 'senha9', 'user9@teste.com', ''),
(10, 'user10', 'senha10', 'user10@teste.com', ''),
(11, 'user11', 'senha11', 'user11@teste.com', ''),
(12, 'user12', 'senha12', 'user12@teste.com', ''),
(13, 'user13', 'senha13', 'user13@teste.com', ''),
(14, 'user14', 'senha14', 'user14@teste.com', ''),
(15, 'user15', 'senha15', 'user15@teste.com', ''),
(16, 'user16', 'senha16', 'user16@teste.com', ''),
(17, 'user17', 'senha17', 'user17@teste.com', ''),
(18, 'user18', 'senha18', 'user18@teste.com', ''),
(19, 'user19', 'senha19', 'user19@teste.com', ''),
(20, 'user20', 'senha20', 'user20@teste.com', ''),
(21, 'user21', 'senha21', 'user21@teste.com', ''),
(22, 'user22', 'senha22', 'user22@teste.com', ''),
(23, 'user23', 'senha23', 'user23@teste.com', ''),
(24, 'user24', 'senha24', 'user24@teste.com', ''),
(25, 'user25', 'senha25', 'user25@teste.com', ''),
(26, 'user26', 'senha26', 'user26@teste.com', ''),
(27, 'user27', 'senha27', 'user27@teste.com', ''),
(28, 'user28', 'senha28', 'user28@teste.com', ''),
(29, 'user29', 'senha29', 'user29@teste.com', ''),
(30, 'user30', 'senha30', 'user30@teste.com', ''),
(31, 'user31', 'senha31', 'user31@teste.com', ''),
(32, 'user32', 'senha32', 'user32@teste.com', ''),
(33, 'user33', 'senha33', 'user33@teste.com', ''),
(34, 'user34', 'senha34', 'user34@teste.com', ''),
(35, 'user35', 'senha35', 'user35@teste.com', ''),
(36, 'user36', 'senha36', 'user36@teste.com', ''),
(37, 'user37', 'senha37', 'user37@teste.com', ''),
(38, 'mgray38', '123456', 'mgray38@example.com', ''),
(39, 'dramos39', '123456', 'dramos39@example.com', ''),
(40, 'jgonzales40', '123456', 'jgonzales40@example.com', ''),
(41, 'lfernandez41', '123456', 'lfernandez41@example.com', ''),
(42, 'mramirez42', '123456', 'mramirez42@example.com', ''),
(43, 'jwalker43', '123456', 'jwalker43@example.com', ''),
(44, 'sandersen44', '123456', 'sandersen44@example.com', ''),
(45, 'cdavis45', '123456', 'cdavis45@example.com', ''),
(46, 'lmurphy46', '123456', 'lmurphy46@example.com', ''),
(47, 'mwood47', '123456', 'mwood47@example.com', ''),
(48, 'tphillips48', '123456', 'tphillips48@example.com', ''),
(49, 'brogers49', '123456', 'brogers49@example.com', ''),
(50, 'awatson50', '123456', 'awatson50@example.com', ''),
(51, 'lstewart51', '123456', 'lstewart51@example.com', ''),
(52, 'jprice52', '123456', 'jprice52@example.com', ''),
(53, 'pwatkins53', '123456', 'pwatkins53@example.com', ''),
(54, 'vwebb54', '123456', 'vwebb54@example.com', ''),
(55, 'kfisher55', '123456', 'kfisher55@example.com', ''),
(56, 'jburton56', '123456', 'jburton56@example.com', ''),
(57, 'eburns57', '123456', 'eburns57@example.com', ''),
(58, 'cdixon58', '123456', 'cdixon58@example.com', ''),
(59, 'mdaniel59', '123456', 'mdaniel59@example.com', ''),
(60, 'sbryant60', '123456', 'sbryant60@example.com', ''),
(61, 'mwatkins61', '123456', 'mwatkins61@example.com', ''),
(62, 'zfranklin62', '123456', 'zfranklin62@example.com', ''),
(63, 'pwatson63', '123456', 'pwatson63@example.com', ''),
(64, 'nprice64', '123456', 'nprice64@example.com', ''),
(65, 'scoleman65', '123456', 'scoleman65@example.com', ''),
(66, 'jwatkins66', '123456', 'jwatkins66@example.com', ''),
(67, 'jburns67', '123456', 'jburns67@example.com', ''),
(68, 'rcook68', '123456', 'rcook68@example.com', ''),
(69, 'pburton69', '123456', 'pburton69@example.com', ''),
(70, 'jcampbell70', '123456', 'jcampbell70@example.com', ''),
(71, 'bgarza71', '123456', 'bgarza71@example.com', ''),
(72, 'kmurray72', '123456', 'kmurray72@example.com', '');

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
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `contatos`
--
ALTER TABLE `contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT de tabela `grupos`
--
ALTER TABLE `grupos`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tutores`
--
ALTER TABLE `tutores`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
