-- task a orders

select
  order_id,
  user_id,
  status,
  created_at,
  from bigquery-public-data.thelook_ecommerce.orders
  order by created_at desc
  limit 100;

  -- task b products

  select
  id as product_id,
    name,
    category,
    retail_price

  from bigquery-public-data.thelook_ecommerce.products
  limit 100;

  # task c filter (pilihan sendiri)

  select
    order_id,
    user_id,
    status,
    created_at
  from bigquery-public-data.thelook_ecommerce.orders
  where status = "Complete"
  order by created_at desc
  limit 100;

-- BUSINESS QUESTION UNTUK SESI @
-- 1. berapa jumlah order berdasarkan status? (Completed, Cancelled, Processing, dll)
-- 2. Berapa rata-rata harga produk per kategori?
-- 3. kategori produk mana yang paling banyak dijual?
