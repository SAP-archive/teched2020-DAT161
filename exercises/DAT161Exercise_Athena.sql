-- Create Remote Source 
CREATE REMOTE SOURCE MY_ATHENA ADAPTER athena 
CONFIGURATION 'workgroup=primary;region=eu-central-1;'
WITH CREDENTIAL TYPE 'PASSWORD' USING 'user=AKIAZHKR77CSQAN756EL;password=Lnf2Gysm/m3bv2YcUm4DdgFQIMr6iK7yDtpJt589';



--Create Athena virtual table
CREATE VIRTUAL TABLE HDLEXERCISE.ATH_NATION AT "MY_ATHENA"."NULL"."tpch_sf1000"."nation";

-- Query 1 - select from virtual table
SELECT * FROM HDLEXERCISE.ATH_NATION

--Replicate table in HANA Cloud 
ALTER VIRTUAL TABLE HDLEXERCISE.ATH_NATION ADD SHARED SNAPSHOT REPLICA

-- Query 2 - select from virtual table and note the difference in performance from query 1
SELECT * FROM HDLEXERCISE.ATH_NATION


