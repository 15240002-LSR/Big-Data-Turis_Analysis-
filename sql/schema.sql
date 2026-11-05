-- DDL Skema Tabel PostgreSQL untuk Tourism Analytics

CREATE TABLE IF NOT EXISTS hotel_bookings_clean (
    booking_id SERIAL PRIMARY KEY,
    hotel VARCHAR(50),
    is_canceled INT,
    lead_time INT,
    arrival_date_year INT,
    arrival_date_month VARCHAR(20),
    arrival_date_day_of_month INT,
    stays_in_weekend_nights INT,
    stays_in_week_nights INT,
    total_nights INT,
    adults INT,
    children INT,
    babies INT,
    total_guests INT,
    meal VARCHAR(20),
    country VARCHAR(10),
    market_segment VARCHAR(50),
    distribution_channel VARCHAR(50),
    adr NUMERIC(10, 2),
    total_revenue NUMERIC(12, 2),
    status_desc VARCHAR(20)
);
