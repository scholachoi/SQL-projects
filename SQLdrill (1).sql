USE master
GO
CREATE DATABASE Library
GO
USE Library
CREATE TABLE Books (BookID int PRIMARY KEY, Title varchar(30), PublisherName varchar(30));
CREATE TABLE Authors (BookID int,AuthorName varchar(30));
CREATE TABLE Copies (BookID int,BranchID int,No_Of_Copies int);
CREATE TABLE Loans (BookID int,BranchID int,CardNo int,DateOut date,DueDate date);
CREATE TABLE Borrower (CardNo int PRIMARY KEY,Name varchar(30),Address varchar(50) NULL,Phone varchar(10) NULL);
CREATE TABLE Branch (BranchID int PRIMARY KEY,BranchName varchar(30),Address varchar(30));
CREATE TABLE Publisher (Name varchar(30),Address varchar(30) NULL,Phone varchar(15) NULL)
GO

CREATE SCHEMA Lib
GO

CREATE PROC Lib.spInsertBook
@BookID int,
@Title varchar(50),
@PublisherName varchar(30) =NULL
AS 
INSERT INTO Books
VALUES (@BookID,@Title, @PublisherName)

EXEC Lib.spInsertBook 1,'The Lost Tribe','Jungle';
EXEC Lib.spInsertBook 2,'How to Sew Buttons','Singer';
EXEC Lib.spInsertBook 3,'The Terrible Night','GST';
EXEC Lib.spInsertBook 4,'Mindy''s Mittens','Newton';
EXEC Lib.spInsertBook 5,'Pizza and Donuts Diet','Loyly';
EXEC Lib.spInsertBook 6,'101 Cat House Plans','Mews';
EXEC Lib.spInsertBook 7,'Self-Help for Dummies','Dada';
EXEC Lib.spInsertBook 8,'Land of Lemurs','Barr';
EXEC Lib.spInsertBook 9,'Go For It!','Higham';
EXEC Lib.spInsertBook 10,'Farming for Nerds','Ten Ton';
EXEC Lib.spInsertBook 11,'They Are Us','Cosmo';
EXEC Lib.spInsertBook 12,'Here We Go!','Hello';
EXEC Lib.spInsertBook 13,'Spanish for Nurses','ANAA';
EXEC Lib.spInsertBook 14,'Tacos Everyday','Chance';
EXEC Lib.spInsertBook 15,'One Minute Rule','BizBooks';
EXEC Lib.spInsertBook 16,'Apples to Oranges','Famous';
EXEC Lib.spInsertBook 17,'Tiger Mountain','North';
EXEC Lib.spInsertBook 18,'How Cookies Crumble','Bibi';
EXEC Lib.spInsertBook 19,'Bridge to Yesterday','1999';
EXEC Lib.spInsertBook 20,'The Lemonade Stand','Yaya';
EXEC Lib.spInsertBook 21,'Hello World','OOL';
EXEC Lib.spInsertBook 22,'Yoga for Moms','Hatha';
EXEC Lib.spInsertBook 23,'The Red Balloon','JKL';
EXEC Lib.spInsertBook 24,'Make Art Not War','Phantom';
EXEC Lib.spInsertBook 25,'War of Words','Trope';
EXEC Lib.spInsertBook 26,'Green Smoothies for Kids','Pops';
EXEC Lib.spInsertBook 27,'History of Jars','Glass';
EXEC Lib.spInsertBook 28,'365 Dinner Ideas','Grub';
EXEC Lib.spInsertBook 29,'Untitled Champion','Hart';
EXEC Lib.spInsertBook 30,'Running in Thailand','Bangkok';
EXEC Lib.spInsertBook 31,'Swimming After Dark','Pullen';
EXEC Lib.spInsertBook 32,'Don''t Pet the Shark','Ocean';
EXEC Lib.spInsertBook 33,'Is Your Dog Walking You?','Pup';
EXEC Lib.spInsertBook 34,'Tips for Success','Combs';
EXEC Lib.spInsertBook 35,'Learn to Type','HDT';
EXEC Lib.spInsertBook 36,'Tennis for Seniors','Whitehead';
EXEC Lib.spInsertBook 37,'Zumba at the Zoo','Daily';
EXEC Lib.spInsertBook 38,'Xavier and the Zebra','Park';
EXEC Lib.spInsertBook 39,'You Can Do It!','Best';
EXEC Lib.spInsertBook 40,'The Best Day Ever','Wolfe'
GO


