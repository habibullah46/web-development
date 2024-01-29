SELECT  *
  FROM [secondproject].[dbo].[coffee]
  --query number 1
  select * from coffee
  where coffee_type is NULL and rating = 4 and reviews =44 and price >20
  
  --query number 2
  select coffee_type from coffee
  where coffee_type = 'french'
