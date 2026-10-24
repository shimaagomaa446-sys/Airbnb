# Airbnb Pricing Dashboard

## Overview
This project analyzes Airbnb listings to understand the factors that affect price. The analysis covers 51.71K listings across 10 European cities, looking at city, room type, number of bedrooms, person capacity, host status, and weekday vs. weekend pricing. The data was processed in SQL using a medallion architecture and visualized in Power BI.

## Dataset
- **Source:** Kaggle (Airbnb prices in European cities) – https://www.kaggle.com/datasets/thedevastator/airbnb-prices-in-european-cities
- **Size:** 51.71K listings
- **Cities:** Amsterdam, Athens, Barcelona, Berlin, Budapest, Lisbon, London, Paris, Rome, Vienna
- **Price field (`realSum`):** total price for a two-night stay

## Data Pipeline
1. **Source:** Downloaded the dataset from Kaggle.
2. **Merge:** Combined the separate files into one dataset.
3. **SQL:** Loaded the merged data into SQL.
4. **Medallion Architecture:**
   - **Bronze:** raw data as loaded.
   - **Silver:** cleaned and standardized data.
   - **Gold:** dimension (`DIMList`) and fact (`FACT`) tables ready for reporting.
5. **Power BI:** Built an interactive dashboard on top of the Gold layer.

## Dashboard Preview
![Page 1](screenshots/page1.png)
![Page 2](screenshots/page2.png)
![Page 3](screenshots/page3.png)

## Key Insights
1. **City matters most:** Amsterdam has the highest average price (573), while Athens has the lowest (152).
2. **Room type:** Entire homes average 324, compared with 205 for private rooms and 144 for shared rooms.
3. **Size and capacity:** Average price rises with bedrooms up to 5 (707) and with person capacity (228 for 2 guests vs. 457 for 6).
4. **Superhosts:** Listings from non-superhosts average slightly higher (289) than superhosts (254).
5. **Weekends vs. weekdays:** Weekend prices (284) are slightly higher than weekday prices (276).
6. **Data quality note:** Only 2 listings have 6 bedrooms, so that category was excluded from the bedrooms chart because it was not representative.

## Tools Used
- SQL (medallion architecture)
- Power BI (data modeling, DAX, visualization)
- GitHub

## Author
Shimaa Gomaa – [LinkedIn](https://linkedin.com/in/shimaa-gomaa-39b094292)