CREATE PROC Lib.spInsertAuthor
@BookID int,
@AuthorName varchar(30)
AS
INSERT INTO Authors
VALUES (@BookID,@AuthorName)

EXEC Lib.spInsertAuthor 1,'John Smyth';
EXEC Lib.spInsertAuthor 2,'Jane Do';
EXEC Lib.spInsertAuthor 3,'Eleanor Mellors';
EXEC Lib.spInsertAuthor 4,'Heidi Holly';
EXEC Lib.spInsertAuthor 5,'Chef Jeff';
EXEC Lib.spInsertAuthor 6,'Bart Brat';
EXEC Lib.spInsertAuthor 7,'Jen Jones';
EXEC Lib.spInsertAuthor 8,'Carol Sims';
EXEC Lib.spInsertAuthor 9,'Li Li';
EXEC Lib.spInsertAuthor 10,'Dr. Dirt';
EXEC Lib.spInsertAuthor 11,'Mantek Klem';
EXEC Lib.spInsertAuthor 12,'Kit Townsend';
EXEC Lib.spInsertAuthor 13,'Laura Lloras';
EXEC Lib.spInsertAuthor 14,'Sara Carr';
EXEC Lib.spInsertAuthor 15,'Jens Kopek';
EXEC Lib.spInsertAuthor 16,'Jim Jordan';
EXEC Lib.spInsertAuthor 17,'Silas Lambert';
EXEC Lib.spInsertAuthor 18,'Barbara Bull';
EXEC Lib.spInsertAuthor 19,'Dan Bland';
EXEC Lib.spInsertAuthor 20,'Stephen King'
EXEC Lib.spInsertAuthor 21,'A. Nonymous'
GO



CREATE PROC Lib.spInsertCopies
@BookID int,
@BranchID int,
@No_Of_Copies int
AS
INSERT INTO Copies
VALUES (@BookID,@BranchID,@No_Of_Copies)

EXEC Lib.spInsertCopies 1,2,2;
EXEC Lib.spInsertCopies 1,1,2;
EXEC Lib.spInsertCopies 2,2,2;
EXEC Lib.spInsertCopies 3,3,2;
EXEC Lib.spInsertCopies 4,4,2;
EXEC Lib.spInsertCopies 5,1,2;
EXEC Lib.spInsertCopies 6,2,2;
EXEC Lib.spInsertCopies 7,3,2;
EXEC Lib.spInsertCopies 8,4,2;
EXEC Lib.spInsertCopies 9,1,2;
EXEC Lib.spInsertCopies 10,2,2;
EXEC Lib.spInsertCopies 11,3,2;
EXEC Lib.spInsertCopies 12,4,2;
EXEC Lib.spInsertCopies 13,1,2;
EXEC Lib.spInsertCopies 14,2,2;
EXEC Lib.spInsertCopies 15,3,2;
EXEC Lib.spInsertCopies 16,4,2;
EXEC Lib.spInsertCopies 17,1,2;
EXEC Lib.spInsertCopies 18,2,2;
EXEC Lib.spInsertCopies 19,3,2;
EXEC Lib.spInsertCopies 20,4,2;
EXEC Lib.spInsertCopies 21,1,2;
EXEC Lib.spInsertCopies 22,2,2;
EXEC Lib.spInsertCopies 23,3,2;
EXEC Lib.spInsertCopies 24,4,2;
EXEC Lib.spInsertCopies 25,1,2;
EXEC Lib.spInsertCopies 26,2,2;
EXEC Lib.spInsertCopies 27,3,2;
EXEC Lib.spInsertCopies 28,4,2;
EXEC Lib.spInsertCopies 29,1,2;
EXEC Lib.spInsertCopies 30,2,2;
EXEC Lib.spInsertCopies 31,3,2;
EXEC Lib.spInsertCopies 32,4,2;
EXEC Lib.spInsertCopies 33,1,2;
EXEC Lib.spInsertCopies 34,2,2;
EXEC Lib.spInsertCopies 35,3,2;
EXEC Lib.spInsertCopies 36,4,2;
EXEC Lib.spInsertCopies 37,1,2;
EXEC Lib.spInsertCopies 38,2,2;
EXEC Lib.spInsertCopies 39,3,2;
EXEC Lib.spInsertCopies 40,4,2;
EXEC Lib.spInsertCopies 20,1,2
GO



