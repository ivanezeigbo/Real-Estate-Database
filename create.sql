PRAGMA foreign_keys = ON;

--Creating tables in a transaction
--Every table is important to all of the processes, so I prefer to have them in transactions
BEGIN TRANSACTION;

--Table showing offices
DROP TABLE IF EXISTS Offices;
CREATE TABLE Offices (
    OfficeID INTEGER PRIMARY KEY,
    City TEXT,
    State TEXT,
    Address TEXT,
    Region TEXT --Would be city not zip code - so text format
);

--Table showing agents
DROP TABLE IF EXISTS Agents;
CREATE TABLE Agents (
    AgentID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Email TEXT
);

--Table showing sales
DROP TABLE IF EXISTS Sales;
CREATE TABLE Sales (
    SalesID INTEGER PRIMARY KEY,
    AgentID INTEGER,
    OfficeID INTEGER,
    SellersName TEXT NOT NULL,
    SellersPhoneNo INTEGER,
    SellersEmail TEXT,
    ListingZipCode INTEGER,
    NoOfBathrooms INTEGER,
    NoOfBedrooms INTEGER,
    ListingPrice REAL NOT NULL,
    ListingDate DATE NOT NULL,
    SellPrice DATE,
    SellDate TEXT,
    SellMonthYear TEXT,
    Status TEXT NOT NULL, --could be either 'SOLD' or 'LISTED'
    BuyerName TEXT,
    BuyerPhoneNo INTEGER,
    BuyerEmail TEXT,
    FOREIGN KEY (AgentID) REFERENCES Agents(AgentID),
    FOREIGN KEY (OfficeID) REFERENCES Offices(OfficeID)
);

--Table showing agent commissions
DROP TABLE IF EXISTS TotalCommissions;
CREATE TABLE TotalCommissions (
    AgentID INTEGER,
    Commission REAL,
    FOREIGN KEY (AgentID) REFERENCES Agents(AgentID)
);

END TRANSACTION;