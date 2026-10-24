USE Airbnb;
CREATE SCHEMA SILVER;
GO
 
 SELECT 
     TRY_CAST([realSum] AS DECIMAL(12,4)) AS realSum,
     room_type,
     TRY_CAST(TRY_CAST([person_capacity] AS DECIMAL(10,2)) AS INT) AS [person_capacity],
     TRY_CAST([host_is_superhost] AS BIT) AS [host_is_superhost],
     TRY_CAST([multi] AS BIT) AS [multi],
     TRY_CAST([biz] AS BIT) AS [biz],
     TRY_CAST(TRY_CAST([cleanliness_rating] AS DECIMAL(10,2) )AS INT) AS [cleanliness_rating],
     TRY_CAST(TRY_CAST([guest_satisfaction_overall] AS DECIMAL(10,2) )AS INT) AS [guest_satisfaction_overall],
     TRY_CAST([bedrooms] AS INT) AS [bedrooms],
     TRY_CAST([dist] AS DECIMAL(10,2)) AS [dist],
     TRY_CAST([metro_dist] AS DECIMAL(10,2) ) AS [metro_dist],
     TRY_CAST([attr_index_norm] AS DECIMAL(10,2) ) AS [attr_index],
     TRY_CAST([rest_index_norm] AS DECIMAL(10,2) ) AS [rest_index],
     LEFT(City,LEN(City)-CHARINDEX('_',REVERSE(City))) As City,
     RIGHT(City,CHARINDEX('_',REVERSE(City))-1) AS DayType
 INTO SILVER.airbnb
 FROM BRONZE.airbnb
 
 ALTER TABLE SILVER.airbnb
 ADD id INT IDENTITY(1,1) PRIMARY KEY;

 