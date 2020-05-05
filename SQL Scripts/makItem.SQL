/*
Created: 7/18/2019
Modified: 7/18/2019
Project: bcp
Model: bcp
Company: BCP
Author: Bruce Wayne
Version: wd40
Database: PostgreSQL 9.5
*/


-- Create tables section -------------------------------------------------

-- Table Item

CREATE TABLE "Item"(
 "Name" Character varying,
 "ItemDate" Date,
 "CreateDate" Date,
 "LastUpDate" Date,
 "Amount" Numeric,
 "OrigAmount" Numeric,
 "Highest Amount" Numeric,
 "accountID" UUID,
 "ownerID" UUID,
 "creatorID" UUID,
 "categoryID" UUID
)
;

-- Table HouseHoldCategories

CREATE TABLE "HouseHoldCategories"(
 "cateoryID" UUID,
 "categoryDescription" Character varying,
 "percentageOfBudget" Integer
)
;


