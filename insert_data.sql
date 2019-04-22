-- Office locations
INSERT INTO Offices VALUES (101, "San Francisco", "California", "412 San Fran St.", "San Francisco, CA");
INSERT INTO Offices VALUES (102, "Oakland", "California", "10 Oakland St.", "Oakland, CA");
INSERT INTO Offices VALUES (103, "Boston", "Massachusetts", "4 Boston St.", "Boston, MA");
INSERT INTO Offices VALUES (104, "Tempa", "Florida", "41 Tempa St.", "Tempa, FL");
INSERT INTO Offices VALUES (105, "Berkeley", "California", "2nd St.", "Berkeley, CA");
INSERT INTO Offices VALUES (106, "Phoenix", "Arizona", "9 Phoenix St.", "Phoenix, AZ");


--Agents
BEGIN TRANSACTION;
INSERT INTO Agents VALUES (1, "Michael K. Taylor", "taylor@me.com");
INSERT INTO TotalCommissions VALUES (1, 0); --Initial value of 0 for commissions
COMMIT;
BEGIN TRANSACTION;
INSERT INTO Agents VALUES (2, "Ben Cramer", "cramer@me.com");
INSERT INTO TotalCommissions VALUES (2, 0);
COMMIT;
BEGIN TRANSACTION;
INSERT INTO Agents VALUES (3, "Richard Kris", "kris@me.com");
INSERT INTO TotalCommissions VALUES (3, 0);
COMMIT;
BEGIN TRANSACTION;
INSERT INTO Agents VALUES (4, "John Doe", "doe@me.com");
INSERT INTO TotalCommissions VALUES (4, 0);
COMMIT;
BEGIN TRANSACTION;
INSERT INTO Agents VALUES (5, "Albert Fox", "fox@me.com");
INSERT INTO TotalCommissions VALUES (5, 0);
COMMIT;
BEGIN TRANSACTION;
INSERT INTO Agents VALUES (6, "Jim Redd", "redd@me.com");
INSERT INTO TotalCommissions VALUES (6, 0);
COMMIT;
BEGIN TRANSACTION;
INSERT INTO Agents VALUES (7, "Steve Jobs", "jobs@me.com");
INSERT INTO TotalCommissions VALUES (7, 0);
COMMIT;
BEGIN TRANSACTION;
INSERT INTO Agents VALUES (8, "Michael Tim", "tim@me.com");
INSERT INTO TotalCommissions VALUES (8, 0);
COMMIT;
BEGIN TRANSACTION;
INSERT INTO Agents VALUES (9, "Billy Franklin", "frank@me.com");
INSERT INTO TotalCommissions VALUES (9, 0);
COMMIT;




-- Sales Made
BEGIN TRANSACTION;
INSERT INTO Sales VALUES (1, 1, 101, "S. Fisher", 4158282929, "fisher@sel.com", 99761, 4, 5, 120000, '1962-03-10', 98000, '1962-03-11', '1962-03', 'Sold', 'Frank J.', 4568906655, 'frankj@buy.com');
UPDATE TotalCommissions SET Commission = Commission + (98000 * 0.1) WHERE AgentID = 1;
COMMIT;

BEGIN TRANSACTION;
INSERT INTO Sales VALUES (2, 1, 103, "F. Justin", 4158282928, "justin@sel.com", 99762, 4, 5, 88000, '1962-04-10', 88000, '1962-04-11', '1962-04', 'Sold', 'Frank J.', 4568906655, 'frankj@buy.com');
UPDATE TotalCommissions SET Commission = Commission + (88000 * 0.1) WHERE AgentID = 1;
COMMIT;

BEGIN TRANSACTION;
INSERT INTO Sales VALUES (3, 3, 102, "M. Mathius", 4158282928, "mathius@sel.com", 99712, 4, 5, 188000, '1962-03-10', 188000, '1962-03-10', '1962-03', 'Sold', 'Frank J.', 4568906655, 'frankj@buy.com');
UPDATE TotalCommissions SET Commission = Commission + (188000 * 0.075) WHERE AgentID = 3;
COMMIT;

