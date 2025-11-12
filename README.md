
# 🏦 Bank Customer Value Analysis & Insights Dashboard

 ### 👨‍💻 Author: **Pratik Kumar (MCA, MBA)**
**Role:** Data Analyst | Power BI | SQL | Python  
📧 **Email:** kumarpratik44@gmail.com  
🔗 [LinkedIn](https://www.linkedin.com/in/pratik-kumar-57388949/) • 

---

## 📘 Project Overview
This project analyzes a bank’s customer data to understand financial behavior, income vs spending patterns, and identify high-value customers.  
It combines **SQL for data extraction** and **Power BI for visualization**, creating actionable business insights.

---

## 🧠 Objectives
- Identify **top 5 states** by transaction value  
- Analyze **average income** and **spending relationship**  
- Segment customers by **age, income, and employment status**  
- Find customers with **Demat accounts** and product preferences  
- Compare **gender-based financial behavior**

---

## 🧮 Tools & Technologies
- **SQL (MySQL):** Data cleaning, aggregation, and insights  
- **Power BI:** Interactive dashboard creation  
- **Excel/CSV:** Data source and preprocessing  
- **DAX:** Calculated columns & measures  

---

## 💻 Key SQL Queries Used
```sql
SELECT State, COUNT(CustomerID) AS TotalCustomers FROM Customers GROUP BY State;

SELECT CustomerID, SUM(TransactionValueLast12m) AS Total_Transaction
FROM Transactions
GROUP BY CustomerID
ORDER BY Total_Transaction DESC
LIMIT 10;
```
*(Full SQL script available in `SQL_Queries_Summary.sql`)*

---

## 📊 Dashboard Highlights
- 250 total customers analyzed  
- ₹648M total transaction value  
- ₹1.39M average income  
- 121 customers having Demat accounts  
- Insights by **state, product type, and income group**

![Dashboard Snapshot](Dashboard_Snapshot.jpg)

---

## 📈 Key Insights
✅ High-income group contributes the majority of transaction value  
✅ Madhya Pradesh, Karnataka, and Bihar are top performing states  
✅ Males exhibit slightly higher financial activity levels  
✅ Retail and corporate banking are dominant product categories  

---

## 🚀 Learning Outcome
This project enhanced my skills in:
- Data wrangling and SQL logic building  
- DAX measures and Power BI visual design  
- Business-ready storytelling using data  

---

## 🗂 Project Files
| File | Description |
|------|--------------|
| `Bank_Customer_Insights_Dashboard.pbix` | Power BI Dashboard File |
| `SQL_Queries_Summary.sql` | All queries used for analysis |
| `Bank_Customer_Dataset.csv` | Raw dataset |
| `Dashboard_Snapshot.jpg` | Final dashboard image |
| `Data_Dictionary.xlsx` | Data column definitions |

---

## 🧩 Future Improvements
- Add predictive analytics (using Python)  
- Automate report refresh using Power BI Service  
