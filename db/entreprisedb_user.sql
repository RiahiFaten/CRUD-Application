CREATE TABLE `user` (
  `idu` int NOT NULL AUTO_INCREMENT,
  `nomu` varchar(45) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `pw` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idu`)
)

INSERT INTO `user` VALUES (1,'admin','admin@admin.com','admin');
