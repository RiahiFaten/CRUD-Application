CREATE TABLE `employe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) DEFAULT NULL,
  `prenom` varchar(20) DEFAULT NULL,
  `daten` varchar(40) DEFAULT NULL,
  `adresse` varchar(40) DEFAULT NULL,
  `numtel` int DEFAULT NULL,
  `dateemb` varchar(40) DEFAULT NULL,
  `poste` varchar(30) DEFAULT NULL,
  `departement` int DEFAULT NULL,
  `salaire` float DEFAULT NULL,
  PRIMARY KEY (`id`)
)
INSERT INTO `employe` VALUES (1,'King','Smith','1960-01-01','Acapulco',12254684,'1990-02-02','president',1,5000),(2,'Black','Clarck','1971-03-15','Madrid',412546581,'1991-04-17','manager',2,2450),(3,'Marc','Martin','1990-02-20','Munich',5412658,'1992-05-09','salesman',1,1500),(4,'James','Ward','1985-02-06','Barcelona',52145632,'1999-04-08','manager',1,3000),(28,'Adams','Scott','1987-02-08','Barcelona',512467455,'1999-06-08','salesman',2,3500),(31,'Allen','Miller','1987-07-05','Madrid',614426546,'2000-08-09','salesman',1,1000);
