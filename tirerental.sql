
CREATE TABLE users (
  ID varchar(10) NOT NULL,
  name varchar(45) DEFAULT NULL,
  phoneNumber varchar(20) DEFAULT NULL,
  age int DEFAULT NULL,
  password varchar(20) DEFAULT NULL,
  salary float DEFAULT NULL,
  userType varchar(20) DEFAULT NULL,
  PRIMARY KEY (ID)
) ;


INSERT INTO users VALUES ('1025410102','Salman Naser','0569854774',50,'147852',12000,'admin'),('1025478420','Abdullah Ahmed','0502545201',45,'125890',10000,'emp'),('2056585210','Talal Sami','0509812547',35,'123456',80000,'emp');

CREATE TABLE car (
  serialNumber varchar(10) NOT NULL,
  brand varchar(45) DEFAULT NULL,
  yearModel int DEFAULT NULL,
  price float DEFAULT NULL,
  available int DEFAULT NULL,
  EmpID varchar(10) DEFAULT NULL,
  PRIMARY KEY (serialNumber)
);



INSERT INTO car VALUES ('xyz000','Ford',2020,250,1,'1025410102'),('xyz111','GMC',2020,300,1,'1025410102'),('xyz222','KIA',2018,200,0,'1025478420'),('xyz333','Yars',2017,150,0,'1025478420'),('xyz444','Nissan',2020,350,1,'2056585210');




CREATE TABLE custmer (
  ID varchar(10) NOT NULL,
  name varchar(60) DEFAULT NULL,
  phoneNumber varchar(20) DEFAULT NULL,
  age int DEFAULT NULL,
  licenseNumber varchar(20) DEFAULT NULL,
  password varchar(45) DEFAULT NULL,
  PRIMARY KEY (ID)
) ;


INSERT INTO custmer VALUES ('1012548410','Sami Ali','0565865420',35,'120214','12345'),('1012548440','Ahmed Saad','0535863842',27,'698542','05252'),('1016358422','Sara Abdulaah','0564120120',25,'365410','g5512'),('1018848420','Saad Salem','056854210',45,'188964','sa1234'),('1065841230','Manal Alam','0501269888',30,'698742','25mm12'),('2036541202','Jhon Zad','0500069001',39,'9856284','j54j14');




CREATE TABLE orders (
  orderID INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY(Start with 1, Increment by 1),
  rentalDateReturn date DEFAULT NULL,
  rentalDateOut date DEFAULT NULL,
  total float DEFAULT NULL,
  carSerial varchar(20) DEFAULT NULL,
  custID varchar(20) DEFAULT NULL
) ;


 
INSERT INTO orders VALUES ('2020-03-15','2020-03-20',1500,'xyz222','1012548410'),('2020-03-10','2020-03-12',800,'xyz333','1012548440'),('2020-03-05','2020-03-06',550,'xyz444','2036541202');





