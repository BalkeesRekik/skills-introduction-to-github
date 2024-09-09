Part 1:
use world;
SELECT name FROM country WHERE continent = 'South America';
SELECT population FROM country WHERE name = 'Germany';
SELECT name FROM city WHERE countrycode = (SELECT code FROM country WHERE name = 'Japan');
SELECT name, population FROM country WHERE region = 'Africa' ORDER BY population DESC LIMIT 3;
SELECT name FROM country JOIN countrylanguage ON country.code = countrylanguage.countrycode WHERE countrylanguage.language = 'French' AND countrylanguage.isofficial = TRUE;


USE Chinook_AutoIncrement;
SELECT Title FROM Album JOIN Artist ON Album.ArtistId = Artist.ArtistId WHERE Artist.Name = 'AC/DC';
SELECT FirstName, LastName, Email FROM Customer WHERE Country = 'Brazil';
SELECT Name FROM Playlist;
SELECT COUNT(*) FROM Track JOIN Genre ON Track.GenreId = Genre.GenreId WHERE Genre.Name = 'Rock';
SELECT FirstName, LastName FROM Employee WHERE ReportsTo = (SELECT EmployeeId FROM Employee WHERE FirstName = 'Nancy' AND LastName = 'Edwards');
SELECT CustomerId, SUM(Total) AS TotalSales FROM Invoice GROUP BY CustomerId;


Part 2:
The database that I chose to work on is for a small business owned by my sisters called Jasmine & Clove.

CREATE TABLE Products1 (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(255),
    Views INT,
    Favorites INT,
    Orders INT,
    Revenue INT  
);

CREATE TABLE Traffic (
    Clicks INT,
    Orders INT,
    Revenue INT
);

CREATE TABLE ShopperStats (
    ItemFavorites INT,
    Reviews INT,
    RepeatBuyers INT,
    CitiesReached INT,
    AbandonnedCarts INT
);



INSERT INTO Products1 (ProductID, Name, Views, Favorites, Orders, Revenue)
VALUES
(1, 'Olive Wood Serving Board', 361, 20, 1, 39.95),
(2, 'Cake Stand', 184, 3, 1, 163),
(3, 'Classic Olive Wood Egg Cups', 175, 28, 6, 163),
(4, 'olive Wood Bowl with Lid and Spoon', 168, 21, 7, 152),
(5, 'Olive Wood Untensil Set', 153, 15, 6, 174);

INSERT INTO Traffic (Clicks, Orders, Revenue)
VALUES
(448, 3, 272),
(344, 1, 40),
(750, 6, 380),
(44, 0, 0),
(270, 1, 50);

INSERT INTO ShopperStats (ItemFavorites, Reviews, RepeatBuyers, CitiesReached, AbandonnedCarts)
VALUES
(18, 1, 0, 3, 5),
(4, 0, 0, 5, 7),
(22, 2, 0, 5, 11),
(30, 4, 1, 7, 14),
(19, 2, 0, 4, 5);

#1 Best selling product
SELECT Name, Orders, Revenue FROM Products1 ORDER BY Orders DESC LIMIT 1;

#2 Least selling product 
SELECT Name, Orders,Revenue FROM Products1 ORDER BY Orders ASC LIMIT 1;

#3 Highest revenue month 
SELECT Clicks, Orders, Revenue FROM Traffic ORDER BY Revenue DESC LIMIT 1;

