-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Mar-2023 às 05:17
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

-- --------------------------------------------------------

--
-- Estrutura da tabela `caes`
--

CREATE TABLE `caes` (
  `ID` int(10) NOT NULL,
  `NOME` varchar(30) NOT NULL,
  `RAÇA` varchar(30) NOT NULL,
  `IDADE` int(3) NOT NULL,
  `PESO` int(3) NOT NULL,
  `DATA_CADASTRO` date NOT NULL DEFAULT current_timestamp(),
  `SEXO` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Cães';

--
-- Extraindo dados da tabela `caes`
--

INSERT INTO `caes` (`ID`, `NOME`, `RAÇA`, `IDADE`, `PESO`, `DATA_CADASTRO`, `SEXO`) VALUES
(1, 'Bóris', 'SRD', 13, 25, '2023-03-06', 'M');

-- --------------------------------------------------------

--
-- Estrutura da tabela `grupos`
--

CREATE TABLE `grupos` (
  `ID` int(10) NOT NULL,
  `NOME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Grupos de acesso';

--
-- Extraindo dados da tabela `grupos`
--

INSERT INTO `grupos` (`ID`, `NOME`) VALUES
(1, 'admin'),
(3, 'terceiros'),
(2, 'tutores');

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
(1, 'André Junges', 2, '10608953903', '1999-02-18'),
(2, 'Vinícius Junges', 3, '68989889995', '2001-05-16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tutores_caes`
--

CREATE TABLE `tutores_caes` (
  `ID_CAO` int(11) NOT NULL,
  `ID_TUTOR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tutores dos cães';

--
-- Extraindo dados da tabela `tutores_caes`
--

INSERT INTO `tutores_caes` (`ID_CAO`, `ID_TUTOR`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(10) NOT NULL COMMENT 'Identificador do usuário.',
  `LOGIN` varchar(20) NOT NULL COMMENT 'Login para entrar no sistema.',
  `SENHA` varchar(20) NOT NULL COMMENT 'Senha do usuário.',
  `NOME` varchar(70) NOT NULL COMMENT 'Nome do usuário.',
  `EMAIL` varchar(70) NOT NULL COMMENT 'E-mail usado na redefinição de senha.',
  `GRUPO` int(10) NOT NULL COMMENT 'Respectivo grupo da tabela GRUPOS.',
  `DATA_CADASTRO` date NOT NULL DEFAULT current_timestamp() COMMENT 'Data cadastramento.',
  `ULTIMO_ACESSO` date NOT NULL DEFAULT current_timestamp() COMMENT 'Último acesso.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Usuários do sistema';

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`ID`, `LOGIN`, `SENHA`, `NOME`, `EMAIL`, `GRUPO`, `DATA_CADASTRO`, `ULTIMO_ACESSO`) VALUES
(1, 'sysdba', 'masterkey', 'admin', 'admin@helenkeller.com', 1, '2023-03-06', '2023-03-06'),
(2, 'andre', 'andre', 'André Junges', 'andre@helenkeller.com', 1, '2023-03-06', '2023-03-06'),
(3, 'vinicius', 'vinicius', 'Vinícius Junges', 'vinicius@helenkeller.com', 1, '2023-03-06', '2023-03-06');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `caes`
--
ALTER TABLE `caes`
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
  ADD UNIQUE KEY `LOGIN` (`LOGIN`),
  ADD KEY `GRUPO` (`GRUPO`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tutores`
--
ALTER TABLE `tutores`
  ADD CONSTRAINT `tutores_ibfk_1` FOREIGN KEY (`USUARIO`) REFERENCES `usuarios` (`ID`);

--
-- Limitadores para a tabela `tutores_caes`
--
ALTER TABLE `tutores_caes`
  ADD CONSTRAINT `tutores_caes_ibfk_1` FOREIGN KEY (`ID_TUTOR`) REFERENCES `tutores` (`ID`),
  ADD CONSTRAINT `tutores_caes_ibfk_2` FOREIGN KEY (`ID_CAO`) REFERENCES `caes` (`ID`);

--
-- Limitadores para a tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`GRUPO`) REFERENCES `grupos` (`ID`);


--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata para tabela caes
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
