---------------------------------------------------------------------------------------------------------
--Yarin Sabag
--“Pokemon” table:

--1.
--select name from [dbo].[pokemon] where name like '%r%' or name like '%R%'

--2.

--select name, weight from [dbo].[pokemon] order by weight desc

--3.

--select lower(name) as New_name from [dbo].[pokemon] 

--4.

--select count(height) AS pokemons_70 from pokemon where height > 70

----------------------------------------------------------------------------------------------------------

--“DsOne_orders” table:

--select* from [dbo].[DsOne_orders]
--1.
--select  avg(days_to_ship) as avgdays from [dbo].[DsOne_orders] where category like 'Office Supplies' and ship_date like '%2019%' 

--2.
--select avg(len(product_name)) as len_name from [dbo].[DsOne_orders] where order_weekday like 'Monday' 

--3
--select * from [dbo].[DsOne_orders];

--select subq.city , max(subq.sumsales) as largest_sales , subq.[state ]
--from
--(
--select sum(sales) as sumsales , city , [state ]
--from [dbo].[DsOne_orders]
--group by [state ], city
--) as subq
--group by subq.city, subq.[state ]
--order by largest_sales desc

--    --4
----select * from [dbo].[DsOne_orders]
--select state , city, count(*) AS customers_count, sum(count(*)) over (partition by state) as customer_state_count 
--from [dbo].[DsOne_orders]
--where segment like 'Consumer' and  customer_name like '%c%' and  customer_name like '%C%'
--group by state,city order by customer_state_count desc,state,city

---------------------------------------------------------------------------------------------------------------------------------
--“data_auto” tables:
--1.
--select * from [dbo].[data_auto_November]
--select sum(Cost) as total_Cost,[Day of Week] from [dbo].[data_auto_November]
--where [Day of Week] like '%Sunday%' and [Advertiser] like 'Ferrari' 
--group by [Day of Week]

----2
--select * from [dbo].[data_auto_October]
--union all
--select * from [dbo].[data_auto_November]

--select * from [dbo].[data_auto_October]
--union 
--select * from [dbo].[data_auto_November]
-------  בפקודה הראושנה שהצגתי הוא מאחד לנו את כל הנתונים מ2 הטבלאות גם את הנתונים המשותפים כלומר עם כפיליות -------
-----בפקודה השנייה שהצגתי גם מאחדת לנו את הטבלאות אך מסירה כפיליות כלומר היא תאחד את הנתונים המשותפים הייחודים ל2 הטבלאות ותציג גם את שאר הנתונים מ2 הטבלאות-----
--3
--“intersect”
--אז מבלי לבצע שאילתה 
--התוצאה של הפקודה תהיה שישאר לנו רק הנתונים המשותפים לטבלה (כמובן בלי כפיליות של טבלאות) הנתונים שמשותפים לטבלאות רק הם זה מה שיוצג לנו 