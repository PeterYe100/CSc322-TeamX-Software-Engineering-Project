CREATE TABLE IF NOT EXISTS Users(
    UserName VARCHAR(255),
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Email VARCHAR(255),
    Pass VARCHAR(255),
    PRIMARY KEY (UserName)
);

CREATE TABLE IF NOT EXISTS Groups(
    GroupID INT UNSIGNED,
    GroupName VARCHAR(255),
    PRIMARY KEY (GroupID)
);

CREATE TABLE IF NOT EXISTS UserData(
    UserName VARCHAR(255),
    GroupID INT UNSIGNED,
    UserTypes INT UNSIGNED,
    NumPoints INT,
    PRIMARY KEY (UserName),
    FOREIGN KEY (UserName) REFERENCES User(UserName) 
    ON DELETE CASCADE,
    FOREIGN KEY (GroupID) REFERENCES Groups(GroupID)
    ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS WhiteList(
UserName VARCHAR(255),
GroupID INT UNSIGNED,
FOREIGN KEY (GroupID) REFERENCES Groups(GroupID)
ON DELETE CASCADE,
FOREIGN KEY (UserName) REFERENCES Users(UserName)
ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS BlackList(
UserName VARCHAR(255),
GroupID INT UNSIGNED,
FOREIGN KEY (GroupID) REFERENCES Groups(GroupID)
ON DELETE CASCADE,
FOREIGN KEY (UserName) REFERENCES Users(UserName)
ON DELETE CASCADE
);