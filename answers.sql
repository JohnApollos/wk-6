-- Question 1: INNER JOIN employees and offices
SELECT
    e.firstName,
    e.lastName,
    e.email,
    o.officeCode  -- Fetch officeCode from the offices table for clarity
FROM
    employees e
INNER JOIN
    offices o ON e.officeCode = o.officeCode;

    -- Question 2: LEFT JOIN products and productlines
SELECT
    p.productName,
    p.productVendor,
    p.productLine
FROM
    products p
LEFT JOIN
    productlines pl ON p.productLine = pl.productLine;

    -- Question 3: RIGHT JOIN customers and orders, limited to first 10 orders
SELECT
    o.orderDate,
    o.shippedDate,
    o.status,
    c.customerNumber -- Fetching customerNumber from customers to ensure the RIGHT JOIN is demonstrated
FROM
    customers c
RIGHT JOIN
    orders o ON c.customerNumber = o.customerNumber
ORDER BY
    o.orderDate ASC -- Ordering by date to define "first 10" orders
LIMIT 10;