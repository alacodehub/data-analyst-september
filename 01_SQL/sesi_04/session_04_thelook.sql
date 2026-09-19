SELECT
  u.country,
  COUNT(*) AS complete_orders
FROM `bigquery-public-data.thelook_ecommerce.orders` AS o
INNER JOIN `bigquery-public-data.thelook_ecommerce.users` AS u
  ON o.user_id = u.id
WHERE o.status = 'Complete'
GROUP BY u.country
ORDER BY complete_orders DESC
LIMIT 5;

SELECT
  u.country,
  COUNT(*) AS total_orders,
  COUNTIF(o.status = 'Complete') AS complete_orders
FROM `bigquery-public-data.thelook_ecommerce.orders` AS o
INNER JOIN `bigquery-public-data.thelook_ecommerce.users` AS u
  ON o.user_id = u.id
GROUP BY u.country
ORDER BY total_orders DESC
LIMIT 5;

kesimpulan: jumlah order dari china yang selesai (finished) adalah 10608
jika dibandingkan dengan jumlah total order dari china (dengan total sebesar 42586) 
jumlah order yang finished hanya 24%

untuk task kedua, completion rate untuk US dan Brasil adalah 27523 dan 18220
namun completion rate dari order tersebut hanya 25% untuk US dan 25% untuk brasil. pertanyaan 
kritis yang muncul adalah: 1) apa yang menyebabkan completion rate ordernya rendah? (tidak ada 50% dari data keseluruhan order)
2) strategi apa yang harus didiskusikan perusahaan untuk menaikkan completion rate tersebut?
