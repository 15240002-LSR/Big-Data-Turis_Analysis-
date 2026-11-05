# LAPORAN TUGAS PROYEK BIG DATA ANALYTICS
**Studi Kasus 08: Tourism Analytics (Hotel Booking Demand)**

---

## 1. Rumusan Masalah & Domain Profiling
Industri pariwisata dan perhotelan sangat rentan terhadap fluktuasi musim serta tingginya angka pembatalan reservasi (*cancellation rate*). Penelitian ini bertujuan untuk:
- Menganalisis tren pendapatan bulanan pada jenis hotel (*City Hotel* vs *Resort Hotel*).
- Mengidentifikasi profil dan asal negara wisatawan utama.
- Menganalisis pola pembatalan berdasarkan segmen pasar (*market segment*).

## 2. Kualitas Data & Pembersihan (Quality Checks)
Pengujian data awal pada 119.390 baris menunjukkan beberapa catatan kualitas data:
- Terdapat nilai *missing* pada kolom `country` (488 baris) dan `children` (4 baris).
- Terdapat 1 transaksi dengan nilai *Average Daily Rate* (`adr`) negatif (-6.88).
- Penanganan dilakukan pada pipeline PySpark dengan mengisi imputasi nilai bawaan (*Unknown*/0) dan memfilter anomali harga.

## 3. Hasil & Visualisasi Insight Kunci
1. **Tren Musiman**: Pendapatan puncak (*peak season*) terjadi pada bulan **Juli dan Agustus**, di mana *Resort Hotel* mengalami lonjakan pendapatan terbesar melebihi $4,5 Juta per bulan.
2. **Asal Domestik & Mancanegara**: Portugal (`PRT`) menjadi pasar terbesar dengan 48.590 reservasi, diikuti oleh negara-negara Eropa Barat seperti Inggris (`GBR` - 12.129) dan Prancis (`FRA` - 10.415).
3. **Risiko Pembatalan**: Segmen pasar *Groups* pada *City Hotel* memiliki rasio pembatalan tertinggi (mencapai >68%), sedangkan segmen *Direct* memiliki tingkat kepastian paling tinggi.

## 4. Rekomendasi Manajerial Bisnis
- **Manajemen Deposit**: Menerapkan kebijakan deposit wajib (*Non-Refundable*) pada transaksi segmen *Groups* dan *Online TA* untuk mengurangi dampak pembatalan mendadak pada *City Hotel*.
- **Alokasi Pemasaran**: Memfokuskan alokasi anggaran pemasaran internasional pada kawasan Eropa Barat (GBR, FRA, ESP, DEU) menjelang musim panas (Mei–Juni).
