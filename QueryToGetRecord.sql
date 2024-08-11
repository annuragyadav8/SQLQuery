--Get All Customer Name and City who has not placed single order.
select CustomerId, CustomerName As 'Customer Name', City from Customer 
where CustomerId not in (select  CustomerId from [Order])

--Delete All Customers whose total order value is less than 1000.
--not able to delete because it is already containing foreign key reference
SELECT C.CustomerId
FROM Customer C
LEFT JOIN [Order] O ON C.CustomerId = O.CustomerId
GROUP BY C.CustomerId
HAVING AVG(O.OrderValue) < 1000

-- Delete orders related to customers with an average OrderValue < 1000
--DELETE FROM [Order]
--WHERE CustomerId IN (
--    SELECT C.CustomerId
--    FROM Customer C
--    LEFT JOIN [Order] O ON C.CustomerId = O.CustomerId
--    GROUP BY C.CustomerId
--    HAVING AVG(O.OrderValue) < 1000
--);

-- Now delete the customers
--DELETE FROM Customer
--WHERE CustomerId IN (
--    SELECT C.CustomerId
--    FROM Customer C
--    LEFT JOIN [Order] O ON C.CustomerId = O.CustomerId
--    GROUP BY C.CustomerId
--    HAVING AVG(O.OrderValue) < 1000
--);

--Get All Customers Name, City and Average Order Value.
select C.CustomerId, C.CustomerName As 'Customer Name', C.City, Avg(O.OrderValue) As 'Average Order Value'
from Customer C left join [Order] O on  C.CustomerId = O.CustomerId
Group by C.CustomerName, C.City, C.CustomerId

--Get All Order Id, Order Value with Customer Name And City.
select O.OrderId, O.OrderValue, C.CustomerName As 'Customer Name', C.City
from  [Order] O left join Customer C on  C.CustomerId = O.CustomerId
