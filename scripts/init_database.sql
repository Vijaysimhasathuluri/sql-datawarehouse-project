/* 
===============================================
-- Create databse and schemas --
===================================================
Script Purpose:
     This script create a new Database named 'DataWarehouse' after checking if it already exists.
     If the database exists, it is dropped and recreated. Additionally, the Script set up three schemas 
     within the database : 'bronze', 'silver', 'gold' .

WARNING:
     Running this script will dropthe entire 'DataWarehouse' database if it exists.
	 All Data in the database will be permenantly deleted. Proceed with caution 
	 and ensure you have proper backups before running this script.
*/
USE master;

-- Drop and recreate the 'DataWarehouse' database if exists.

IF EXISTS (SELECT 1 FROM sys.databases WHERE name ='DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
