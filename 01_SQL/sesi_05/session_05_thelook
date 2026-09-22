-- SESSION 5: SQL MINI PROJECT
-- Business Question: Seberapa besar completion rate 
-- order di TheLook Ecommerce?

-- Query 1: Dataset final
SELECT
  o.order_id,
  o.user_id,
  o.status,
  o.created_at,
  u.country
FROM `bigquery-public-data.thelook_ecommerce.orders` AS o
INNER JOIN `bigquery-public-data.thelook_ecommerce.users` AS u
  ON o.user_id = u.id
LIMIT 10000;

-- INSIGHT:
-- 1. Completion rate dari jumlah order yang ada masih 
--    dibawah 50%. Perusahaan harus mengidentifikasi 
--    permasalahan yang menyebabkan completion rate di 
--    China, US dan Brasil sangat rendah.
-- 2. Perusahaan bisa membuat strategi quality control 
--    atas permasalahan yang ditemukan.
-- 3. Sebagai platform e-commerce, bisa mengumpulkan 
--    feedback dari mitra maupun customer untuk evaluasi.
