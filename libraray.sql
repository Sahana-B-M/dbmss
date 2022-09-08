


mysql> CREATE TABLE `publisher` (`publisherID` int(11) NOT NULL,   `publisherName` varchar(30) DEFAULT NULL,   PRIMARY KEY (`PublisherID`));
Query OK, 0 rows affected, 1 warning (0.03 sec)

desc publisher;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| publisherID   | int         | NO   | PRI | NULL    |       |
| publisherName | varchar(30) | YES  |     | NULL    |       |
+---------------+---

mysql> CREATE TABLE `magazine` (   `magID` int(11) NOT NULL,   `volNo` int(11) NOT NULL,   `mname` varchar(30) NOT NULL,   `magazine` varchar(30) NOT NULL,   `magazineShelf` varchar(10) NOT NULL,   `genre` varchar(10) NOT NULL,   `publisher` varchar(10) NOT NULL,   PRIMARY KEY (`magID`));
Query OK, 0 rows affected, 2 warnings (0.02 sec)



desc magazine;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| magID         | int         | NO   | PRI | NULL    |       |
| volNo         | int         | NO   |     | NULL    |       |
| mname         | varchar(30) | NO   |     | NULL    |       |
| magazine      | varchar(30) | NO   |     | NULL    |       |
| magazineShelf | varchar(10) | NO   |     | NULL    |       |
| genre         | varchar(10) | NO   |     | NULL    |       |
| publisher     | varchar(10) | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+


mysql> CREATE TABLE `issuedMagazine` (   `magID` int(11)NULL,   `userID` int(11) NULL,   `issueDate` date NOT NULL,   `returnDate` date NOT NULL);
Query OK, 0 rows affected, 2 warnings (0.03 sec)


desc issuedMagazine;
+------------+------+------+-----+---------+-------+
| Field      | Type | Null | Key | Default | Extra |
+------------+------+------+-----+---------+-------+
| magID      | int  | YES  |     | NULL    |       |
| userID     | int  | YES  |     | NULL    |       |
| issueDate  | date | NO   |     | NULL    |       |
| returnDate | date | NO   |     | NULL    |       |
+------------+------+------+-----+---------+



mysql> CREATE TABLE `issuedbook` (   `bookiD` int(11) NULL,   `userID` int(11)NULL,   `issueDate` date NOT NULL,   `returnDate` date NOT NULL);
Query OK, 0 rows affected, 2 warnings (0.02 sec)




desc issuedbook;
+------------+------+------+-----+---------+-------+
| Field      | Type | Null | Key | Default | Extra |
+------------+------+------+-----+---------+-------+
| bookiD     | int  | YES  |     | NULL    |       |
| userID     | int  | YES  |     | NULL    |       |
| issueDate  | date | NO   |     | NULL    |       |
| returnDate | date | NO   |     | NULL   

mysql> CREATE TABLE `books` (   `bookiD` int(11) NOT NULL,   `bookName` varchar(50) NOT NULL,   `genre` varchar(10) NOT NULL,   `author` varchar(30) NULL,   `publisher` varchar(30) NULL,   `shelf` varchar(5) NOT NULL,   `Row` varchar(5) NOT NULL,   PRIMARY KEY (`BookID`));
Query OK, 0 rows affected, 1 warning (0.02 sec)


desc books;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| bookiD    | int         | NO   | PRI | NULL    |       |
| bookName  | varchar(50) | NO   |     | NULL    |       |
| genre     | varchar(10) | NO   |     | NULL    |       |
| author    | varchar(30) | YES  |     | NULL    |       |
| publisher | varchar(30) | YES  |     | NULL    |       |
| shelf     | varchar(5)  | NO   |     | NULL    |       |
| Row       | varchar(5)  | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+




+-----------------
+-----------------------------+
| Tables_in_VP21MC036_library |
+-----------------------------+
| FullName                    |
| books                       |
| issuedMagazine              |
| issuedbook                  |
| magazine                    |
| publisher                   |
| users                       |
+-----------------------------+
7 rows in set (0.00 sec)

mysql> desc FullName;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| UserID    | int         | YES  |     | NULL    |       |
| FirstName | varchar(30) | NO   |     | NULL    |       |
| LastName  | varchar(30) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)


