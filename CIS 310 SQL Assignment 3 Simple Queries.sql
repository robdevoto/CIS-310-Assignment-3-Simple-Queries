-- Rob DeVoto
-- CIS 310-76
-- 10/30/2022
-- SQL A3
-- Uses Staywell_DB_Script

--1) List the property ID for every property with two bedrooms that is managed by StayWell-Georgetown.
SELECT PROPERTY_ID
	FROM PROPERTY
	WHERE BDRMS = 2 AND OFFICE_NUM = 2;

--2) List the property ID for every property with a monthly rent that is between $1,350 and $1,750.
SELECT PROPERTY_ID
	FROM PROPERTY
	WHERE MONTHLY_RENT > 1350 AND MONTHLY_RENT < 1750;

--3) List the property ID for every property managed by StayWell-Columbia City whose monthly rent is 
	--less than $1,500.
SELECT PROPERTY_ID
	FROM PROPERTY
	WHERE OFFICE_NUM = 1 AND MONTHLY_RENT < 1500;

--4) Labor is billed at the rate of $35 per hour. List the property ID, category number, estimated hours,
	--and estimated labor cost for every service request. To obtain the estimated labor cost, multiply the
	--estimated hours by 35. Use the column name ESTIMATED_COST for the estimated labor cost.
SELECT PROPERTY_ID, CATEGORY_NUMBER, EST_HOURS, (EST_HOURS * 35) AS ESTIMATED_COST
	FROM SERVICE_REQUEST;

--5) List the owner number and last name for all owners who live in Nevada (NV), Oregon (OR), or Idaho (ID).
SELECT OWNER_NUM, LAST_NAME
	FROM OWNER
	WHERE STATE IN ('NV', 'OR', 'ID');

--6) List the office number, property ID, square footage, and monthly rent for all properties. Sort the 
	--results by monthly rent within the square footage.
SELECT OFFICE_NUM, PROPERTY_ID, SQR_FT, MONTHLY_RENT
	FROM PROPERTY
	ORDER BY SQR_FT, MONTHLY_RENT;

--7) How many three-bedroom properties are managed by each office?
SELECT COUNT(*), OFFICE_NUM
	FROM PROPERTY
	WHERE BDRMS = '3'
	GROUP BY OFFICE_NUM;

--8) Calculate the total value of monthly rents for all properties.
SELECT SUM(MONTHLY_RENT)
	FROM PROPERTY;
