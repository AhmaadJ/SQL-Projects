USE db_AhmaadJ;

SELECT * FROM user1;
SELECT * FROM user2;

/* Inner Join */
SELECT * FROM user1 INNER JOIN user2 ON user1.`Order Number` = user2.`Order Number`;
SELECT `Order Number` FROM user1 INNER JOIN user2 ON user1.`Order Number` = user2.`Order Number`; 
	/* Error Code: 1052. Column 'Order Number' in field list is ambiguous */
    /*More Than 1 Column Called `Order Number` -> Need to specify which table */
SELECT user1.`Order Number` FROM user1 INNER JOIN user2 ON user1.`Order Number` = user2.`Order Number`; 

/* Left Join */
SELECT * FROM user1 LEFT JOIN user2 ON user1.`Order Number` = user2.`Order Number`;
SELECT user1.`Location`, user2.`Location` FROM user1 LEFT JOIN user2 ON user1.`Order Number` = user2.`Order Number`;

/* Right Join */
SELECT * FROM user1 RIGHT JOIN user2 ON user1.`Order Number` = user2.`Order Number`;

/* Full Join/Full Outer Join */
SELECT * FROM user1 FULL JOIN user2 ON user1.`Order Number` = user2.`Order Number`;

/* Full Join doesn't work in mySQL -> use left join, union, & right join instead. */
SELECT * FROM user1 LEFT JOIN user2 ON user1.`Order Number` = user2.`Order Number`
UNION
SELECT * FROM user1 RIGHT JOIN user2 ON user1.`Order Number` = user2.`Order Number`;
