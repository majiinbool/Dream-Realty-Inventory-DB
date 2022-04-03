BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Employee" (
	"Employee_ID"	INTEGER,
	"Branch_ID"	INTEGER,
	"Manager_ID"	INTEGER,
	"First_Name"	TEXT,
	"Last_Name"	TEXT,
	"Phone"	INTEGER,
	"Email"	TEXT,
	"Address"	TEXT,
	"Asset_Count"	INTEGER,
	"Purchase_Ability"	TEXT,
	PRIMARY KEY("Employee_ID")
);
CREATE TABLE IF NOT EXISTS "Asset" (
	"Asset_ID"	INTEGER,
	"PO_Number"	INTEGER,
	"Employee_ID"	INTEGER,
	"Serial_Number"	INTEGER,
	"Product_Model"	INTEGER,
	"Asset Type"	INTEGER,
	"Manufacturer"	INTEGER,
	"Location"	INTEGER,
	"Status"	INTEGER,
	PRIMARY KEY("Asset_ID")
);
CREATE TABLE IF NOT EXISTS "Purchase Order" (
	"PO Number"	INTEGER,
	"Vendor_ID"	INTEGER,
	"Tracking_Number"	INTEGER,
	"Purchase_Date"	TEXT,
	"Item_Quantity"	NUMERIC,
	"Total_Cost"	NUMERIC,
	PRIMARY KEY("PO Number")
);
CREATE TABLE IF NOT EXISTS "Vendor" (
	"Vendor_ID"	INTEGER,
	"Account_Manager_ID"	INTEGER,
	"Address"	TEXT
);
CREATE TABLE IF NOT EXISTS "Account Manager" (
	"Account_Manager_ID"	INTEGER,
	"First_Name"	TEXT,
	"Last_Name"	TEXT,
	"Phone"	INTEGER,
	PRIMARY KEY("Account_Manager_ID")
);
CREATE TABLE IF NOT EXISTS "Branch" (
	"Address"	INTEGER,
	"Department"	INTEGER
);
CREATE TABLE IF NOT EXISTS "Territory" (
	"Territory_ID"	INTEGER,
	"Branch_ID"	INTEGER
);
COMMIT;