BEGIN TRANSACTION;
INSERT INTO Sales VALUES (4, 2, 102, "M. Mathius", 4158282928, "mathius@sel.com", 89762, 4, 5, 120000, '1962-03-10', 110000, '1962-03-10', '1962-03', 'Sold', 'Frank J.', 4568906655, 'frankj@buy.com');
UPDATE TotalCommissions SET Commission = Commission + (110000 * 0.075) WHERE AgentID = 2;
COMMIT;

BEGIN TRANSACTION;
INSERT INTO Sales VALUES (5, 6, 105, "R. Terry", 4158282928, "terry@sel.com", 91712, 4, 5, 121000, '1962-03-10', 120000, '1962-03-10', '1962-03', 'Sold', 'Frank J.', 4568906655, 'frankj@buy.com');
UPDATE TotalCommissions SET Commission = Commission + (120000 * 0.075) WHERE AgentID = 6;
COMMIT;

BEGIN TRANSACTION;
INSERT INTO Sales VALUES (6, 4, 102, "M. Matt", 4158282928, "matt@sel.com", 89762, 4, 5, 120000, '1962-03-10', 110000, '1968-03-10', '1962-03', 'Sold', 'Frank J.', 4568906655, 'frankj@buy.com');
UPDATE TotalCommissions SET Commission = Commission + (110000 * 0.075) WHERE AgentID = 4;
COMMIT;

BEGIN TRANSACTION;
INSERT INTO Sales VALUES (7, 7, 106, "R. Terry", 4158282928, "terry@sel.com", 91712, 4, 5, 221000, '1962-03-10', 221000, '1962-03-10', '1962-03', 'Sold', 'Frank J.', 4568906655, 'frankj@buy.com');
UPDATE TotalCommissions SET Commission = Commission + (221000 * 0.06) WHERE AgentID = 7;
COMMIT;

BEGIN TRANSACTION;
INSERT INTO Sales VALUES (8, 9, 102, "M. Mathius", 4158282928, "mathius@sel.com", 89762, 4, 5, 560000, '1962-03-10', 530000, '1968-03-10', '1968-03', 'Sold', 'Frank J.', 4568906655, 'frankj@buy.com');
UPDATE TotalCommissions SET Commission = Commission + (530000 * 0.05) WHERE AgentID = 9;
COMMIT;

BEGIN TRANSACTION;
INSERT INTO Sales VALUES (9, 8, 104, "R. Terry", 4158282928, "terry@sel.com", 91712, 4, 5, 123000, '1962-03-10', 122000, '1962-03-10', '1962-03', 'Sold', 'Frank J.', 4568906655, 'frankj@buy.com');
UPDATE TotalCommissions SET Commission = Commission + (122000 * 0.075) WHERE AgentID = 8;
COMMIT;

BEGIN TRANSACTION;
INSERT INTO Sales VALUES (10, 5, 102, "M. Mathius", 4158282928, "mathius@sel.com", 89762, 4, 5, 1500000, '1962-03-10', 1100000, '1968-03-10', '1968-03', 'Sold', 'Frank J.', 4568906655, 'frankj@buy.com');
UPDATE TotalCommissions SET Commission = Commission + (1100000 * 0.04) WHERE AgentID = 5;
COMMIT;


--NON TRANSACTIONS

INSERT INTO Sales (SalesID, AgentID, OfficeID, SellersName, SellersPhoneNo, SellersEmail, ListingZipCode, NoOfBathrooms, NoOfBedrooms, ListingPrice, ListingDate, Status) VALUES (11, 2, 101, "S. Fisher", 4158282929, "fisher@sel.com", 99761, 4, 5, 120000, '1962-03-10', 'Listed');

INSERT INTO Sales (SalesID, AgentID, OfficeID, SellersName, SellersPhoneNo, SellersEmail, ListingZipCode, NoOfBathrooms, NoOfBedrooms, ListingPrice, ListingDate, Status) VALUES (12, 7, 104, "A. Adams", 4158282929, "adams@sel.com", 29761, 4, 5, 720000, '1982-03-10', 'Listed');