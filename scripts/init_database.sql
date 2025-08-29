/*
I use SQL Server
This file will initialize the database and all the schemas we need
(Since we use Medallion Architecture there're 3 layers Bronze, Silver, Gold.
*/


USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE Warehouse SET SINGLE_USER WITH ROLLBACK_IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO


-- Create the 'DataWarehouse' database
CREATE DATABASE 'DataWarehouse'
GO

USE DataWarehouse;
GO

-- Create Schema's

CREATE SCHEMA bronze; --Bronze Layer Schema
GO


CREATE SCHEMA silver; --Silver Layer Schema
GO

CREATE SCHEMA gold; --Gold Layer Schema
GO


