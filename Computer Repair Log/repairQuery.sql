USE db_AhmaadJ;

/* Marcus Austin: What is the model number of my computer and the cost? */
SELECT `Model Number`, `Cost` FROM user1;

/* Technician to James Smith: You're here to pick up the computer, I'll ring you up. What was the order number and your name again? */
SELECT `Order Number`, `Customer Name` FROM user2;

/* Marcus Austin to Technician: Am I under warranty? -> Technician Describes what's in the comments. */
SELECT `Warranty`, `Comments` FROM user1;

/* Technician: The last 2 order numbers */
SELECT * FROM user1;
SELECT * FROM user2;
SELECT * FROM user1 RIGHT JOIN user2 ON user1.`Order Number` = user2.`Order Number`;