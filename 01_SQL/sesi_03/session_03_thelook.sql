--task 1
SELECT
  o.order_id,
  o.status,
  u.country
FROM `bigquery-public-data.thelook_ecommerce.orders` AS o
INNER JOIN `bigquery-public-data.thelook_ecommerce.users` AS u
  ON o.user_id = u.id
LIMIT 20;
--task 2
SELECT
u.country,
COUNT(*) AS total_orders
FROM `bigquery-public-data.thelook_ecommerce.orders` AS o
INNER JOIN `bigquery-public-data.thelook_ecommerce.users` AS u
  ON o.user_id = u.id
GROUP BY u.country
ORDER BY total_orders DESC
LIMIT 10;

--INSIGHT: berdasarkan hasil analisis, jumlah order paling banyak dari the look ecommerce yaitu dari china. 
  china merupakan market dominan the look ecommerce karena gap antara order dari china jika dibandingkan dari negara lainnya sangat jauh. 
  pada hasil analisis yang sudah dilakukan, terdapat 3 negara paling dominan pada insight customer the look ecommerce, yaitu china dengan total order 42586,
    united states dengan total order 27523, dan brasil dengan total order 18220
