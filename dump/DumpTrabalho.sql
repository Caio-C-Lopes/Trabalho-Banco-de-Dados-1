CREATE DATABASE  IF NOT EXISTS `escola3` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `escola3`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: escola3
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `CodPessoa` int NOT NULL,
  `Matricula_Aluno` varchar(15) NOT NULL,
  `Data_Nascimento` varchar(11) NOT NULL,
  `CodTurma` int NOT NULL,
  KEY `CodPessoa` (`CodPessoa`),
  KEY `CodTurma` (`CodTurma`),
  CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`CodPessoa`) REFERENCES `pessoa` (`CodPessoa`),
  CONSTRAINT `aluno_ibfk_2` FOREIGN KEY (`CodTurma`) REFERENCES `turma` (`CodTurma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (61,'351429660','06/11/2000',11),(69,'263806018','24/12/2006',15),(87,'163765483','16/07/2000',1),(89,'908513445','13/09/2000',16),(163,'619747807','19/09/2005',20),(199,'726488532','19/07/2005',12),(202,'712977668','26/12/2004',5),(204,'191711996','29/12/2002',19),(236,'204776277','27/05/2006',11),(240,'765338156','04/02/2005',10),(241,'221083155','12/11/2005',4),(250,'943942632','25/05/2008',11),(283,'489099492','26/03/2002',10),(295,'257838895','06/10/2003',18),(316,'358313837','18/12/2008',6),(10,'878331912','09/04/2008',15),(28,'784575366','31/08/2000',15),(46,'520897605','18/05/2003',1),(48,'651732565','30/11/2005',11),(60,'618435936','06/10/2001',19),(64,'377340606','23/04/2008',11),(72,'618471416','21/07/2007',5),(80,'901128781','10/12/2004',14),(97,'816103309','07/12/2005',1),(102,'212806210','15/02/2005',17),(121,'428229811','07/02/2007',5),(157,'980304960','16/02/2008',5),(167,'583630189','05/06/2008',20),(181,'933074151','19/04/2008',16),(191,'164090434','02/09/2004',1),(201,'874125496','08/07/2002',3),(206,'696125385','01/12/2005',14),(231,'230915751','13/09/2000',17),(293,'178003718','03/01/2000',11),(330,'618504934','07/02/2005',7),(44,'684013335','08/04/2004',9),(67,'601529145','13/04/2003',5),(73,'317641045','09/04/2001',16),(112,'142774134','16/12/2007',16),(150,'250541874','06/09/2007',12),(158,'641014230','26/10/2001',1),(166,'480416975','01/01/2002',5),(169,'988406901','25/08/2007',12),(262,'682067248','09/07/2003',20),(274,'154613036','08/11/2007',10),(323,'330208031','29/09/2004',18),(37,'233944841','12/12/2006',16),(66,'405431088','21/04/2003',19),(111,'191968748','14/01/2000',1),(128,'706578669','28/06/2006',3),(134,'240215555','19/11/2006',1),(192,'247788889','01/05/2004',20),(227,'766750634','29/08/2008',1),(252,'120741319','13/03/2008',11),(286,'483608789','20/10/2005',13),(303,'607753199','23/10/2008',18),(319,'664083628','12/07/2006',18),(325,'974321619','05/05/2005',4),(4,'902778886','30/12/2004',17),(21,'202064295','15/10/2007',14),(81,'306204371','04/03/2002',19),(85,'994252150','05/05/2006',3),(113,'182602998','07/07/2001',9),(142,'607118044','13/03/2004',11),(218,'638992972','16/04/2007',14),(265,'955350449','14/02/2004',17),(281,'428989673','09/07/2005',14),(324,'283867621','11/03/2004',7),(70,'580684545','02/08/2007',9),(101,'702824500','19/07/2008',7),(122,'612002217','29/09/2005',18),(162,'194838189','17/07/2005',5),(164,'156605612','16/04/2007',18),(174,'572103643','14/11/2004',1),(180,'290268381','11/07/2007',19),(258,'744763570','05/06/2006',19),(300,'322925892','18/01/2008',19),(318,'855545215','25/12/2007',19),(18,'141970047','26/06/2007',5),(186,'416881397','18/02/2002',2),(41,'609057088','11/02/2002',11),(43,'207630269','21/07/2002',4),(76,'635120393','12/01/2001',12),(125,'423147982','04/06/2002',15),(272,'240790220','31/10/2002',10),(306,'688496279','11/10/2006',2),(307,'442944290','22/05/2000',6),(322,'693143661','07/04/2005',11),(47,'545746422','28/01/2005',11),(83,'545133689','07/03/2000',14),(84,'170899344','24/04/2001',20),(119,'972352881','21/07/2008',12),(120,'665852968','27/09/2006',5),(215,'830178303','22/10/2004',12),(301,'112695436','19/12/2001',19),(329,'125161286','22/06/2004',20),(63,'400001755','28/10/2005',13),(71,'691818398','24/03/2001',11),(88,'973772469','18/08/2003',4),(110,'978026506','16/07/2000',12),(115,'142493543','20/03/2001',16),(155,'995567155','03/03/2001',5),(173,'974988872','17/05/2005',1),(178,'259232245','30/06/2000',16),(187,'551512616','23/08/2006',7),(210,'341072757','24/04/2007',5),(211,'848021546','07/07/2001',12),(214,'918977168','24/04/2003',4),(226,'775484204','16/11/2001',9),(277,'622666080','19/11/2001',16),(314,'919474541','17/09/2002',11),(326,'427793252','09/10/2001',4),(40,'248351899','24/01/2007',15),(141,'206227055','20/07/2004',2),(147,'959706298','28/10/2000',18),(220,'374662430','24/02/2008',9),(257,'741255821','16/09/2008',12),(315,'376612389','13/02/2005',17),(320,'971997618','25/12/2006',18),(51,'301925097','02/09/2007',15),(124,'764246197','07/03/2005',12),(131,'776902233','23/05/2008',17),(144,'208055712','20/02/2007',16),(234,'610324175','10/09/2003',18),(237,'266768255','12/10/2003',3),(263,'393824744','10/01/2008',6),(279,'636425981','18/08/2007',15),(137,'577806311','16/08/2006',20),(146,'926305754','03/11/2006',1),(184,'344518770','05/10/2006',4),(212,'111397682','13/01/2008',11),(229,'303021736','03/03/2006',12),(278,'447571983','12/03/2006',10),(297,'465953130','30/04/2004',5),(311,'783406210','04/09/2002',7),(1,'261955819','07/11/2008',3),(2,'381066256','11/03/2008',13),(14,'512580642','04/09/2001',6),(59,'749712310','03/12/2005',12),(75,'203410306','24/05/2007',6),(78,'619280432','30/11/2002',1),(126,'452589503','23/03/2008',17),(140,'227939573','04/04/2008',20),(177,'244902447','21/10/2005',16),(209,'816581416','22/07/2004',10),(256,'647471393','02/03/2003',13),(288,'252931142','24/06/2002',13),(298,'527517378','16/05/2000',16),(77,'717679351','02/09/2004',7),(105,'596418133','30/01/2004',1),(107,'815699022','07/02/2002',9),(132,'594082206','23/05/2002',7),(193,'550917188','23/07/2001',12),(243,'210159090','29/11/2005',11),(259,'503635080','26/06/2000',13),(321,'745435985','21/12/2000',5),(327,'407944323','19/07/2008',10),(117,'596208141','08/04/2006',1),(222,'110556594','28/02/2001',4),(247,'146149934','02/02/2003',17),(251,'982029009','04/01/2004',20),(253,'795409697','02/11/2006',6),(260,'679747852','10/08/2003',6),(299,'637846591','05/05/2003',16),(93,'542562813','05/07/2000',5),(95,'943651852','02/05/2007',1),(149,'508941655','30/09/2005',3),(171,'958934897','04/01/2004',10),(175,'674005429','21/11/2000',14),(221,'991974370','15/12/2006',2),(269,'918921371','04/09/2007',17),(308,'559969627','11/10/2008',6),(36,'301963594','16/05/2001',1),(99,'646697121','13/11/2005',11),(154,'785251704','17/07/2003',17),(161,'284201789','17/03/2008',3),(179,'892220145','28/08/2003',14),(228,'880119891','21/05/2002',16),(292,'327041534','31/05/2003',12),(328,'917497811','09/05/2001',7),(100,'595644627','09/06/2004',15),(123,'147165827','28/08/2005',8),(127,'899157703','11/09/2000',14),(135,'375413458','27/04/2000',12),(139,'188192900','25/11/2006',9),(198,'596490243','23/03/2007',15),(219,'262906967','16/11/2008',9),(230,'443144847','29/05/2001',10),(238,'981365606','03/12/2000',4),(242,'151060932','24/11/2006',1),(273,'593334093','31/10/2005',9),(291,'746347010','06/11/2008',6),(29,'938139945','09/05/2004',9),(56,'273660626','05/02/2002',3),(98,'634999524','02/07/2004',16),(118,'353324822','13/09/2004',13),(148,'165115638','13/01/2007',10),(151,'224539414','09/10/2008',3),(160,'699046236','14/09/2000',8),(183,'594977343','20/05/2000',9),(223,'842271917','27/08/2007',18),(264,'276596140','13/08/2002',7),(282,'244536283','26/04/2007',5),(313,'933797212','03/04/2003',14),(20,'811702702','03/04/2006',15),(190,'359798502','04/10/2001',17),(195,'307961361','27/01/2007',8),(254,'653120675','30/09/2006',10),(296,'479844739','17/12/2003',20),(116,'502738376','18/05/2005',12),(129,'484120167','24/10/2002',6),(176,'458963568','01/04/2005',12),(205,'567091306','24/08/2001',10),(244,'356985031','29/05/2003',7),(261,'803095778','26/04/2003',6),(280,'588250613','12/04/2004',7),(13,'489033645','26/05/2000',13),(68,'807971144','31/05/2001',6),(82,'182657267','03/10/2004',9),(143,'448292999','15/02/2008',15),(156,'814729557','29/02/2008',8),(185,'918532815','11/11/2001',10),(194,'214687175','13/06/2006',9),(255,'524263711','03/08/2007',11),(266,'407148494','05/10/2004',18),(268,'342864727','24/10/2004',1),(294,'543736301','22/10/2002',9),(304,'956603340','10/09/2004',11),(309,'696949095','03/12/2006',13),(312,'145009308','02/01/2004',13),(19,'202898369','15/01/2004',17),(38,'799656829','11/01/2005',19),(52,'420669392','19/11/2002',13),(133,'891624527','14/10/2000',6),(203,'103924066','04/10/2005',16),(233,'989437283','06/01/2005',14),(271,'410914798','09/03/2000',5),(285,'729072658','05/02/2000',9),(24,'831881588','14/09/2008',19),(53,'856430056','04/01/2003',7),(74,'159510718','06/12/2007',5),(79,'258365397','31/12/2007',12),(104,'617898046','10/10/2007',7),(106,'832790669','20/06/2004',20),(130,'515372293','27/12/2003',11),(136,'924793296','25/07/2004',20),(208,'108415434','16/05/2000',16),(213,'734022176','10/02/2007',17),(217,'302591354','27/06/2005',16),(225,'908608635','12/05/2008',12),(232,'824409375','18/11/2008',14),(245,'272627073','30/12/2005',16),(246,'331382376','17/06/2007',12),(248,'533577337','03/10/2002',1),(249,'850050622','19/02/2001',13),(287,'575390611','06/02/2002',13),(289,'308676128','10/10/2003',20),(290,'750545695','15/04/2001',17),(305,'192970254','21/06/2003',12),(45,'622749577','28/09/2003',15),(57,'748949960','25/03/2007',13),(86,'932027377','31/01/2004',2),(109,'148490636','28/05/2007',7),(114,'101134552','05/11/2001',14),(145,'538976798','29/05/2005',13),(152,'489824935','05/02/2000',6),(159,'834753746','21/08/2007',18),(168,'759607161','18/04/2000',9),(172,'392871511','10/09/2002',16),(182,'152747904','25/12/2005',5),(196,'412670870','11/04/2007',5),(197,'912485549','06/01/2006',20),(207,'430969230','15/04/2000',3),(302,'591073456','08/12/2003',14),(310,'481553708','21/03/2006',19),(35,'300408970','10/02/2007',7),(92,'143374685','24/03/2004',15),(170,'146716313','21/05/2006',8),(284,'561843584','11/08/2004',10),(317,'903296261','30/11/2006',18),(91,'290720887','25/08/2007',13),(138,'112405305','18/02/2000',16),(200,'984052202','03/10/2008',14),(235,'181035653','06/05/2002',19),(275,'627484262','20/08/2003',14),(16,'218245472','18/05/2000',17),(42,'865766869','29/05/2005',6),(90,'406820937','03/03/2003',18),(103,'914674683','29/12/2005',6),(153,'468687698','27/01/2008',16),(188,'425412461','28/02/2004',19),(216,'938964996','17/07/2000',20),(239,'915196573','13/10/2007',12),(276,'839715804','22/11/2000',3),(65,'254484880','26/02/2007',6),(108,'674922354','25/01/2001',18),(189,'830353972','12/03/2006',12),(224,'414857655','05/08/2001',9),(267,'777443595','30/08/2004',4),(270,'203843902','04/07/2006',10);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidade` (
  `CodCidade` int NOT NULL,
  `Nome` varchar(100) NOT NULL,
  PRIMARY KEY (`CodCidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1200336,'Mâncio Lima'),(1502301,'Capitão Poço'),(2109452,'Raposa'),(2111078,'São João do Soter'),(2301000,'Aquiraz'),(2408706,'Paraú'),(2503308,'Cachoeira dos Índios'),(2504009,'Campina Grande'),(2513703,'Santa Rita'),(2707909,'Santa Luzia do Norte'),(2911006,'Floresta Azul'),(2917334,'Iuiú'),(3140555,'Mata Verde'),(3145356,'Novo Oriente de Minas'),(3169505,'Tumiritinga'),(3170529,'Urucuia'),(3526803,'Lençóis Paulista'),(3529302,'Matão'),(4100608,'Alto Paraná'),(4114203,'Mandaguari'),(4117255,'Nova Prata do Iguaçu'),(4123956,'Santa Mônica'),(4201901,'Aurora'),(4203402,'Campo Belo do Sul'),(4304358,'Candiota'),(4315453,'Relvado'),(4318408,'São Jerônimo'),(5200258,'Águas Lindas de Goiás'),(5209705,'Hidrolândia'),(5221403,'Trindade');
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contato`
--

DROP TABLE IF EXISTS `contato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contato` (
  `Nome` varchar(100) NOT NULL,
  `Telefone` varchar(15) DEFAULT NULL,
  `CodAluno` int NOT NULL,
  PRIMARY KEY (`Nome`),
  KEY `CodAluno` (`CodAluno`),
  CONSTRAINT `contato_ibfk_1` FOREIGN KEY (`CodAluno`) REFERENCES `pessoa` (`CodPessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contato`
--

LOCK TABLES `contato` WRITE;
/*!40000 ALTER TABLE `contato` DISABLE KEYS */;
INSERT INTO `contato` VALUES ('Alana Nascimento','65801942785',308),('Alexandre Fernandes','89451207694',310),('Alexia Rodrigues','38945072683',319),('Aline Paes Oliveira','6124474485',214),('Ana Almeida Araujo','61103747466',294),('Ana Almeida Santos','51294257087',84),('Ana Araujo Barros','11453258681',97),('Ana Araujo Pereira','51596112366',149),('Ana Barros Teixeira','31928806855',59),('Ana Beatriz Peixoto','76831502407',309),('Ana Júlia da Cunha','97641580211',318),('Ana Júlia Silva','30152687912',313),('Ana Lima Araujo','91388531777',263),('Ana Lima Pereira','61500648269',159),('Ana Lívia Sales','6387154901',329),('Ana Oliveira Araujo','61672575896',178),('Ana Oliveira Souza','41669305321',269),('Ana Santos Teixeira','31200275125',184),('Ana Teixeira Pereira','41133957012',186),('Benício Costela','92756310859',321),('Bruno Almeida Santos','81449919756',201),('Bruno Araujo Martins','71963422738',244),('Bruno Araujo Silva','11952737142',192),('Bruno Fernandes Pereira','11278069604',105),('Bruno Pereira Souza','61927019809',238),('Bruno Rodrigues Almeida','21860371506',187),('Bruno Santos Almeida','11750254817',249),('Bruno Silva Pereira','91741386414',209),('Bruno Silva Teixeira','71501357933',183),('Bruno Souza Santos','81995449565',163),('Bruno Teixeira Souza','21525235348',295),('Calebe Barros','36401259833',304),('Carlos Costa Costa','51219179808',162),('Carlos Oliveira Lima','41099037230',180),('Carlos Pereira Pereira','11494453618',188),('Carlos Pereira Rodrigues','81211069085',199),('Carlos Santos Araujo','61961198203',115),('Carlos Teixeira Araujo','51290024883',157),('Carlos Teixeira Souza','81541209418',268),('Cauã da Rocha','32658947038',320),('Daniela Almeida Fernandes','81951266696',46),('Daniela Araujo Barros','81885751353',264),('Daniela Barros Silva','31728428808',283),('Daniela Costa Fernandes','51099075928',239),('Daniela Costa Pereira','71480100029',24),('Daniela Costa Santos','81898918702',293),('Daniela Lima Pereira','51805950176',18),('Daniela Oliveira Barros','51485049481',265),('Daniela Santos Fernandes','51332905055',219),('Daniela Souza Pereira','51330283142',29),('Davi Melo','89324067583',303),('Diogo Barbosa','3592481606',305),('Diogo Gomes','90685273474',314),('Eliane Almeida Martins','21864063981',190),('Eliane Barros Silva','71946073240',77),('Eliane Costa Pereira','41098115302',231),('Eliane Lima Teixeira','51334197675',212),('Eliane Martins Almeida','71573728877',279),('Eliane Martins Araujo','21827990269',43),('Eliane Martins Lima','81809600288',200),('Eliane Oliveira Almeida','61057406827',53),('Eliane Oliveira Araujo','31432791644',205),('Eliane Rodrigues Souza','61429210956',285),('Eliane Santos Santos','41308496568',81),('Eliane Silva Costa','91444933324',144),('Eliane Teixeira Souza','91019511333',143),('Elisa Freitas','62318540942',311),('Emilly Alves','72346901822',322),('Enzo Moreira','4173295634',325),('Fernando Oliveira Pereira','21478628266',65),('Fernando Oliveira Souza','71650910973',44),('Fernando Pereira Barros','11483417758',297),('Fernando Silva Almeida','51174576785',291),('Fernando Teixeira Silva','71506631383',213),('Gabriela Almeida Teixeira','41336775526',102),('Gabriela Araujo Lopes','61891434729',168),('Gabriela Araujo Martins','61804568077',100),('Gabriela Costa Pereira','31266568399',74),('Gabriela Santos Santos','61119041286',109),('Gabriela Santos Teixeira','11789464353',240),('Gabriela Silva Rodrigues','51561134068',271),('Gabriela Teixeira Costa','41890495352',246),('Henrique Araujo Silva','41115004582',89),('Henrique Costa Costa','71265542490',207),('Henrique Fernandes Teixeira','31301401732',136),('Henrique Oliveira Almeida','21311766858',220),('Henrique Oliveira Martins','81501888325',287),('Henrique Pereira Martins','31478845516',196),('Henrique Pereira Teixeira','81863816140',208),('Henrique Rodrigues Almeida','61300484942',198),('Henrique Santos Costa','71147624211',228),('Henrique Santos Teixeira','71543996319',68),('Henrique Teixeira Almeida','21218900016',142),('Isabela Araujo Almeida','11633565171',41),('Isabela Araujo Martins','51772815574',229),('Isabela Barros Rodrigues','81338041464',111),('Isabela Lima Fernandes','11075139016',185),('Isabela Pereira Santos','31655265975',35),('Isabela Rodrigues Fernandes','91273407456',121),('Isabela Rodrigues Oliveira','71904616624',139),('Isabela Santos Teixeira','21330546476',90),('Joaquim Fernandes','70863259103',323),('José Almeida Almeida','31262759936',248),('José Almeida Costa','21140273959',38),('José Almeida Oliveira','61435402179',243),('José Araujo Silva','71077173638',262),('José Lima Fernandes','21771619882',296),('José Martins Rodrigues','21805438029',110),('José Oliveira Martins','81446142629',70),('José Pereira Lima','21927096387',181),('José Rodrigues Martins','81631668898',42),('José Rodrigues Pereira','81706472731',250),('José Silva Oliveira','61990875785',258),('José Souza Fernandes','91397532720',286),('José Souza Rodrigues','61955255689',140),('Karla Almeida Costa','71885921398',179),('Karla Almeida Rodrigues','31662246839',21),('Karla Fernandes Fernandes','41710584520',278),('Karla Fernandes Lima','31821358995',175),('Karla Lima Lima','31311172188',120),('Karla Martins Costa','91683320688',270),('Karla Pereira Araujo','21874986764',52),('Karla Pereira Martins','11803622272',129),('Karla Rodrigues Souza','21916163388',224),('Karla Santos Teixeira','71326998331',260),('Karla Teixeira Santos','61949098158',290),('Leandro Mendes','80594621305',307),('Leonardo Almeida Rodrigues','91454250616',85),('Leonardo Almeida Souza','81349102118',206),('Leonardo Araujo Araujo','21559920900',167),('Leonardo Araujo Barros','41379954180',145),('Leonardo Costa Souza','21556634654',235),('Leonardo Cunha Araujo','62313211102',13),('Leonardo Fernandes Fernandes','81732236501',298),('Leonardo Martins Teixeira','11620975377',146),('Leonardo Pereira Arrais','21099107663',193),('Leonardo Teixeira Lima','81428925772',103),('Leonardo Teixeira Rodrigues','31931894169',273),('Lorena Araujo Silva','47265031664',192),('Lucas Teixeira Barros','65398470552',91),('Luiz Fernando Silva','68431509775',317),('Luiz Miguel Porto','10763529443',301),('Manuela Dias','59684071310',326),('Marcela Farias','21365940870',328),('Maria Costa Lopes','83352844258',13),('Maria Eduarda da Conceição','10854379657',312),('Maria Julia Novaes','17463582035',315),('Maria Vitória da Conceição','67893401575',327),('Mariana Almeida Costa','51317332383',204),('Mariana Araujo Almeida','61518558403',86),('Mariana Araujo Lima','21670662570',79),('Mariana Araujo Silva','61293147097',72),('Mariana Costa Rodrigues','21436598425',156),('Mariana Costa Teixeira','21239651826',254),('Mariana Fernandes Barros','11555574756',48),('Mariana Martins Silva','61793720169',288),('Mariana Oliveira Fernandes','61644289320',137),('Mariana Oliveira Paula','91541440486',280),('Mariana Pereira Santos','71173417983',247),('Mariana Rodrigues Rodrigues','91338948366',256),('Mariana Silva Fernandes','61967089014',169),('Mariana Silva Martins','21326614613',93),('Mariana Souza Souza','11931699117',275),('Nathan Costa Almeida','71105512564',69),('Nathan Costa Pereira','91424604999',194),('Nathan da Cunha','7659248383',330),('Nathan Fernandes Barros','81186755433',47),('Nathan Fernandes Silva','91470177659',19),('Nathan Fernandes Teixeira','31247139882',124),('Nathan Lima Barros','51265195950',37),('Nathan Lima Martins','51638839478',138),('Nathan Santos Leme','21770672589',122),('Nathan Silva Araujo','41345648928',272),('Nathan Teixeira Almeida','21517532712',88),('Nathan Teixeira Barros','31126200189',299),('Nicole da Mata','73289160440',324),('Olívia Almeida Barros','81742611882',202),('Olívia Almeida Souza','81304168595',153),('Olívia Almeida Teixeira','81537686183',281),('Olivia Costa','65903287492',306),('Olívia Oliveira Almeida','41413281843',164),('Olívia Santos Santos','71027661478',117),('Olívia Souza Silva','91320230997',123),('Olívia Souza Souza','81067409309',112),('Olívia Teixeira Oliveira','41097456384',92),('Paulo Costa Fernandes','21483079247',83),('Paulo Fernandes Lopes','11726911477',191),('Paulo Fernandes Oliveira','41890056159',233),('Paulo Fernandes Pereira','31865580387',99),('Paulo Fernandes Santos','51581019014',274),('Paulo Lima Martins','41841439758',261),('Paulo Martins Martins','41028817741',113),('Paulo Martins Pereira','81122021478',266),('Paulo Pereira Teixeira','21277452773',216),('Paulo Rodrigues Pereira','41876038570',282),('Paulo Santos Silva','21296622007',104),('Paulo Santos Teixeira','31241808778',277),('Paulo Silva Oliveira','61818845866',232),('Paulo Souza Souza','51304251341',133),('Queila Almeida Teixeira','21757498322',73),('Queila Barros Pereira','71149896020',16),('Queila Costa Fernandes','21247325442',71),('Queila Fernandes Lima','81699816388',141),('Queila Martins Almeida','51094745704',51),('Queila Rodrigues Pereira','41868731150',78),('Queila Santos Barros','41585208558',197),('Queila Silva Almeida','71826304065',176),('Queila Souza Almeida','71512890403',252),('Queila Teixeira Martins','91595244016',154),('Rafael Araujo Barros','11482688891',75),('Rafael Costa Souza','71496677461',67),('Rafael Oliveira Pereira','51898590540',155),('Rafael Pereira Costa','81900631402',131),('Rafael Santos Costa','21467612422',195),('Rafael Silva Araujo','11460418680',234),('Rafael Teixeira Barros','81596290336',91),('Ryan Rodrigues','64213870987',302),('Sabrina Araujo Pereira','21222754153',241),('Sabrina Araujo Santos','71804914575',127),('Sabrina Martins Souza','21127464790',242),('Sabrina Oliveira Rodrigues','71566197902',80),('Sabrina Oliveira Santos','81368482760',225),('Sabrina Rodrigues Barros','31573039942',95),('Sabrina Santos Costa','91533387088',182),('Sabrina Teixeira Martins','41891095192',276),('Sara Barros Pereira','28208927631',16),('Theo da Conceição','4793165206',316),('Thiago Almeida Barros','51279337881',132),('Thiago Barros Fernandes','81446349759',160),('Thiago Costa Oliveira','71865589567',28),('Thiago Oliveira Fernandes','71689431126',98),('Thiago Pereira Santos','41548645910',174),('Thiago Rodrigues Almeida','51787006335',284),('Thiago Teixeira Silva','71701559782',170),('Ursula Barros Silva','51473028597',245),('Ursula Costa Santos','91010565454',66),('Ursula Fernandes Oliveira','91647313790',56),('Ursula Lima Lima','51144694302',300),('Ursula Martins Rodrigues','81679429910',148),('Ursula Pereira Fernandes','11886365891',150),('Ursula Rodrigues Fernandes','61175843012',257),('Ursula Rodrigues Souza','81991896319',106),('Ursula Silva Oliveira','91942959592',173),('Ursula Souza Oliveira','61478790109',214),('Victor Almeida Pereira','71648936099',108),('Victor Almeida Silva','21180952433',203),('Victor Araujo Almeida','21573643093',36),('Victor Fernandes Barros','51734564745',60),('Victor Oliveira Martins','51734155958',172),('Victor Pereira Rodrigues','71732956950',130),('Victor Santos Pereira','61680123595',107),('Victor Souza Santos','51664603768',126),('Vitor Araujo Barros','31281092184',145),('Wesley Almeida Rodrigues','61764327707',40),('Wesley Almeida Silva','21534965775',289),('Wesley Almeida Teixeira','81331860335',151),('Wesley Costa Fernandes','11991371659',267),('Wesley Costa Teixeira','11634087542',152),('Wesley Lima Fernandes','11439844846',87),('Wesley Oliveira Almeida','91203278252',236),('Wesley Oliveira Lima','21219889291',251),('Wesley Pereira Souza','31680354055',166),('Wesley Rodrigues Araujo','11242077954',20),('Wesley Silva Souza','71242739729',222),('Xênia Almeida Santos','31591444257',14),('Xênia Araujo Araujo','91112963017',221),('Xênia Fernandes Santos','31690968456',147),('Xênia Lima Costa','41779328693',76),('Xênia Silva Santos','91522740298',227),('Xênia Souza Martins','81338786366',128),('Xênia Souza Oliveira','51171073113',253),('Yara Almeida Martins','21006492654',210),('Yara Araujo Costa','11810696970',237),('Yara Fernandes Teixeira','21940950475',57),('Yara Oliveira Costa','21006115766',218),('Yara Pereira Oliveira','31297122835',255),('Yara Rodrigues Teixeira','71820564033',217),('Yara Silva Costa','41459522719',171),('Zeca Almeida Lima','81925116048',177),('Zeca Almeida Teixeira','91542305565',82),('Zeca Araujo Barros','81325837436',161),('Zeca Araujo Oliveira','21986459707',114),('Zeca Barros Teixeira','81674868666',125),('Zeca Costa Araujo','61273472593',13),('Zeca Costa Souza','91739892159',259),('Zeca Fernandes Almeida','71397770622',230),('Zeca Lima Araujo','21744238019',215),('Zeca Lima Rodrigues','71594768890',158),('Zeca Lima Santos','41207416142',292),('Zeca Rodrigues Souza','21571013265',226),('Zeca Santos Fernandes','21533087491',223),('Zeca Silva Costa','71781488191',116),('Zeca Silva Souza','71809831334',189),('Zeca Souza Teixeira','31088870832',211),('Zeca Teixeira Teixeira','21738003755',45);
/*!40000 ALTER TABLE `contato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina` (
  `Nome` varchar(50) DEFAULT NULL,
  `CodDisciplina` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`CodDisciplina`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES ('Matemática',1),('Português',2),('Biologia',3),('História',4),('Geografia',5),('Sociologia',6),('Inglês',7),('Artes',8),('Física',9),('Química',10);
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escola`
--

DROP TABLE IF EXISTS `escola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `escola` (
  `Nome` varchar(100) NOT NULL,
  `CodEscola` int NOT NULL AUTO_INCREMENT,
  `CodCidade` int NOT NULL,
  `CodDiretor` int NOT NULL,
  PRIMARY KEY (`CodEscola`),
  KEY `CodCidade` (`CodCidade`),
  KEY `CodDiretor` (`CodDiretor`),
  CONSTRAINT `escola_ibfk_1` FOREIGN KEY (`CodCidade`) REFERENCES `cidade` (`CodCidade`),
  CONSTRAINT `escola_ibfk_2` FOREIGN KEY (`CodDiretor`) REFERENCES `pessoa` (`CodPessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escola`
--

LOCK TABLES `escola` WRITE;
/*!40000 ALTER TABLE `escola` DISABLE KEYS */;
INSERT INTO `escola` VALUES ('Centro Educacional Bem Me Quer',1,2111078,58),('Colégio Objetivo do Soter',2,2111078,55),('Escola Municipal São João Batista',3,2111078,12),('Colégio Futuro Brilhante',4,2408706,23),('Escola Adventista Caminho Certo',5,2408706,34),('Escola Bem Mar',6,2911006,11),('Centro Educacional Floresta Encantada',7,2911006,27),('Colégio Saber Viver',8,4315453,15),('Escola Municipal Pingo de Gente',9,4315453,49),('Colégio Prata da Casa',10,4117255,33);
/*!40000 ALTER TABLE `escola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ministra`
--

DROP TABLE IF EXISTS `ministra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ministra` (
  `CodProfessor` int NOT NULL,
  `CodDisciplina_Ministrada` int NOT NULL,
  `CodTurma_Ministrada` int NOT NULL,
  KEY `CodProfessor` (`CodProfessor`),
  KEY `CodDisciplina_Ministrada` (`CodDisciplina_Ministrada`),
  KEY `CodTurma_Ministrada` (`CodTurma_Ministrada`),
  CONSTRAINT `ministra_ibfk_1` FOREIGN KEY (`CodProfessor`) REFERENCES `pessoa` (`CodPessoa`),
  CONSTRAINT `ministra_ibfk_2` FOREIGN KEY (`CodDisciplina_Ministrada`) REFERENCES `disciplina` (`CodDisciplina`),
  CONSTRAINT `ministra_ibfk_3` FOREIGN KEY (`CodTurma_Ministrada`) REFERENCES `turma` (`CodTurma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ministra`
--

LOCK TABLES `ministra` WRITE;
/*!40000 ALTER TABLE `ministra` DISABLE KEYS */;
INSERT INTO `ministra` VALUES (9,2,3),(54,8,11),(94,3,5),(17,10,4),(55,8,11),(31,1,17),(11,1,16),(32,9,11),(55,8,14),(33,6,18),(25,6,20),(58,9,10),(50,5,8),(55,2,12),(17,2,2),(12,6,13),(12,7,18),(25,7,9),(50,10,19),(3,6,15),(5,7,17),(31,10,12),(31,7,1),(62,2,6),(15,9,14),(9,1,5),(17,6,20),(94,7,4),(33,4,1),(22,8,2),(17,5,18),(94,4,8),(15,1,12),(50,2,2),(30,3,7),(30,6,3),(22,4,10),(22,3,11),(3,3,11);
/*!40000 ALTER TABLE `ministra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `CodPessoa` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) NOT NULL,
  `Telefone` char(11) DEFAULT NULL,
  `CodCidade` int NOT NULL,
  PRIMARY KEY (`CodPessoa`),
  KEY `CodCidade` (`CodCidade`),
  CONSTRAINT `pessoa_ibfk_1` FOREIGN KEY (`CodCidade`) REFERENCES `cidade` (`CodCidade`)
) ENGINE=InnoDB AUTO_INCREMENT=331 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (1,'Ursula Lima Santos','91140348085',3145356),(2,'Carlos Pereira Araujo','71236248063',3145356),(3,'Victor Teixeira Oliveira','31344268763',4318408),(4,'Paulo Oliveira Martins','51882550462',2301000),(5,'Thiago Martins Teixeira','91168693035',4315453),(6,'Isabela Souza Almeida','31264579388',4315453),(7,'Wesley Oliveira Silva','71619911524',4123956),(8,'Olívia Rodrigues Teixeira','81034894269',3169505),(9,'Carlos Almeida Souza','91694856822',2911006),(10,'Queila Martins Pereira','21661786556',4315453),(11,'Isabela Barros Almeida','51653895276',3169505),(12,'Daniela Oliveira Martins','91338685399',4304358),(13,'Zeca Costa Araujo','61273472593',4201901),(14,'Xênia Almeida Santos','31591444257',3145356),(15,'Ursula Almeida Oliveira','11201276245',4304358),(16,'Queila Barros Pereira','71149896020',5209705),(17,'Karla Barros Pereira','61459460261',4203402),(18,'Daniela Lima Pereira','51805950176',2503308),(19,'Nathan Fernandes Silva','91470177659',4203402),(20,'Wesley Rodrigues Araujo','11242077954',4315453),(21,'Karla Almeida Rodrigues','31662246839',2301000),(22,'Bruno Oliveira Almeida','91337670117',2408706),(23,'Olívia Santos Rodrigues','61577307376',3526803),(24,'Daniela Costa Pereira','71480100029',4304358),(25,'Isabela Rodrigues Souza','91747106355',2504009),(26,'Wesley Almeida Almeida','71422786190',2917334),(27,'Sabrina Rodrigues Teixeira','71142128197',2504009),(28,'Thiago Costa Oliveira','71865589567',4315453),(29,'Daniela Souza Pereira','51330283142',4114203),(30,'Paulo Lima Costa','91948316760',5200258),(31,'Karla Fernandes Costa','51668504509',2911006),(32,'Ursula Oliveira Rodrigues','51697103183',3526803),(33,'Wesley Martins Pereira','31889964149',4318408),(34,'Leonardo Pereira Fernandes','71987478767',3170529),(35,'Isabela Pereira Santos','31655265975',4318408),(36,'Victor Araujo Almeida','21573643093',3529302),(37,'Nathan Lima Barros','51265195950',2111078),(38,'José Almeida Costa','21140273959',4203402),(39,'Nathan Santos Almeida','61710347022',2917334),(40,'Wesley Almeida Rodrigues','61764327707',4315453),(41,'Isabela Araujo Almeida','11633565171',2504009),(42,'José Rodrigues Martins','81631668898',5209705),(43,'Eliane Martins Araujo','21827990269',2111078),(44,'Fernando Oliveira Souza','71650910973',2109452),(45,'Zeca Teixeira Teixeira','21738003755',4315453),(46,'Daniela Almeida Fernandes','81951266696',1502301),(47,'Nathan Fernandes Barros','81186755433',2513703),(48,'Mariana Fernandes Barros','11555574756',1502301),(49,'Xênia Martins Araujo','21270792870',5221403),(50,'Zeca Costa Santos','31763934236',2408706),(51,'Queila Martins Almeida','51094745704',4315453),(52,'Karla Pereira Araujo','21874986764',4203402),(53,'Eliane Oliveira Almeida','61057406827',4304358),(54,'Zeca Barros Martins','71977385914',5221403),(55,'Mariana Araujo Araujo','31086825420',2111078),(56,'Ursula Fernandes Oliveira','91647313790',4114203),(57,'Yara Fernandes Teixeira','21940950475',4315453),(58,'Ana Silva Lima','41014264816',2111078),(59,'Ana Barros Teixeira','31928806855',3145356),(60,'Victor Fernandes Barros','51734564745',1502301),(61,'Gabriela Costa Barros','91457176250',1200336),(62,'Yara Araujo Pereira','41924871285',5200258),(63,'Isabela Silva Oliveira','81739419606',2707909),(64,'Bruno Souza Rodrigues','81775007952',1502301),(65,'Fernando Oliveira Pereira','21478628266',5221403),(66,'Ursula Costa Santos','91010565454',2111078),(67,'Rafael Costa Souza','71496677461',2109452),(68,'Henrique Santos Teixeira','71543996319',4201901),(69,'Nathan Costa Almeida','71105512564',4315453),(70,'José Oliveira Martins','81446142629',2408706),(71,'Queila Costa Fernandes','21247325442',2707909),(72,'Mariana Araujo Silva','61293147097',1502301),(73,'Queila Almeida Teixeira','21757498322',2109452),(74,'Gabriela Costa Pereira','31266568399',4304358),(75,'Rafael Araujo Barros','11482688891',3145356),(76,'Xênia Lima Costa','41779328693',2504009),(77,'Eliane Barros Silva','71946073240',3169505),(78,'Queila Rodrigues Pereira','41868731150',3145356),(79,'Mariana Araujo Lima','21670662570',4304358),(80,'Sabrina Oliveira Rodrigues','71566197902',1502301),(81,'Eliane Santos Santos','41308496568',2301000),(82,'Zeca Almeida Teixeira','91542305565',4201901),(83,'Paulo Costa Fernandes','21483079247',2513703),(84,'Ana Almeida Santos','51294257087',2513703),(85,'Leonardo Almeida Rodrigues','91454250616',2301000),(86,'Mariana Araujo Almeida','61518558403',2111078),(87,'Wesley Lima Fernandes','11439844846',1200336),(88,'Nathan Teixeira Almeida','21517532712',2111078),(89,'Henrique Araujo Silva','41115004582',1200336),(90,'Isabela Santos Teixeira','21330546476',5209705),(91,'Rafael Teixeira Barros','81596290336',5200258),(92,'Olívia Teixeira Oliveira','41097456384',4315453),(93,'Mariana Silva Martins','21326614613',3526803),(94,'Henrique Souza Oliveira','11527937461',3170529),(95,'Sabrina Rodrigues Barros','31573039942',3526803),(96,'Nathan Lima Rodrigues','91576509347',4123956),(97,'Ana Araujo Barros','11453258681',1502301),(98,'Thiago Oliveira Fernandes','71689431126',4114203),(99,'Paulo Fernandes Pereira','31865580387',3529302),(100,'Gabriela Araujo Martins','61804568077',4315453),(101,'Gabriela Almeida Souza','81503371210',2408706),(102,'Gabriela Almeida Teixeira','41336775526',1502301),(103,'Leonardo Teixeira Lima','81428925772',5209705),(104,'Paulo Santos Silva','21296622007',4304358),(105,'Bruno Fernandes Pereira','11278069604',3169505),(106,'Ursula Rodrigues Souza','81991896319',4304358),(107,'Victor Santos Pereira','61680123595',3169505),(108,'Victor Almeida Pereira','71648936099',5221403),(109,'Gabriela Santos Santos','61119041286',4315453),(110,'José Martins Rodrigues','21805438029',2707909),(111,'Isabela Barros Rodrigues','81338041464',2111078),(112,'Olívia Souza Souza','81067409309',2109452),(113,'Paulo Martins Martins','41028817741',2301000),(114,'Zeca Araujo Oliveira','21986459707',4315453),(115,'Carlos Santos Araujo','61961198203',2707909),(116,'Zeca Silva Costa','71781488191',4123956),(117,'Olívia Santos Santos','71027661478',3170529),(118,'Karla Fernandes Souza','61215634456',4114203),(119,'Henrique Rodrigues Silva','51189942154',2513703),(120,'Karla Lima Lima','31311172188',2513703),(121,'Isabela Rodrigues Fernandes','91273407456',1502301),(122,'Nathan Santos Leme','21770672589',2408706),(123,'Olívia Souza Silva','91320230997',2408706),(124,'Nathan Fernandes Teixeira','31247139882',2917334),(125,'Zeca Barros Teixeira','81674868666',4315453),(126,'Victor Souza Santos','51664603768',3145356),(127,'Sabrina Araujo Santos','71804914575',4100608),(128,'Xênia Souza Martins','81338786366',2111078),(129,'Karla Pereira Martins','11803622272',4123956),(130,'Victor Pereira Rodrigues','71732956950',4304358),(131,'Rafael Pereira Costa','81900631402',2917334),(132,'Thiago Almeida Barros','51279337881',3169505),(133,'Paulo Souza Souza','51304251341',4203402),(134,'Gabriela Santos Fernandes','61801215322',2111078),(135,'Paulo Teixeira Teixeira','71394285879',4100608),(136,'Henrique Fernandes Teixeira','31301401732',4304358),(137,'Mariana Oliveira Fernandes','61644289320',3140555),(138,'Nathan Lima Martins','51638839478',5200258),(139,'Isabela Rodrigues Oliveira','71904616624',4100608),(140,'José Souza Rodrigues','61955255689',3145356),(141,'Queila Fernandes Lima','81699816388',2111078),(142,'Henrique Teixeira Almeida','21218900016',2301000),(143,'Eliane Teixeira Souza','91019511333',4315453),(144,'Eliane Silva Costa','91444933324',2917334),(145,'Leonardo Araujo Barros','41379954180',4315453),(146,'Leonardo Martins Teixeira','11620975377',3140555),(147,'Xênia Fernandes Santos','31690968456',2911006),(148,'Ursula Martins Rodrigues','81679429910',4114203),(149,'Ana Araujo Pereira','51596112366',3526803),(150,'Ursula Pereira Fernandes','11886365891',2109452),(151,'Wesley Almeida Teixeira','81331860335',4114203),(152,'Wesley Costa Teixeira','11634087542',4315453),(153,'Olívia Almeida Souza','81304168595',5209705),(154,'Queila Teixeira Martins','91595244016',3529302),(155,'Rafael Oliveira Pereira','51898590540',2707909),(156,'Mariana Costa Rodrigues','21436598425',2408706),(157,'Carlos Teixeira Araujo','51290024883',1502301),(158,'Zeca Lima Rodrigues','71594768890',2109452),(159,'Ana Lima Pereira','61500648269',4315453),(160,'Thiago Barros Fernandes','81446349759',2408706),(161,'Zeca Araujo Barros','81325837436',3529302),(162,'Carlos Costa Costa','51219179808',2408706),(163,'Bruno Souza Santos','81995449565',1200336),(164,'Olívia Oliveira Almeida','41413281843',2408706),(165,'Rafael Oliveira Lima','31530696262',4117255),(166,'Wesley Pereira Souza','31680354055',2109452),(167,'Leonardo Araujo Araujo','21559920900',1502301),(168,'Gabriela Araujo Lopes','61891434729',4315453),(169,'Mariana Silva Fernandes','61967089014',2109452),(170,'Thiago Teixeira Silva','71701559782',2408706),(171,'Yara Silva Costa','41459522719',3526803),(172,'Victor Oliveira Martins','51734155958',4315453),(173,'Ursula Silva Oliveira','91942959592',2707909),(174,'Thiago Pereira Santos','41548645910',2408706),(175,'Karla Fernandes Lima','31821358995',3526803),(176,'Queila Silva Almeida','71826304065',4123956),(177,'Zeca Almeida Lima','81925116048',3145356),(178,'Ana Oliveira Araujo','61672575896',2707909),(179,'Karla Almeida Costa','71885921398',3529302),(180,'Carlos Oliveira Lima','41099037230',2408706),(181,'José Pereira Lima','21927096387',1502301),(182,'Sabrina Santos Costa','91533387088',4315453),(183,'Bruno Silva Teixeira','71501357933',4114203),(184,'Ana Santos Teixeira','31200275125',2111078),(185,'Isabela Lima Fernandes','11075139016',4201901),(186,'Ana Teixeira Pereira','41133957012',2111078),(187,'Bruno Rodrigues Almeida','21860371506',2707909),(188,'Carlos Pereira Pereira','11494453618',5209705),(189,'Zeca Silva Souza','71809831334',5221403),(190,'Eliane Almeida Martins','21864063981',4117255),(191,'Paulo Fernandes Lopes','11726911477',1502301),(192,'Bruno Araujo Silva','11952737142',2111078),(193,'Leonardo Pereira Arrais','21099107663',3169505),(194,'Nathan Costa Pereira','91424604999',4201901),(195,'Rafael Santos Costa','21467612422',2408706),(196,'Henrique Pereira Martins','31478845516',4315453),(197,'Queila Santos Barros','41585208558',4315453),(198,'Henrique Rodrigues Almeida','61300484942',4315453),(199,'Carlos Pereira Rodrigues','81211069085',1200336),(200,'Eliane Martins Lima','81809600288',5200258),(201,'Bruno Almeida Santos','81449919756',1502301),(202,'Olívia Almeida Barros','81742611882',1200336),(203,'Victor Almeida Silva','21180952433',4203402),(204,'Mariana Almeida Costa','51317332383',1200336),(205,'Eliane Oliveira Araujo','31432791644',4123956),(206,'Leonardo Almeida Souza','81349102118',1502301),(207,'Henrique Costa Costa','71265542490',4315453),(208,'Henrique Pereira Teixeira','81863816140',4304358),(209,'Bruno Silva Pereira','91741386414',3145356),(210,'Yara Almeida Martins','21006492654',2707909),(211,'Zeca Souza Teixeira','31088870832',2707909),(212,'Eliane Lima Teixeira','51334197675',3140555),(213,'Fernando Teixeira Silva','71506631383',4304358),(214,'Ursula Souza Oliveira','61478790109',2111078),(215,'Zeca Lima Araujo','21744238019',2513703),(216,'Paulo Pereira Teixeira','21277452773',5209705),(217,'Yara Rodrigues Teixeira','71820564033',4304358),(218,'Yara Oliveira Costa','21006115766',2301000),(219,'Daniela Santos Fernandes','51332905055',4100608),(220,'Henrique Oliveira Almeida','21311766858',2911006),(221,'Xênia Araujo Araujo','91112963017',2111078),(222,'Wesley Silva Souza','71242739729',2111078),(223,'Zeca Santos Fernandes','21533087491',4114203),(224,'Karla Rodrigues Souza','21916163388',5221403),(225,'Sabrina Oliveira Santos','81368482760',4304358),(226,'Zeca Rodrigues Souza','21571013265',2707909),(227,'Xênia Silva Santos','91522740298',2111078),(228,'Henrique Santos Costa','71147624211',3529302),(229,'Isabela Araujo Martins','51772815574',3140555),(230,'Zeca Fernandes Almeida','71397770622',4100608),(231,'Eliane Costa Pereira','41098115302',1502301),(232,'Paulo Silva Oliveira','61818845866',4304358),(233,'Paulo Fernandes Oliveira','41890056159',4203402),(234,'Rafael Silva Araujo','11460418680',2917334),(235,'Leonardo Costa Souza','21556634654',5200258),(236,'Wesley Oliveira Almeida','91203278252',1200336),(237,'Yara Araujo Costa','11810696970',2917334),(238,'Bruno Pereira Souza','61927019809',2111078),(239,'Daniela Costa Fernandes','51099075928',5209705),(240,'Gabriela Santos Teixeira','11789464353',1200336),(241,'Sabrina Araujo Pereira','21222754153',2111078),(242,'Sabrina Martins Souza','21127464790',4100608),(243,'José Almeida Oliveira','61435402179',3169505),(244,'Bruno Araujo Martins','71963422738',4123956),(245,'Ursula Barros Silva','51473028597',4304358),(246,'Gabriela Teixeira Costa','41890495352',4304358),(247,'Mariana Pereira Santos','71173417983',3170529),(248,'José Almeida Almeida','31262759936',4304358),(249,'Bruno Santos Almeida','11750254817',4304358),(250,'José Rodrigues Pereira','81706472731',1200336),(251,'Wesley Oliveira Lima','21219889291',3170529),(252,'Queila Souza Almeida','71512890403',2111078),(253,'Xênia Souza Oliveira','51171073113',3170529),(254,'Mariana Costa Teixeira','21239651826',4117255),(255,'Yara Pereira Oliveira','31297122835',4201901),(256,'Mariana Rodrigues Rodrigues','91338948366',3145356),(257,'Ursula Rodrigues Fernandes','61175843012',2911006),(258,'José Silva Oliveira','61990875785',2408706),(259,'Zeca Costa Souza','91739892159',3169505),(260,'Karla Santos Teixeira','71326998331',3170529),(261,'Paulo Lima Martins','41841439758',4123956),(262,'José Araujo Silva','71077173638',2109452),(263,'Ana Lima Araujo','91388531777',2917334),(264,'Daniela Araujo Barros','81885751353',4114203),(265,'Daniela Oliveira Barros','51485049481',2301000),(266,'Paulo Martins Pereira','81122021478',4201901),(267,'Wesley Costa Fernandes','11991371659',2111078),(268,'Carlos Teixeira Souza','81541209418',4201901),(269,'Ana Oliveira Souza','41669305321',3526803),(270,'Karla Martins Costa','91683320688',5221403),(271,'Gabriela Silva Rodrigues','51561134068',4203402),(272,'Nathan Silva Araujo','41345648928',2504009),(273,'Leonardo Teixeira Rodrigues','31931894169',4100608),(274,'Paulo Fernandes Santos','51581019014',2109452),(275,'Mariana Souza Souza','11931699117',5200258),(276,'Sabrina Teixeira Martins','41891095192',5209705),(277,'Paulo Santos Teixeira','31241808778',2707909),(278,'Karla Fernandes Fernandes','41710584520',3140555),(279,'Eliane Martins Almeida','71573728877',4315453),(280,'Mariana Oliveira Paula','91541440486',4123956),(281,'Olívia Almeida Teixeira','81537686183',2301000),(282,'Paulo Rodrigues Pereira','41876038570',4114203),(283,'Daniela Barros Silva','31728428808',1200336),(284,'Thiago Rodrigues Almeida','51787006335',4318408),(285,'Eliane Rodrigues Souza','61429210956',4203402),(286,'José Souza Fernandes','91397532720',2111078),(287,'Henrique Oliveira Martins','81501888325',4304358),(288,'Mariana Martins Silva','61793720169',3145356),(289,'Wesley Almeida Silva','21534965775',4304358),(290,'Karla Teixeira Santos','61949098158',4304358),(291,'Fernando Silva Almeida','51174576785',4100608),(292,'Zeca Lima Santos','41207416142',3529302),(293,'Daniela Costa Santos','81898918702',1502301),(294,'Ana Almeida Araujo','61103747466',4201901),(295,'Bruno Teixeira Souza','21525235348',1200336),(296,'José Lima Fernandes','21771619882',4117255),(297,'Fernando Pereira Barros','11483417758',3140555),(298,'Leonardo Fernandes Fernandes','81732236501',3145356),(299,'Nathan Teixeira Barros','31126200189',3170529),(300,'Ursula Lima Lima','51144694302',2408706),(301,'Luiz Miguel Porto','10763529443',2513703),(302,'Ryan Rodrigues','64213870987',4315453),(303,'Davi Melo','89324067583',2111078),(304,'Calebe Barros','36401259833',4201901),(305,'Diogo Barbosa','03592481606',4304358),(306,'Olivia Costa','65903287492',2111078),(307,'Leandro Mendes','80594621305',2504009),(308,'Alana Nascimento','65801942785',3526803),(309,'Ana Beatriz Peixoto','76831502407',4201901),(310,'Alexandre Fernandes','89451207694',4315453),(311,'Elisa Freitas','62318540942',3140555),(312,'Maria Eduarda da Conceição','10854379657',4201901),(313,'Ana Júlia Silva','30152687912',4114203),(314,'Diogo Gomes','90685273474',2707909),(315,'Maria Julia Novaes','17463582035',2911006),(316,'Theo da Conceição','04793165206',1200336),(317,'Luiz Fernando Silva','68431509775',4318408),(318,'Ana Júlia da Cunha','97641580211',2408706),(319,'Alexia Rodrigues','38945072683',2111078),(320,'Cauã da Rocha','32658947038',2911006),(321,'Benício Costela','92756310859',3169505),(322,'Emilly Alves','72346901822',2504009),(323,'Joaquim Fernandes','70863259103',2109452),(324,'Nicole da Mata','73289160440',2301000),(325,'Enzo Moreira','04173295634',2111078),(326,'Manuela Dias','59684071310',2111078),(327,'Maria Vitória da Conceição','67893401575',3169505),(328,'Marcela Farias','21365940870',3529302),(329,'Ana Lívia Sales','06387154901',2513703),(330,'Nathan da Cunha','07659248383',1502301);
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `CodPessoa` int NOT NULL,
  `RG` varchar(9) NOT NULL,
  `CPF` char(11) NOT NULL,
  `Titulacao` varchar(50) NOT NULL,
  KEY `CodPessoa` (`CodPessoa`),
  CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`CodPessoa`) REFERENCES `pessoa` (`CodPessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (165,'451236987','78495126372','Doutor em Matemática'),(58,'362598741','63928471501','Mestre em Geografia'),(55,'987412365','42583796134','Doutor em História'),(22,'123654789','31759246825','Licenciado em Física'),(9,'789321654','96847351267','Mestre em Sociologia'),(50,'654987321','85236974108','Doutor em História'),(31,'321789456','74185296339','Doutor em Artes'),(12,'456123789','36925814742','Mestre em Biologia'),(6,'852369741','25814736953','Licenciado em Física'),(23,'963852741','12398745664','Doutor em História'),(32,'147258369','98765432175','Mestre em Química'),(94,'258369147','45612378986','Doutor em Geografia'),(34,'369147258','32165498797','Licenciado em Português'),(8,'741852963','65498732108','Mestre em História'),(11,'852963741','78932165419','Doutor em História'),(25,'963741852','14725836920','Mestre em Química'),(27,'123456987','25836914731','Licenciado em Português'),(5,'456789123','36914725842','Doutor em Química'),(15,'789123456','95162384753','Mestre em Artes'),(30,'321654987','62384795164','Doutor em História'),(62,'654987321','84795162375','Mestre em Sociologia'),(7,'987321654','28461973586','Licenciado em Matemática'),(96,'147852369','61973528497','Doutor em História'),(49,'258963147','73528461908','Mestre em Sociologia'),(54,'369147852','39651824719','Doutor em Português'),(26,'741963852','51824739620','Mestre em Sociologia'),(39,'852147963','24739651831','Licenciado em Sociologia'),(3,'963258741','58271346942','Doutor em Matemática'),(33,'123789456','71346958253','Mestre em Artes'),(17,'456123789','46958271364','Doutor em Português');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turma` (
  `CodTurma` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(10) NOT NULL,
  `CodEscola` int NOT NULL,
  PRIMARY KEY (`CodTurma`),
  KEY `CodEscola` (`CodEscola`),
  CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`CodEscola`) REFERENCES `escola` (`CodEscola`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES (1,'3001-A',1),(2,'4001-A',1),(3,'1003-C',1),(4,'5001-A',2),(5,'2002-B',3),(6,'3003-C',3),(7,'6002-B',4),(8,'2005-B',5),(9,'3005-C',5),(10,'4002-A',6),(11,'1005-C',6),(12,'3002-B',7),(13,'2007-C',7),(14,'2001-A',7),(15,'2003-C',8),(16,'3006-A',9),(17,'2008-B',9),(18,'2009-C',9),(19,'1002-B',10),(20,'1001-C',10);
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-07 16:55:11
