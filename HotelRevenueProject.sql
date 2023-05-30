With Hotels as (
Select * From Year2018
Union
Select * From Year2019
Union
Select * From Year2020)

-- Calculate revenue by yaer
----Select arrival_date_year,
----hotel,
----Round(Sum((stays_in_weekend_nights+stays_in_week_nights)*adr),2) As Revenue
----From Hotels
----Group by arrival_date_year,hotel

Select *
From Hotels
Left join market_segment
On Hotels.market_segment = market_segment.market_segment
Left join meal_cost
ON meal_cost.meal = Hotels.meal
