-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05/06/2024 às 02:23
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `vitorhugo`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `adm`
--

CREATE TABLE `adm` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `senha` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `adm`
--

INSERT INTO `adm` (`id`, `usuario`, `senha`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Estrutura para tabela `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `imagem` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `biblioteca`
--

CREATE TABLE `biblioteca` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `imagem` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cidade_alto`
--

CREATE TABLE `cidade_alto` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `imagem` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `nascer_sol`
--

CREATE TABLE `nascer_sol` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `imagem` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `rio`
--

CREATE TABLE `rio` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `imagem` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `sobrenome`, `email`, `senha`) VALUES
(1, 'avvvvvvvvvvvvvv', 'avvvvvvvvvvvvv', 'avvvvvvvvvvvvvvv', 'avvvvvvvvvvvvvvv'),
(2, 'a', 'a', 'a', 'a'),
(3, 'b', 'b', 'b', 'b'),
(4, 'vitor', 'hugo', 'vitor', 'hugo'),
(5, 'vitor', 'hugo', 'hugo', '123'),
(6, 'vitor', 'hugo', 'vitorhugo', '123'),
(7, 'vitor', 'hugo', 'v', '1'),
(8, 'vitor', 'hugo', 'a', '2'),
(9, 'Antedeguemon', 'Antedeguemon', 'Antedeguemon@gmail.com', '123123'),
(10, 's', 's', 's', 'ss'),
(11, 'ç', 'ç', 'ç', 'ç'),
(12, 'Vitor', 'Hugo', 'hugo1', 'hugo1'),
(13, 'p', 'p', 'p', 'p'),
(14, 'o', 'o', 'o', 'o'),
(15, 'nicolas alzhaimer', 'merilio', 'nicolas', '123'),
(16, 'Vitor ', 'Hugo', 'vitor', '123'),
(17, 'rodrigo', 'atanasio', 'rodrigo', '123'),
(18, '1', '1', '1', '1'),
(19, 'lucas ', 'teixeira', 'lucasteixeira20002011@hotmail.com', 'aaaaaaaaa'),
(20, 'escobar', '12', '12', '12'),
(21, 'erick', 'tanto', '1239', '1239'),
(22, 'ss', 'ss', 'ss', 'ss'),
(23, 'luiza helena campos', 'goncalves', 'luizahelena99111@gmail.com', '@Helena1'),
(24, '', '', '', 'ppppppppppppppppppppppp'),
(26, '', '', 'mmm', 'mmm'),
(27, '', '', 'mmm', 'mmm'),
(28, '', '', 'mmm', 'mmm'),
(29, '', '', 'dsvsdv', 'dsvdsvsd'),
(30, '', '', 'dsvdsvsd', 'vdsvdsv'),
(31, '', '', 'kkk', 'ppp'),
(32, '', '', 'ooo', 'ooo'),
(33, '', '', 'bb', 'bbb'),
(34, 'h', 'h', 'h', 'h'),
(35, 'h', 'h', 'h', 'h'),
(36, 'vitor', 'hugo', 'uau', '56');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vegetacao`
--

CREATE TABLE `vegetacao` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `imagem` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `adm`
--
ALTER TABLE `adm`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `biblioteca`
--
ALTER TABLE `biblioteca`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cidade_alto`
--
ALTER TABLE `cidade_alto`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `nascer_sol`
--
ALTER TABLE `nascer_sol`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `rio`
--
ALTER TABLE `rio`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `vegetacao`
--
ALTER TABLE `vegetacao`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `adm`
--
ALTER TABLE `adm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `biblioteca`
--
ALTER TABLE `biblioteca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de tabela `cidade_alto`
--
ALTER TABLE `cidade_alto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `nascer_sol`
--
ALTER TABLE `nascer_sol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `rio`
--
ALTER TABLE `rio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de tabela `vegetacao`
--
ALTER TABLE `vegetacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;