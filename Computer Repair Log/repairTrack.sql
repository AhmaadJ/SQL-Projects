USE db_AhmaadJ;

CREATE TABLE `user1` (
`Order Number` smallint(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
`Customer Name` varchar(50) NOT NULL,
`Location` varchar(50) NOT NULL,
`Repair Date` date NOT NULL,
`Address` varchar(50) NOT NULL,
`Cost` decimal (5,2) NOT NULL,
`Description` varchar(50) NOT NULL,
`Model Name` varchar(50) NOT NULL,
`Model Number` varchar(50) NOT NULL,
`Warranty` char(7) NULL,
`Comments` varchar(200) NULL
) ENGINE=InnoDB;

CREATE TABLE `user2` (
`Order Number` smallint(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
`Customer Name` varchar(50) NOT NULL,
`Location` varchar(50) NOT NULL,
`Repair Date` date NOT NULL,
`Address` varchar(50) NOT NULL,
`Cost` decimal (5,2) NOT NULL,
`Description` varchar(50) NOT NULL,
`Model Name` varchar(50) NOT NULL,
`Model Number` varchar(50) NOT NULL,
`Warranty` char(7) NULL,
`Comments` varchar(200) NULL
) ENGINE=InnoDB;

INSERT INTO `db_AhmaadJ`.`user1` (`Order Number`, `Customer Name`, `Location`, `Repair Date`, `Address`, `Cost`, `Description`, `Model Name`, `Model Number`, `Comments`) VALUES ('355', 'Marcus Austin', 'Kite+Key, Rutgers Tech Store ', '2018-03-15', '625 Broad St. #120, Newark, NJ 07102', '250.00', 'Palm Rest Assembly Replacement', '2015 Toshiba Satellite 15.6\"', 'C55-C5241', '1 Year Warranty-Out of Warranty. Condition: a few scratches on the top & bottom. Some chipping on the backside.');
INSERT INTO `db_AhmaadJ`.`user2` (`Order Number`, `Customer Name`, `Location`, `Repair Date`, `Address`, `Cost`, `Description`, `Model Name`, `Model Number`, `Warranty`, `Comments`) VALUES ('4688', 'James Smith', 'Apple', '2018-09-21', '5065 Main St, Trumbull, CT 06611', '150.00', 'Battery Replacement', '2015 Macbook Air', 'MJVE2LL/A', '3 Years', 'In-Warranty, Has AppleCare+ Condition: Good Condition, only a few minor scratches');

SELECT * FROM db_AhmaadJ.user2;
SELECT * FROM db_AhmaadJ.user1;

/* The User 2 table is null for the Warranty because the char is fixed length,
	and spaces don't count as fixed length. -> Truncate to get rid of old data, re-add with fixed char, re-select.
*/
TRUNCATE TABLE user2;
INSERT INTO `db_AhmaadJ`.`user2` (`Order Number`, `Customer Name`, `Location`, `Repair Date`, `Address`, `Cost`, `Description`, `Model Name`, `Model Number`, `Warranty`, `Comments`) VALUES ('4688', 'James Smith', 'Apple', '2018-09-21', '5065 Main St, Trumbull, CT 06611', '150.00', 'Battery Replacement', '2015 Macbook Air', 'MJVE2LL/A', '3_Years', 'In-Warranty, Has AppleCare+ Condition: Good Condition, only a few minor scratches');
SELECT * FROM db_AhmaadJ.user2;