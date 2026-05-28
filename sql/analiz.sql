-- =============================================
-- SUPERSTORE SATIŞ ANALİZİ
-- =============================================

-- 1. ƏN ÇOX SATIŞ GƏTİRƏN 10 MƏHSUL
SELECT 
    product_name,
    ROUND(SUM(sales), 2) AS umumi_satis,
    ROUND(SUM(profit), 2) AS umumi_menfeet,
    COUNT(order_id) AS sifaris_sayi
FROM orders
GROUP BY product_name
ORDER BY umumi_satis DESC
LIMIT 10;

-- 2. İTKİ VERƏN MƏHSULLAR
SELECT 
    product_name,
    category,
    ROUND(SUM(profit), 2) AS umumi_itki,
    COUNT(order_id) AS sifaris_sayi,
    ROUND(AVG(discount)*100, 1) AS orta_endirim
FROM orders
WHERE profit < 0
GROUP BY product_name
ORDER BY umumi_itki ASC
LIMIT 10;

-- 3. REGİON ÜZRƏ ANALİZ
SELECT 
    region,
    ROUND(SUM(sales), 2) AS umumi_satis,
    ROUND(SUM(profit), 2) AS umumi_menfeet,
    ROUND(SUM(profit)/SUM(sales)*100, 2) AS menfeet_marjasi,
    COUNT(DISTINCT customer_id) AS musteri_sayi,
    COUNT(order_id) AS sifaris_sayi
FROM orders
GROUP BY region
ORDER BY umumi_satis DESC;

-- 4. ENDİRİM ANALİZİ
SELECT 
    CASE 
        WHEN discount = 0 THEN 'Endirimsiz'
        WHEN discount <= 0.20 THEN '1-20%'
        WHEN discount <= 0.40 THEN '21-40%'
        WHEN discount <= 0.60 THEN '41-60%'
        ELSE '60%+'
    END AS endirim_qrupu,
    COUNT(order_id) AS sifaris_sayi,
    ROUND(SUM(sales), 2) AS umumi_satis,
    ROUND(SUM(profit), 2) AS umumi_menfeet,
    ROUND(AVG(profit), 2) AS orta_menfeet
FROM orders
GROUP BY endirim_qrupu
ORDER BY orta_menfeet DESC;

-- 5. MÜŞTƏRİ ANALİZİ
SELECT 
    customer_name,
    segment,
    region,
    COUNT(DISTINCT order_id) AS sifaris_sayi,
    ROUND(SUM(sales), 2) AS umumi_satis,
    ROUND(SUM(profit), 2) AS umumi_menfeet,
    ROUND(AVG(discount)*100, 1) AS orta_endirim
FROM orders
GROUP BY customer_name
ORDER BY umumi_satis DESC
LIMIT 10;