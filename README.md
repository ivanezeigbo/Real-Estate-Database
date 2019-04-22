# DB Application

## Functionality

This sql files are designed to create the relations under normal form for a many to many relationship between agents and offices. The SQLite code creates the tables and allows querying, updates and insertions into these tables. The schema is designed to improve efficiency in querying and storage. Sell Date and SellMonthYear are redundant columns created to ease querying for selection by month. 

## File Structure

The root directory contains the following files:

- `create.sql` creates the tables.
- `insert_data.sql` inserts and updates table data.
- `query_data.sql` retrieves data from the table.

With a much bigger, we can look at applying the power of SQL indices to quickly retrieve data from these tables. 


