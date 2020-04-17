-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT "ProductName", "CategoryName"
FROM "Product" as p
Join "Category" as c
ON p."CategoryID" = c."ID"
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT "CompanyName", "id"
FROM "Order" as o
Join "Shipper" as s
ON o."shipVia" = s.ID
Where o."OrderDate" < '2012-08-09'
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT "ProductName", "Quantity"
FROM "OrderDetail" as od
JOIN "Product" as p
ON p."Id" = od."ProductId"
WHERE od."OrderId" = 10251
ORDER BY p."ProductName";
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT "id" AS "OrderID", "CompanyName", "LastName"
From "Order" as o
JOIN "Customer" as c
JOIN "Employee" as e
ON o."CustomerId" = c."Id" AND od."EmployeeId" = e."Id";
