drop database if exists `restaurant`;
create database `restaurant`;
use `restaurant`;



create table `RESTAURANT`(
	`Name` varchar(100) NOT NULL unique,
	`Location` varchar(100) NOT NULL default 'nowhere' ,
	`Contact` varchar(100) NOT NULL,
	`Opening_Closing_Time` varchar(100) NOT NULL,
	`Other_Details` varchar(500) default NULL,
	PRIMARY KEY (`Name`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;




create table `MANAGER`(
	`Fname` varchar(15) NOT NULL,
	`Lname` varchar(15) NOT NULL,
	`Contact` varchar(20) NOT NULL,
	`Manager_Id` int NOT NULL AUTO_INCREMENT unique,
 	`Address` varchar(30) DEFAULT NULL,
  	`Salary` varchar(30) DEFAULT NULL,
	`Sex` char(1) DEFAULT NULL,
	`Bdate` date DEFAULT NULL,
	`Join_Date` date NOT NULL,
	PRIMARY KEY (`Manager_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

create table `WAITER`(
	`Fname` varchar(15) NOT NULL,
	`Lname` varchar(15) NOT NULL,
	`Contact` varchar(20) NOT NULL,
	`Waiter_Id` int NOT NULL AUTO_INCREMENT unique,
 	`Address` varchar(30) DEFAULT NULL,
  	`Salary` varchar(30) DEFAULT NULL,
	`Sex` char(1) DEFAULT NULL,
	`Bdate` date DEFAULT NULL,
	`Join_Date` date NOT NULL,
	PRIMARY KEY (`Waiter_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

create table `employee`(
	`emp_Id` int NOT NULL AUTO_INCREMENT unique,
	
	PRIMARY KEY (`emp_Id`) 
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

create table `CASHIER`(
	`Fname` varchar(15) NOT NULL,
	`Lname` varchar(15) NOT NULL,
	`Contact` varchar(20) NOT NULL,
	`Cashier_Id` int NOT NULL AUTO_INCREMENT unique,
 	`Address` varchar(30) DEFAULT NULL,
  	`Salary` varchar(30) DEFAULT NULL,
	`Sex` char(1) DEFAULT NULL,
	`Bdate` date DEFAULT NULL,
	`Join_Date` date NOT NULL,
	PRIMARY KEY (`Cashier_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

create table `COOK`(
	`Fname` varchar(15) NOT NULL,
	`Lname` varchar(15) NOT NULL,
	`Contact` varchar(20) NOT NULL,
	`Cook_Id` int NOT NULL AUTO_INCREMENT unique,
 	`Address` varchar(30) DEFAULT NULL,
  	`Salary` varchar(30) DEFAULT NULL,
	`Sex` char(1) DEFAULT NULL,
	`Specialization` varchar(50) DEFAULT NULL,
	`Bdate` date DEFAULT NULL,
	`Join_Date` date NOT NULL,
	PRIMARY KEY (`Cook_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


create table `DELIVERY_BOY`(
	`Fname` varchar(15) NOT NULL,
	`Lname` varchar(15) NOT NULL,
	`Contact` varchar(20) NOT NULL,
	`Delivery_Boy_Id` int NOT NULL AUTO_INCREMENT unique,
 	`Address` varchar(30) DEFAULT NULL,
  	`Salary` varchar(30) DEFAULT NULL,
	`Sex` char(1) DEFAULT NULL,
	`Bdate` date DEFAULT NULL,
	`Join_Date` date NOT NULL,
	PRIMARY KEY (`Delivery_Boy_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



create table `MENU`(
	`Menu_Id` int NOT NULL AUTO_INCREMENT,
	`Name` varchar(100) NOT NULL,
	`Price` varchar(20) NOT NULL,	
	`Type` varchar(20) DEFAULT NULL,
	`Category` varchar(30) NOT NULL,
	PRIMARY KEY(`Menu_Id`,`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


create table `SUPPLIER`(
	`Fname` varchar(15) NOT NULL,
	`Lname` varchar(15) NOT NULL,
	`Address` varchar(30) NOT NULL,
	`Contact` varchar(20) NOT NULL,
	`Details` varchar(500) DEFAULT NULL,
	PRIMARY KEY (`Fname`,`Lname`,`Address`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




insert into `RESTAURANT`(`Name`,`Location`,`Contact`,`Opening_Closing_Time`,`Other_Details`)
values 
("Tandoori By Nature","Gandhi Nagar Jammu And Kashmir","09642540626/09581871321","10:00 AM - 12:00 AM","None");


insert into `MANAGER`(`Fname`,`Lname`,`Contact`,`Address`,`Salary`,`Sex`,`Bdate`,`Join_Date`)
values
("Rishi Raj","Singh Jhelumi","9642540626","E-28 OBH , IIIT Hyderabad","30000","M","1992-09-29","2012-08-01"),
("Prachish","Gora","9581871321","E-27 OBH , IIIT Hyderabad","30000","M","1993-11-18","2012-08-01");

insert into `WAITER`(`Fname`,`Lname`,`Contact`,`Address`,`Salary`,`Sex`,`Bdate`,`Join_Date`)
values
("Raghav","Sharma","123456","E-22 OBH , IIIT Hyderabad","8000","U","1993-10-12","2012-08-01"),
("Rishav","Kumar","132244","E-28 OBH , IIIT Hyderabad","8000","M","1992-12-22","2012-08-01");