CREATE PROC Lib.spInsertLoans
@BookID int,
@BranchID int,
@CardNo int,
@DateOut date,
@DueDate date
AS
INSERT INTO Loans
VALUES (@BookID,@BranchID,@CardNo,@DateOut,@DueDate)

EXEC Lib.spInsertLoans 1,1,4,'2016-08-19','2016-09-19';
EXEC Lib.spInsertLoans 2,2,4,'2016-08-19','2016-09-19';
EXEC Lib.spInsertLoans 3,3,4,'2016-08-19','2016-09-19';
EXEC Lib.spInsertLoans 4,4,4,'2016-08-19','2016-09-19';
EXEC Lib.spInsertLoans 5,1,4,'2016-08-19','2016-09-19';
EXEC Lib.spInsertLoans 6,2,2,'2016-09-18','2016-10-18';
EXEC Lib.spInsertLoans 7,3,2,'2016-09-18','2016-10-18';
EXEC Lib.spInsertLoans 8,4,2,'2016-09-18','2016-10-18';
EXEC Lib.spInsertLoans 9,1,2,'2016-09-18','2016-10-18';
EXEC Lib.spInsertLoans 10,2,2,'2016-09-18','2016-10-18';
EXEC Lib.spInsertLoans 11,3,5,'2016-09-11','2016-10-11';
EXEC Lib.spInsertLoans 12,4,5,'2016-09-11','2016-10-11';
EXEC Lib.spInsertLoans 13,1,5,'2016-09-11','2016-10-11';
EXEC Lib.spInsertLoans 14,2,3,'2016-09-13','2016-10-13';
EXEC Lib.spInsertLoans 15,3,9,'2016-09-11','2016-10-11';
EXEC Lib.spInsertLoans 16,4,1,'2016-05-12','2016-06-12';
EXEC Lib.spInsertLoans 17,1,6,'2016-09-13','2016-10-13';
EXEC Lib.spInsertLoans 18,2,6,'2016-09-13','2016-10-13';
EXEC Lib.spInsertLoans 19,3,6,'2016-09-13','2016-10-13';
EXEC Lib.spInsertLoans 20,4,7,'2016-09-12','2016-10-12';
EXEC Lib.spInsertLoans 21,1,7,'2016-09-13','2016-10-13';
EXEC Lib.spInsertLoans 1,2,7,'2016-09-13','2016-10-13';
EXEC Lib.spInsertLoans 2,3,7,'2016-09-13','2016-10-13';
EXEC Lib.spInsertLoans 4,4,9,'2016-09-09','2016-10-09';
EXEC Lib.spInsertLoans 5,1,9,'2016-09-09','2016-10-09';
EXEC Lib.spInsertLoans 6,2,9,'2016-09-09','2016-10-09';
EXEC Lib.spInsertLoans 7,3,8,'2016-09-10','2016-10-10';
EXEC Lib.spInsertLoans 8,4,8,'2016-09-10','2016-10-10';
EXEC Lib.spInsertLoans 9,1,4,'2016-09-08','2016-10-08';
EXEC Lib.spInsertLoans 10,2,4,'2016-09-08','2016-10-08';
EXEC Lib.spInsertLoans 11,3,4,'2016-09-08','2016-10-08';
EXEC Lib.spInsertLoans 12,4,4,'2016-09-08','2016-10-08';
EXEC Lib.spInsertLoans 13,1,3,'2016-09-07','2016-10-07';
EXEC Lib.spInsertLoans 14,2,3,'2016-09-07','2016-10-07';
EXEC Lib.spInsertLoans 15,3,3,'2016-09-07','2016-10-07';
EXEC Lib.spInsertLoans 16,4,2,'2016-09-05','2016-10-05';
EXEC Lib.spInsertLoans 17,1,2,'2016-09-05','2016-10-05';
EXEC Lib.spInsertLoans 18,2,2,'2016-09-05','2016-10-05';
EXEC Lib.spInsertLoans 19,3,5,'2016-09-04','2016-10-04';
EXEC Lib.spInsertLoans 20,4,5,'2016-09-04','2016-10-04';
EXEC Lib.spInsertLoans 21,1,5,'2016-09-04','2016-10-04';
EXEC Lib.spInsertLoans 22,2,5,'2016-09-04','2016-10-04';
EXEC Lib.spInsertLoans 23,3,5,'2016-09-04','2016-10-04';
EXEC Lib.spInsertLoans 24,4,8,'2016-09-03','2016-10-03';
EXEC Lib.spInsertLoans 25,1,8,'2016-09-03','2016-10-03';
EXEC Lib.spInsertLoans 26,2,8,'2016-09-03','2016-10-03';
EXEC Lib.spInsertLoans 27,3,1,'2016-05-12','2016-06-12';
EXEC Lib.spInsertLoans 28,4,1,'2016-05-12','2016-06-12';
EXEC Lib.spInsertLoans 29,1,1,'2016-05-12','2016-06-12';
EXEC Lib.spInsertLoans 30,2,1,'2016-05-12','2016-06-12'
GO

