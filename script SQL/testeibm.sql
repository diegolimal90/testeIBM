CREATE DATABASE testeibm;

USE testeibm;

/*Criação da tabela autor*/
CREATE TABLE autor (
  id_autor int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Criação da tabela book*/
CREATE TABLE book (
  id_book int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  title varchar(50) DEFAULT NULL,
  id_autor int(11) NOT NULL ,
  anoPublicado int(11) DEFAULT NULL,
  preco decimal(10,2) DEFAULT NULL,
  classif decimal(10,2) DEFAULT NULL,
  FOREIGN KEY (id_autor) REFERENCES autor (id_autor)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Criação da tabela user*/
CREATE TABLE user (
  id_user int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome varchar(100) NOT NULL,
  genero varchar(20) NOT NULL,
  idade int(11) NOT NULL,
  email varchar(150) NOT NULL,
  fone varchar(20) NOT NULL,
  username varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Inserção de dados na tabela user*/
INSERT INTO user (nome, genero, idade, email, fone, username) VALUES
('Nina Ellis', 'Feminino', 61, 'nEllis@example.com', '(443) 545-8479', 'nEllis'),
('Inez Peterson','Feminino',61,'iPeterson@example.com','(257) 202-5035','iPeterson'),
('Jeff Smith','Masculino',37,'jSmith@example.com','(506) 360-8982','jSmith'),
('Nathan Cobb','Masculino',39,'nCobb@example.com','(368) 849-8721','nCobb'),
('Nell Payne','Feminino',49,'nPayne@example.com','(754) 297-3282','nPayne'),
('Juan Douglas','Masculino',37,'jDouglas@example.com','(950) 933-8532','jDouglas'),
('Manuel Parker','Masculino',34,'mParker@example.com','(754) 381-4273','mParker'),
('Benjamin Day','Masculino',21,'bDay@example.com','(360) 935-7443','bDay'),
('Patrick Maldonado','Masculino',58,'pMaldonado@example.com','(204) 601-5789','pMaldonado'),
('Katherine Love','Feminino',46,'kLove@example.com','(679) 945-7785','kLove'),
('Travis Bowen','Masculino',60,'tBowen@example.com','(528) 531-1611','tBowen'),
('Samuel Hampton','Masculino',43,'sHampton@example.com','(913) 298-8410','sHampton'),
('Nicholas Ellis','Masculino',27,'nEllis@example.com','(813) 229-1864','nEllis'),
('Louise Lucas','Feminino',20,'lLucas@example.com','(546) 345-1371','lLucas'),
('Frances Perkins','Feminino',23,'fPerkins@example.com','(214) 885-5742','fPerkins'),
('Esther Castillo','Feminino',36,'eCastillo@example.com','(541) 725-8912','eCastillo'),
('Martha Gibson','Feminino',59,'mGibson@example.com','(739) 705-4110','mGibson'),
('Ruby Harrington','Feminino',26,'rHarrington@example.com','(883) 524-1126','rHarrington');

/*Inserção de dados na tabela autor*/
INSERT INTO autor (nome) values
('@cNewman'),
('@jNguyen'),
('@fMcGee'),
('@mSparks'),
('@eGuerrero'),
('@tHolmes'),
('@eThornton'),
('@eKeller'),
('@lHale'),
('@mStanley'),
('@dLindsey'),
('@kWillis'),
('@pDavidson'),
('@tBishop'),
('@mHunt'),
('@mPratt'),
('@mLove');

/*Inserção de dados na tabela book*/
INSERT INTO book (title, id_autor, anoPublicado, preco, classif) VALUES 
('Culpa Enim Suscipit Voluptatem', 1, 2015, '$12.99', '1.3/5'),
('Quasi Excepturi Mollitia', 2, 2006, '$15.99', '1.3/5'),
('Magnam Obcaecati Ab Asperiores A', 3, 2007, '$20.99', '4.1/5'),
('Voluptate Cumque Qui Nihil', 4, 2012, '$8.99', '1.6/5'),
('Laboriosam', 5, 2010, '$8.99', '4.8/5'),
('Voluptatibus Iure', 6, 2003, '$14.99', '3.2/5'),
('Aliquam Magnam Magni Voluptatem Dolore', 7, 2016, '$7.99', '1.6/5'),
('Architecto Non Quasi Sed Consequatur', 8, 2016, '$12.99', '2/5'),
('Perspiciatis Quisquam', 9, 2012, '$11.99', '4.6/5'),
('Aperiam Iure', 10, 2006, '$9.99', '2.1/5'),
('Quibusdam Similique Eius Earum Repudiandae', 11, 2001, '$9.99', '5/5'),
('Eaque Soluta', 12, 2004, '$10.99', '2.7/5'),
('Eveniet Tempora Doloremque Aliquam', 13, 2010, '$15.99', '4.5/5'),
('Officia Ipsam Ea Soluta', 14, 2008, '$19.99', '4.2/5'),
('Ducimus Repellat Sequi Accusamus Unde', 15, 2010, '$3.99', '1/5'),
('Dicta Molestiae Perspiciatis Omnis Ducimus', 16, 2002, '$7.99', '4.5/5'),
('Officiis Suscipit Quasi Sequi Error', 17, 2009, '$12.99', '2.9/5');