USE Airbnb;
GO

SELECT * FROM BRONZE.airbnb



SELECT 
   SUM(CASE WHEN [Unnamed  0] IS NULL OR [Unnamed  0]=''THEN 1 ELSE 0 END) AS [Unnamed  0],
   
   SUM(CASE WHEN realSum IS NULL OR realSum=''THEN 1 ELSE 0 END) AS realSum,
   SUM(CASE WHEN room_type IS NULL OR room_type='' THEN 1 ELSE 0 END) AS room_type,
   SUM(CASE WHEN room_shared IS NULL OR room_shared='' THEN 1 ELSE 0 END ) AS room_share,
   SUM(CASE WHEN [room_private] IS NULL OR [room_private]='' THEN 1 ELSE 0 END ) AS [room_private],
   SUM(CASE WHEN [person_capacity] IS NULL OR [person_capacity]='' THEN 1 ELSE 0 END ) AS [person_capacity],
   SUM(CASE WHEN [host_is_superhost] IS NULL OR [host_is_superhost]='' THEN 1 ELSE 0 END ) AS [host_is_superhost],
   SUM(CASE WHEN [multi] IS NULL OR [multi]='' THEN 1 ELSE 0 END ) AS [multi],
   SUM(CASE WHEN [biz] IS NULL OR [biz]='' THEN 1 ELSE 0 END ) AS [biz],
   SUM(CASE WHEN [cleanliness_rating] IS NULL OR [cleanliness_rating]='' THEN 1 ELSE 0 END ) AS [cleanliness_rating],
   SUM(CASE WHEN [guest_satisfaction_overall] IS NULL OR [guest_satisfaction_overall]='' THEN 1 ELSE 0 END ) AS [guest_satisfaction_overall],
   SUM(CASE WHEN [bedrooms] IS NULL OR [bedrooms]='' THEN 1 ELSE 0 END ) AS [bedrooms],
   SUM(CASE WHEN [dist] IS NULL OR [dist]='' THEN 1 ELSE 0 END ) AS [dist],
   SUM(CASE WHEN [metro_dist] IS NULL OR [metro_dist]='' THEN 1 ELSE 0 END ) AS [metro_dist],
   SUM(CASE WHEN [attr_index] IS NULL OR [attr_index]='' THEN 1 ELSE 0 END ) AS [attr_index],
   SUM(CASE WHEN [attr_index_norm] IS NULL OR [attr_index_norm]='' THEN 1 ELSE 0 END ) AS [attr_index_norm],
   SUM(CASE WHEN [rest_index] IS NULL OR [rest_index]='' THEN 1 ELSE 0 END ) AS [rest_index],
   SUM(CASE WHEN rest_index_norm IS NULL OR rest_index_norm='' THEN 1 ELSE 0 END ) AS rest_index_norm,
   SUM(CASE WHEN [lng] IS NULL OR [lng]='' THEN 1 ELSE 0 END ) AS [lng],
   SUM(CASE WHEN [lat] IS NULL OR [lat]='' THEN 1 ELSE 0 END ) AS [lat],
   SUM(CASE WHEN [City] IS NULL OR [City]='' THEN 1 ELSE 0 END ) AS [City]
 FROM BRONZE.airbnb

 ----------------------------------------

SELECT *FROM BRONZE.airbnb
WHERE TRY_CAST(realSum AS DECIMAL(12,4) ) IS NULL

SELECT *FROM BRONZE.airbnb
WHERE TRY_CAST(room_shared AS BIT) IS NULL

SELECT *FROM BRONZE.airbnb
WHERE TRY_CAST([room_private] AS BIT) IS NULL

SELECT *FROM BRONZE.airbnb
WHERE TRY_CAST(TRY_CAST([person_capacity] AS DECIMAL(10,2)) AS INT)IS NULL

SELECT *FROM BRONZE.airbnb
WHERE TRY_CAST([host_is_superhost] AS BIT) IS NULL

SELECT *FROM BRONZE.airbnb
WHERE TRY_CAST([multi] AS BIT) IS NULL

SELECT *FROM BRONZE.airbnb
WHERE TRY_CAST([biz] AS BIT) IS NULL


SELECT *FROM BRONZE.airbnb
WHERE TRY_CAST([biz] AS BIT) IS NULL


SELECT *FROM BRONZE.airbnb
WHERE TRY_CAST(TRY_CAST([cleanliness_rating] AS DECIMAL(10,2)) AS INT)IS NULL

SELECT *FROM BRONZE.airbnb
WHERE TRY_CAST(TRY_CAST([guest_satisfaction_overall] AS DECIMAL(10,2)) AS INT)IS NULL

SELECT *FROM BRONZE.airbnb
WHERE TRY_CAST(bedrooms AS INT) IS NULL

SELECT *FROM BRONZE.airbnb
WHERE TRY_CAST(dist AS DECIMAL(10,2)) IS NULL

SELECT *FROM BRONZE.airbnb
WHERE TRY_CAST([metro_dist] AS DECIMAL(10,2)) IS NULL

SELECT *FROM BRONZE.airbnb
WHERE TRY_CAST([attr_index] AS DECIMAL(10,2)) IS NULL

SELECT *FROM BRONZE.airbnb
WHERE TRY_CAST([attr_index_norm] AS DECIMAL(10,2)) IS NULL

SELECT *FROM BRONZE.airbnb
WHERE TRY_CAST(rest_index AS DECIMAL(10,2)) IS NULL

SELECT *FROM BRONZE.airbnb
WHERE TRY_CAST([rest_index_norm] AS DECIMAL(10,2)) IS NULL


SELECT DISTINCT room_type,COUNT(*) 
FROM BRONZE.airbnb
GROUP BY room_type


SELECT DISTINCT [room_shared],COUNT(*) 
FROM BRONZE.airbnb
GROUP BY [room_shared]

SELECT DISTINCT [room_private],COUNT(*) 
FROM BRONZE.airbnb
GROUP BY [room_private]

SELECT DISTINCT [person_capacity],COUNT(*) 
FROM BRONZE.airbnb
GROUP BY [person_capacity]


SELECT DISTINCT [host_is_superhost],COUNT(*) 
FROM BRONZE.airbnb
GROUP BY [host_is_superhost]

SELECT DISTINCT [multi],COUNT(*) 
FROM BRONZE.airbnb
GROUP BY [multi]

SELECT [Unnamed  0],count(*)
FROM BRONZE.airbnb
GROUP BY([Unnamed  0])
HAVING count(*)>1