CREATE PROC Lib.spInsertBorrower
@CardNo int,
@Name varchar(50),
@Address varchar(50),
@Phone varchar(10)=NULL
AS 
INSERT INTO Borrower
VALUES (@CardNo,@Name,@Address,@Phone)

EXEC Lib.spInsertBorrower 1,'Charlie Brown','27 Main St','555-5123';
EXEC Lib.spInsertBorrower 2,'Rachel Rigby','101 Hwy 22','688-7711';
EXEC Lib.spInsertBorrower 3,'Nancy Drew','5678 Oak St','555-3467';
EXEC Lib.spInsertBorrower 4,'Derek Jones','6789 Ritmo Cir','222-1234';
EXEC Lib.spInsertBorrower 5,'Howie Han','111 First Ave','234-5678';
EXEC Lib.spInsertBorrower 6,'Tim Tegulpas','432 Nebraska Ave','987-6543';
EXEC Lib.spInsertBorrower 7,'Sam Semel','7688 Hedge Ct','777-9898';
EXEC Lib.spInsertBorrower 8,'Evan Mann','4545 Court St','899-9090';
EXEC Lib.spInsertBorrower 9,'Sally Short','323 Remington St','767-8991'
EXEC Lib.spInsertBorrower 10,'Bob Biggs','227 South St'
GO


CREATE PROC Lib.spInsertBranch
@BranchID int,
@BranchName varchar(30),
@Address varchar(50)
AS
INSERT INTO Branch
VALUES (@BranchID,@BranchName,@Address)

EXEC Lib.spInsertBranch 1,'Central','10 Main St';
EXEC Lib.spInsertBranch 2,'Sharpstown','25 Pine St';
EXEC Lib.spInsertBranch 3,'River','333 River Rd';
EXEC Lib.spInsertBranch 4,'Field','45 Field St'
GO

