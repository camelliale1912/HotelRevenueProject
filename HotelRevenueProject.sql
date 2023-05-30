With Hotels as (
Select * From Year2018
Union
Select * From Year2019
Union
Select * From Year2020)

-- Join Hotels with market_segment and meal_cost
Select *
From Hotels
Left join market_segment
On Hotels.market_segment = market_segment.market_segment
Left join meal_cost
ON meal_cost.meal = Hotels.meal
