USE db_AhmaadJ;

/* James Smith has another order */
INSERT INTO `db_AhmaadJ`.`user2` (`Order Number`, `Customer Name`, `Location`, `Repair Date`, `Address`, `Cost`, `Description`, `Model Name`, `Model Number`, `Warranty`, `Comments`) VALUES ('4689', 'James Smith', 'Apple', '2018-09-21', '5065 Main St, Trumbull, CT 06611', '100.00', 'Phone Screen Fix', 'iPhone 8S', 'MQ6K2LL/A', '2 Years', 'In-Warranty, Has AppleCare+. Condition: Phone screen cracked, needs replacement. Otherwise, in good condition.');

/* Pulled up old record */
INSERT INTO `db_AhmaadJ`.`user2` (`Order Number`, `Customer Name`, `Location`, `Repair Date`, `Address`, `Cost`, `Description`, `Model Name`, `Model Number`, `Warranty`, `Comments`) VALUES ('355', 'Jane Smith', 'Apple', '2017-11-05', '4807 Concord Pike, Wilmington, DE 19803', '00.00', 'Diagnostic Test', 'iPad 5th Generation', 'A1822', '1 Years', 'In-Warranty, No AppleCare+. Condition: Slight scratches, nothing major. Result, diagnostic complete, nothing wrong.');

/* Jane Smith went to Best Buy, not Apple. Re-Pull */
DELETE FROM `db_AhmaadJ`.`user2` WHERE `Order Number` = 355;
INSERT INTO `db_AhmaadJ`.`user2` (`Order Number`, `Customer Name`, `Location`, `Repair Date`, `Address`, `Cost`, `Description`, `Model Name`, `Model Number`, `Warranty`, `Comments`) VALUES ('355', 'Jane Smith', 'Best Buy', '2017-11-05', '4807 Concord Pike, Wilmington, DE 19803', '00.00', 'Diagnostic Test', 'iPad 5th Generation', 'A1822', '1 Years', 'In-Warranty, No AppleCare+. Condition: Slight scratches, nothing major. Result, diagnostic complete, nothing wrong.');


/* Fix The Entries from the User 2 Table */
DELETE FROM `db_AhmaadJ`.`user2` WHERE `Order Number` = 4688;
INSERT INTO `db_AhmaadJ`.`user2` (`Order Number`, `Customer Name`, `Location`, `Repair Date`, `Address`, `Cost`, `Description`, `Model Name`, `Model Number`, `Warranty`, `Comments`) VALUES ('4688', 'James Smith', 'Apple', '2018-09-21', '5065 Main St, Trumbull, CT 06611', '150.00', 'Battery Replacement', '2015 Macbook Air', 'MJVE2LL/A', '3 Years', 'In-Warranty, Has AppleCare+ Condition: Good Condition, only a few minor scratches');
DELETE FROM `db_AhmaadJ`.`user2` WHERE `Order Number` = 4689;
INSERT INTO `db_AhmaadJ`.`user2` (`Order Number`, `Customer Name`, `Location`, `Repair Date`, `Address`, `Cost`, `Description`, `Model Name`, `Model Number`, `Warranty`, `Comments`) VALUES ('4689', 'James Smith', 'Apple', '2018-09-21', '5065 Main St, Trumbull, CT 06611', '100.00', 'Phone Screen Fix', 'iPhone 8S', 'MQ6K2LL/A', '2 Years', 'In-Warranty, Has AppleCare+. Condition: Phone screen cracked, needs replacement. Otherwise, in good condition.');
DELETE FROM `db_AhmaadJ`.`user2` WHERE `Order Number` = 355;
INSERT INTO `db_AhmaadJ`.`user2` (`Order Number`, `Customer Name`, `Location`, `Repair Date`, `Address`, `Cost`, `Description`, `Model Name`, `Model Number`, `Warranty`, `Comments`) VALUES ('355', 'Jane Smith', 'Best Buy', '2017-11-05', '4807 Concord Pike, Wilmington, DE 19803', '00.00', 'Diagnostic Test', 'iPad 5th Generation', 'A1822', '1 Year', 'In-Warranty, No AppleCare+. Condition: Slight scratches, nothing major. Result, diagnostic complete, nothing wrong.');

/*  Inner Join */
SELECT * FROM db_AhmaadJ.user1 INNER JOIN db_AhmaadJ.user2 ON user1.`Order Number` = user2.`Order Number`;

SELECT * FROM db_AhmaadJ.user1;
SELECT * FROM db_AhmaadJ.user2;
