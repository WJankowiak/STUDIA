#Create database Service;
DROP TABLE IF EXISTS Users;

CREATE TABLE  Users
(Username CHAR(50) UNIQUE NOT NULL,
Name CHAR(50),
Surname CHAR(70),
Password CHAR(18) NOT NULL,
PRIMARY KEY (Username));

DROP TABLE IF EXISTS Signs;
CREATE TABLE Signs(
	Id INT NOT NULL AUTO_INCREMENT,
    Name CHAR(15),
    PRIMARY KEY (Id));
    
DROP TABLE IF EXISTS PAINTINGS;

CREATE TABLE Paintings(
	Username CHAR(50), 
    FOREIGN KEY (Username) REFERENCES Users(Username),
    SignId INT(10),
    FOREIGN KEY (SignId) REFERENCES Signs(Id),
    CorrectGuesses INT(10),
    IncorrectGuesses INT(10));
    