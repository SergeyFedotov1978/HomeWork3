-- Answer for capture #1

SELECT 
    order_date,
    order_id,
    first_name,
    sh.name AS shipper,
    os.name AS status
FROM
    orders AS ord
        JOIN
    customers AS cu USING (customer_id)
        JOIN
    order_statuses AS os ON ord.status = os.order_status_id
        LEFT JOIN
    shippers AS sh USING (shipper_id)
ORDER BY status , order_id

-- ---------------------
-- Answer for capture #2

SELECT 
    date, cl.name AS 'client', amount, pm.name AS 'name'
FROM
    payments AS p
        JOIN
    clients AS cl USING (client_id)
        JOIN
    payment_methods AS pm ON p.payment_method = pm.payment_method_id

-- ----------------------
-- Answer for capture #3

SELECT 
    customer_id, first_name, points, 'bronze' AS 'type'
FROM
    customers
WHERE
    points <= 2000 
UNION SELECT 
    customer_id, first_name, points, 'silver' AS 'type'
FROM
    customers
WHERE
    points BETWEEN 2000 AND 3000 
UNION SELECT 
    customer_id, first_name, points, 'gold' AS 'type'
FROM
    customers
WHERE
    points >= 3000
ORDER BY first_name

