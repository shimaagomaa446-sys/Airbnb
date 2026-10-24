CREATE SCHEMA GOLD;
GO
---dimlist-----
SELECT
    [room_type],
    [person_capacity],
    [cleanliness_rating],
    [guest_satisfaction_overall],
    [host_is_superhost],
    [multi],
    [biz],
    [bedrooms],
    [dist],
    [metro_dist],
    [attr_index],
    [rest_index],
    [DayType],
    City
    [id] AS id_list
INTO GOLD.DIMList
FROM SILVER.airbnb


ALTER TABLE GOLD.DIMList ALTER COLUMN id_list INT NOT NULL
ALTER TABLE GOLD.DIMList ADD CONSTRAINT PK_GOLD_LIST
PRIMARY KEY(id_list)

-------------------------------------------
SELECT 
    realSum,
    id AS id_list
INTO GOLD.FACT
FROM SILVER.airbnb

ALTER TABLE GOLD.FACT 
ADD CONSTRAINT FK_FACT FOREIGN KEY(id_list)
REFERENCES GOLD.DIMList(id_list) 

CREATE INDEX IX_FACT ON GOLD.FACT(id_list)




