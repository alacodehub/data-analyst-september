-- task A
SELECT
  status,
  COUNT(*) AS total_orders
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY status
ORDER BY total_orders DESC;\

--task B
SELECT
  SUM(sale_price) AS total_sales,
  AVG(sale_price) AS average_sale_price
FROM `bigquery-public-data.thelook_ecommerce.order_items`;

--task C
SELECT
  product_id,
  SUM(sale_price) AS total_sales
FROM `bigquery-public-data.thelook_ecommerce.order_items`
GROUP BY product_id
ORDER BY total_sales DESC
LIMIT 10;

--Business Question
  berapa rata rata rating yang diberikan oleh customer untuk produk A?
  berapa jumlah waktu yang dibutuhkan oleh CS untuk menangani complain 1 customer?
