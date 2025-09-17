  \c live024

 --  SELECT
 --  c.*,
 --   JSON_AGG(
 --      JSON_STRIP_NULLS(
 --        JSON_BUILD_OBJECT(
 --        'id', ord.id,
 --        'amount', ord.amount
 --       )
 --    )
 -- ) AS orders
 --  FROM customers as c
 --    LEFT JOIN  orders as ord ON customer_id = c.id
 --  WHERE c.id = 9
 --   GROUP BY c.id
 --  ;


  SELECT
  c.*,
  no_empty_object_array(
    COUNT(ord.id),
    JSON_AGG(
     JSON_BUILD_OBJECT(
     'id', ord.id,
     'amount', ord.amount
     )
    )
) as orders
  FROM customers as c
    LEFT JOIN  orders as ord ON customer_id = c.id
  WHERE c.id = 9
   GROUP BY c.id
  ;
