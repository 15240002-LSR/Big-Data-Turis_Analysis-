-- Query 1: Tren Pendapatan & Rasio Pembatalan per Jenis Hotel
SELECT 
    hotel,
    arrival_date_year,
    arrival_date_month,
    COUNT(*) AS total_reservasi,
    SUM(total_revenue) AS grand_total_revenue,
    ROUND(AVG(is_canceled) * 100, 2) AS pct_pembatalan
FROM hotel_bookings_clean
GROUP BY hotel, arrival_date_year, arrival_date_month
ORDER BY arrival_date_year, arrival_date_month;

-- Query 2: Top 10 Negara Asal Pengunjung dengan Pendapatan Terbesar
SELECT 
    country,
    COUNT(*) AS jumlah_transaksi,
    SUM(total_guests) AS total_wisatawan,
    SUM(total_revenue) AS total_pendapatan
FROM hotel_bookings_clean
WHERE is_canceled = 0
GROUP BY country
ORDER BY total_pendapatan DESC
LIMIT 10;

-- Query 3: Performa Segmen Pasar (Market Segment) & Lead Time
SELECT 
    market_segment,
    hotel,
    ROUND(AVG(lead_time), 1) AS avg_lead_time_days,
    ROUND(AVG(adr), 2) AS avg_daily_rate,
    ROUND(AVG(is_canceled) * 100, 2) AS cancellation_rate_pct
FROM hotel_bookings_clean
GROUP BY market_segment, hotel
ORDER BY cancellation_rate_pct DESC;