CREATE PROC Lib.spInsertPublisher
@Name varchar(30),
@Address varchar(30)=NULL,
@Phone varchar(15)=NULL
AS
INSERT INTO Publisher
VALUES (@Name,@Address,@Phone)

EXEC Lib.spInsertPublisher 'Singer','Germany';
EXEC Lib.spInsertPublisher 'Newton','Boston';
EXEC Lib.spInsertPublisher 'GST','New York';
EXEC Lib.spInsertPublisher 'Loyly','Boston';
EXEC Lib.spInsertPublisher 'Mews','Berkeley';
EXEC Lib.spInsertPublisher 'Manx','Paris';
EXEC Lib.spInsertPublisher 'Barr','New York';
EXEC Lib.spInsertPublisher 'Higham','London';
EXEC Lib.spInsertPublisher 'Ten Ton','Oakland';
EXEC Lib.spInsertPublisher 'Cosmo','Portland';
EXEC Lib.spInsertPublisher 'Hello','San Francisco';
EXEC Lib.spInsertPublisher 'ANAA','Los Angeles';
EXEC Lib.spInsertPublisher 'Chance','New York';
EXEC Lib.spInsertPublisher 'Biz','New York';
EXEC Lib.spInsertPublisher 'Famous','Long Island';
EXEC Lib.spInsertPublisher 'North','Hartford';
EXEC Lib.spInsertPublisher 'Bibi','Chicago';
EXEC Lib.spInsertPublisher '1999','Chicago';
EXEC Lib.spInsertPublisher 'Yaya','Berkeley';
EXEC Lib.spInsertPublisher 'Sunshine','Palo Alto'
GO


--Drill Queries--

SELECT B.Title, Br.BranchName, C.No_Of_Copies
FROM Books B JOIN Copies C ON B.BookID=C.BookID
JOIN Branch Br ON C.BranchID=Br.BranchID
WHERE Br.BranchName='Sharpstown'
AND B.Title='The Lost Tribe'

SELECT Br.BranchName,C.No_Of_Copies
FROM Books B JOIN Copies C ON B.BookID=C.BookID
JOIN Branch Br ON C.BranchID=Br.BranchID
WHERE B.Title='The Lost Tribe'

SELECT BO.Name
FROM Borrower BO LEFT JOIN Loans L 
ON L.CardNo=BO.CardNo
WHERE L.BookID IS NULL

SELECT B.Title,Bo.Name,Bo.Address
FROM Loans L JOIN Branch Br ON L.BranchID=Br.BranchID
JOIN Borrower Bo ON L.CardNo=Bo.CardNo
JOIN Books B ON L.BookID=B.BookID
WHERE BranchName='Sharpstown'
AND DueDate='2016-09-19'

SELECT BranchName, COUNT(BookID)
FROM Branch Br JOIN Loans L ON Br.BranchID=L.BranchID
GROUP BY BranchName

SELECT Bo.Name, Bo.Address, COUNT(BookID) AS NumberOfBooksOut
FROM Borrower Bo JOIN Loans L ON Bo.CardNo=L.CardNo
GROUP BY Bo.Name, Bo.Address
HAVING COUNT(BookID)>5

SELECT B.Title, C.No_Of_Copies
FROM Books B JOIN Authors A ON B.BookID=A.BookID
JOIN Copies C ON C.BookID=B.BookID
JOIN Branch Br ON C.BranchID=Br.BranchID
WHERE A.AuthorName='Stephen King' AND Br.BranchName='Central'


--Stored procedure for query #1, get number of copies of a book at a branch:
 
CREATE PROC Lib.spGetCopiesAtBranch
@BranchName varchar(30), @Title varchar(30)
AS
	SELECT B.Title, Br.BranchName, C.No_Of_Copies
	FROM Books B JOIN Copies C ON B.BookID=C.BookID
	JOIN Branch Br ON C.BranchID=Br.BranchID
	WHERE Br.BranchName LIKE '%'+@BranchName+'%'
	AND B.Title LIKE '%'+@Title+'%'