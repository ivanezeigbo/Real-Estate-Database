--Find the top 5 offices with the most sales for that month.
SELECT Offices.OfficeID, Offices.City, Offices.State, SUM(SellPrice)
FROM Sales
INNER JOIN Offices on Offices.OfficeID = Sales.OfficeID
GROUP BY 
    Sales.OfficeID
ORDER BY
    SUM(SellPrice) DESC
LIMIT 5;

--Find the top 5 estate agents who have sold the most
SELECT Agents.AgentID, Agents.Name, Agents.Email, COUNT(*)
FROM Sales
INNER JOIN Agents on Agents.AgentID = Sales.AgentID
GROUP BY 
    Sales.AgentID
ORDER BY
    COUNT(*) DESC
LIMIT 5;

--Calculate the commission that each estate agent must receive and store the results in a separate table.
SELECT Agents.AgentID, Agents.Name, Agents.Email, TotalCommissions.Commission
FROM TotalCommissions
INNER JOIN Agents on Agents.AgentID = TotalCommissions.AgentID
ORDER BY
    TotalCommissions.Commission DESC;
--For all houses that were sold that month, calculate the average number of days that the house was on the market
SELECT SalesID, SellMonthYear, AVG(
    JulianDay(SellDate) - JulianDay(ListingDate)
)
FROM Sales
GROUP BY 
    SellMonthYear
ORDER BY
    AVG(
    JulianDay(SellDate) - JulianDay(ListingDate)
) DESC;


--For all houses that were sold that month, calculate the average selling price
SELECT SalesID, SellMonthYear, AVG(SellPrice)
FROM Sales
GROUP BY 
    SellMonthYear
ORDER BY
    AVG(SellPrice) DESC;

--Find the zip codes with the top 5 average sales prices
SELECT SalesID, ListingZipCode, AVG(SellPrice)
FROM Sales
GROUP BY 
    ListingZipCode
ORDER BY
    AVG(SellPrice) DESC
LIMIT 5;

