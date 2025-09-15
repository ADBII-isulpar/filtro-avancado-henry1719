-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Tempo de geração: 09/09/2025 às 00:40
-- Versão do servidor: 8.0.43
-- Versão do PHP: 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `henry_db`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `Funcionarios`
--

CREATE TABLE `Funcionarios` (
  `ID` int NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `Salario` decimal(10,2) DEFAULT NULL,
  `Departamento` varchar(255) DEFAULT NULL,
  `DepartamentoID` int DEFAULT NULL,
  `ProjetoID` int DEFAULT NULL,
  `GerenteID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `Funcionarios`
--

INSERT INTO `Funcionarios` (`ID`, `Nome`, `Salario`, `Departamento`, `DepartamentoID`, `ProjetoID`, `GerenteID`) VALUES
(1, 'João Silva', 3000.00, 'Vendas', 1, 1, NULL),
(2, 'Maria Santos', 4500.00, 'TI', 3, 2, 1),
(3, 'Pedro Lima', 6000.00, 'TI', 3, 2, 2),
(4, 'Ana Oliveira', 2000.00, 'Vendas', 1, 1, 1),
(5, 'Carlos Souza', 5500.00, 'Marketing', 2, 3, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `Funcionarios`
--
ALTER TABLE `Funcionarios`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `DepartamentoID` (`DepartamentoID`),
  ADD KEY `ProjetoID` (`ProjetoID`),
  ADD KEY `GerenteID` (`GerenteID`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `Funcionarios`
--
ALTER TABLE `Funcionarios`
  ADD CONSTRAINT `Funcionarios_ibfk_1` FOREIGN KEY (`DepartamentoID`) REFERENCES `Departamentos` (`ID`),
  ADD CONSTRAINT `Funcionarios_ibfk_2` FOREIGN KEY (`ProjetoID`) REFERENCES `Projetos` (`ID`),
  ADD CONSTRAINT `Funcionarios_ibfk_3` FOREIGN KEY (`GerenteID`) REFERENCES `Funcionarios` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
