## Big Data Tourism Analytics: Hotel Booking Demand Pipeline

Proyek ini merupakan implementasi Praktikum Big Data Analytics untuk **Studi Kasus 08: Tourism Analytics** menggunakan dataset *Hotel Booking Demand* dari Kaggle (119.390 baris data transaksi).

## Arsitektur & Perangkat Teknologi
- **Pengolahan & Profiling Data**: Pandas, SQL
- **Pemrosesan Skala Besar**: PySpark (Apache Spark 3.x)
- **Format Penyimpanan Intermediate**: Apache Parquet (Snappy Compression)
- **Database Target**: PostgreSQL 15
- **Visualisasi & Insight**: Matplotlib, Seaborn

---

## Ringkasan Temuan Utama
1. **Total Volume Data**: 119.390 transaksi reservasi (100% memenuhi target standar praktikum).
2. **Dominasi Pasar**: Pengunjung dari Portugal (`PRT`) merupakan kontributor terbesar dengan 48.590 reservasi, disusul Inggris (`GBR`) dan Prancis (`FRA`).
3. **Analisis Pembatalan**: *City Hotel* memiliki rasio pembatalan jauh lebih tinggi (41,72%) dibandingkan *Resort Hotel* (27,76%).

---

## Langkah Menjalankan Proyek

1. **Clone Repository & Install Dependencies**:
   ```bash
   git clone https://github.com/username/big-data-tourism-analytics.git
   cd big-data-tourism-analytics
   pip install -r requirements.txt
   ```

2. **Jalankan Notebook secara Berurutan**:
   - `notebooks/01_exploration.ipynb`: Profiling data dan cek missing value.
   - `notebooks/02_pyspark_transform.ipynb`: Transformasi PySpark dan penyimpan ke Parquet.
   - `notebooks/03_etl_validation.ipynb`: Validasi Data Quality dan visualisasi grafik.

3. **Eksekusi Skema SQL**:
   Import `sql/schema.sql` dan `sql/queries.sql` ke PostgreSQL 15 Lab.
