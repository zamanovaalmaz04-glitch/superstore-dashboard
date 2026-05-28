# 📊 Superstore Satış Analizi Dashboard

> **ABŞ pərakəndə mağazasının 4 illik (2014-2017) satış datasının tam analizi —**  
> Python ETL · SQLite · SQL · Power BI · Plotly · RFM Analizi

---

## 🎯 Layihənin Məqsədi

Real biznes suallarını data ilə cavablamaq:
- Hansı məhsullar **pul itirir**?
- Hansı müştərilər **VIP**, hansılar **riskli**dir?
- **Endirim** mənfəətə necə təsir edir?
- Hansı region daha **sərfəlidir**?

---

## 🔍 Əsas Tapıntılar

| Tapıntı | Dəyər |
|--------|-------|
| 💰 Ümumi Satış | $2.3M |
| 📈 Ən Çox Satan Məhsul | Canon imageCLASS 2200 ($61,599) |
| ⚠️ Ən Çox İtki Verən | Cubify CubeX 3D Printer (-$9,239) |
| 🔴 Kritik Tapıntı | 40%+ endirim → hər sifarişdə orta $134 itki |
| 👥 VIP Müştəri Sayı | 193 müştəri |
| 🌍 Ən Sərfəli Region | West (14.94% mənfəət marjası) |

---

## 🛠️ İstifadə Edilən Texnologiyalar

![Python](https://img.shields.io/badge/Python-3.14-blue?logo=python)
![SQL](https://img.shields.io/badge/SQL-SQLite-orange?logo=sqlite)
![PowerBI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow?logo=powerbi)
![Plotly](https://img.shields.io/badge/Plotly-Interactive-green?logo=plotly)
![Pandas](https://img.shields.io/badge/Pandas-ETL-lightblue?logo=pandas)

---

## 📁 Layihə Strukturu

```
superstore_dashboard/
├── 📁 data/
│   └── Sample - Superstore.csv       # Raw data (9,986 sifariş)
├── 📁 notebooks/
│   ├── 01_etl.ipynb                  # ETL pipeline
│   └── 02_analiz.ipynb               # SQL + RFM + Plotly
├── 📁 sql/
│   └── analiz.sql                    # 5 biznes sorğusu
├── 📁 dashboard/
│   ├── proje9.pbix                   # Power BI dashboard
│   ├── hesabat.xlsx                  # Excel hesabatı (5 vərəq)
│   ├── index.html                    # İnteraktiv qrafiklər
│   ├── rfm_seqment.html              # RFM analizi
│   ├── satis_trendi.html             # Aylıq trend
│   └── endirim_menfeet.html          # Scatter analizi
└── superstore.db                     # SQLite bazası
```

---

## 🔄 İş Axını

```
CSV (Raw Data)
    ↓
Python ETL (təmizlə, çevir)
    ↓
SQLite Database
    ↓
SQL Analizi + Plotly Qrafiklər
    ↓
Power BI Dashboard + Excel Hesabat
```

---

## 📊 Dashboard Səhifələri (Power BI)

| Səhifə | Məzmun |
|--------|--------|
| 1️⃣ Ümumi Baxış | 5 KPI, 4 qrafik, 2 Slicer |
| 2️⃣ Satış Analizi | YoY%, aylıq trend, endirim analizi |
| 3️⃣ Məhsul Analizi | TOP/BOTTOM 10, mənfəət marjası |
| 4️⃣ Müştəri Analizi | RFM seqmentasiya, region, TOP 10 |

---

## 👥 RFM Müştəri Seqmentasiyası

| Seqment | Müştəri Sayı | Strategiya |
|---------|-------------|------------|
| ⭐ VIP | 193 | Loyallıq proqramı |
| 💚 Loyal | 222 | Mükafatlandır |
| 🔵 Potensial | 182 | Aktivləşdir |
| ⚠️ Riskli | 141 | Kampaniya göndər |
| ❌ İtmiş | 55 | Win-back kampaniyası |

---

## ▶️ Necə İşlətmək

```bash
# 1. Klonla
git clone https://github.com/USERNAME/superstore_dashboard.git

# 2. Paketləri quraşdır
pip install pandas plotly openpyxl

# 3. ETL işlət
jupyter notebook notebooks/01_etl.ipynb

# 4. Analizi işlət
jupyter notebook notebooks/02_analiz.ipynb

# 5. İnteraktiv qrafiklərə bax
open dashboard/index.html
```

---

## 📬 Əlaqə

**Almaz Zamanova** — Data Analitika Mütəxəssisi  
📧 zamanovaalmaz04@gmail.com

---

*Bu layihə end-to-end data analitika bacarıqlarını nümayiş etdirir —  
ETL, SQL, Power BI dashboard, RFM seqmentasiyası və interaktiv vizuallaşdırma.*

