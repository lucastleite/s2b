-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.51a-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema loja_virtual
--

CREATE DATABASE IF NOT EXISTS loja_virtual;
USE loja_virtual;

--
-- Definition of table `administradores`
--

DROP TABLE IF EXISTS `administradores`;
CREATE TABLE `administradores` (
  `idadministrador` int(11) NOT NULL auto_increment,
  `nome` varchar(70) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `email` varchar(150) NOT NULL,
  PRIMARY KEY  (`idadministrador`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administradores`
--

/*!40000 ALTER TABLE `administradores` DISABLE KEYS */;
INSERT INTO `administradores` (`idadministrador`,`nome`,`senha`,`email`) VALUES 
 (1,'Angelo','123456','angelogcb@gmail.com');
/*!40000 ALTER TABLE `administradores` ENABLE KEYS */;


--
-- Definition of table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE `categorias` (
  `idcategoria` int(11) NOT NULL auto_increment,
  `categoria` varchar(30) NOT NULL,
  PRIMARY KEY  (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorias`
--

/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` (`idcategoria`,`categoria`) VALUES 
 (1,'blusas'),
 (2,'vestidos'),
 (3,'calçados');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;


--
-- Definition of table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `idcliente` int(11) NOT NULL auto_increment,
  `nome` varchar(70) NOT NULL,
  `cpf_cnpj` varchar(20) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `complemento` varchar(70) default NULL,
  `bairro` varchar(45) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `cidade` varchar(60) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `telefone` varchar(15) default NULL,
  `celular` varchar(15) default NULL,
  `email` varchar(150) NOT NULL,
  `senha` varchar(45) NOT NULL,
  PRIMARY KEY  (`idcliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clientes`
--

/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;


--
-- Definition of table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE `pedidos` (
  `idpedido` int(11) NOT NULL auto_increment,
  `nome_produto` varchar(70) NOT NULL,
  `tamanho` varchar(1) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor_unitario` float NOT NULL,
  `imagem` varchar(45) NOT NULL,
  `referencia` varchar(45) NOT NULL,
  `produtoid` int(11) NOT NULL,
  `clienteid` int(11) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY  (`idpedido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pedidos`
--

/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;


--
-- Definition of table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE `produtos` (
  `idproduto` int(11) NOT NULL auto_increment,
  `produto` varchar(70) NOT NULL,
  `valor` float NOT NULL,
  `imgp1` varchar(45) NOT NULL,
  `imgg1` varchar(45) NOT NULL,
  `imgp2` varchar(45) default NULL,
  `imgg2` varchar(45) default NULL,
  `imgp3` varchar(45) default NULL,
  `imgg3` varchar(45) default NULL,
  `descricao` text NOT NULL,
  `categoriaid` int(11) NOT NULL,
  `tipo` varchar(1) NOT NULL,
  `tamp` varchar(1) NOT NULL,
  `tamm` varchar(1) NOT NULL,
  `tamg` varchar(1) NOT NULL,
  `estoque` int(11) default NULL,
  `referencia` varchar(45) NOT NULL,
  PRIMARY KEY  (`idproduto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produtos`
--

/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` (`idproduto`,`produto`,`valor`,`imgp1`,`imgg1`,`imgp2`,`imgg2`,`imgp3`,`imgg3`,`descricao`,`categoriaid`,`tipo`,`tamp`,`tamm`,`tamg`,`estoque`,`referencia`) VALUES 
 (1,'camisa verão',25.52,'img1.jpg','img2.jpg','img3.jpg','img4.jpg','img5.jpg','img6.jpg','Camisa dry fit, leve',1,'N','S','S','S',15,'0001');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
