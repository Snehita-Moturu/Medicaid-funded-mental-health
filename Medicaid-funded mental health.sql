SHOW DATABASES;

CREATE DATABASE AIT580_FINAL_PROJECT;
USE AIT580_FINAL_PROJECT;

DROP TABLE County_Mental_Health_Profiles;
CREATE TABLE County_Mental_Health_Profiles(
Service_Year INTEGER,
OMH_Region_Code INTEGER,
OMH_Region_Label VARCHAR(30),
County_Label VARCHAR(30), 
Age_Group VARCHAR(10), 
Rate_Code_Group VARCHAR (100),
Recipient_Count_By_County INTEGER,
Count_Of_Recipients_By_Rate_Code_Group_And_County INTEGER,
Units_Total INTEGER,
Paid_Claim_Total INTEGER);

SELECT * FROM County_Mental_Health_Profiles;

INSERT INTO County_Mental_Health_Profiles VALUES('2016','1','Western NY','Allegany','ADULT','Clinic Treatment','435','323','3023','301130');
INSERT INTO County_Mental_Health_Profiles VALUES('2016','1','Western NY','Allegany','ADULT','Community Residence','435','18','141','326026');


SELECT COUNT(*) FROM County_Mental_Health_Profiles;





SELECT Rate_Code_Group, avg(Paid_Claim_Total) as AVG_AmountSpent FROM County_Mental_Health_Profiles
GROUP BY Rate_Code_Group
ORDER BY AVG_AmountSpent DESC;