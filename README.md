
# PhonePe-dashboard
### 1.	Project Title 
PhonePe Transaction Analytics: Service Performance & Failure Insights.

### 2.	Short Description / Purpose 
TThe PhonePe Analysis Dashboard helps the company make data-driven decisions by analyzing key services such as Money Transfer, Recharge/Bills, Loans, and Insurance. It highlights service performance, transaction volume, and failure patterns, enabling the business to identify which areas need more focus.
The dashboard is designed with four separate pages, each dedicated to a specific service (Money Transfer, Recharge/Bills, Loans, and Insurance), allowing clear and detailed exploration of service-wise performance.
The dataset contains ~300,000 transaction records, providing a strong foundation for deep analytical insights and strategic decision-making.
### 3.	Tech Stack
• 🗄️ SQL (Structured Query Language) – Used for extracting, cleaning, filtering, and aggregating transaction data to generate detailed service-wise and month-wise insights.<br>
• 📊 Power BI Desktop – Main data visualization tool used to create interactive dashboards and reports.<br>
• 📂 Power Query – Used within Power BI for data preprocessing, cleaning, and transformation before data modeling.<br>
• 🧠 DAX (Data Analysis Expressions) – Used for building calculated measures, KPIs, and dynamic visual logic inside the dashboard.<br>
• 📝 Data Modeling – Establishes relationships between transaction data, services, payment status, and date fields for accurate reporting.<br>
• 📘 MS Excel – Used for initial data checks, formatting, and basic exploration before importing into SQL and Power BI.<br>
• 📁 File Format – Project delivered as .pbix (Power BI file) and .png (dashboard preview images).<br>


### 4.	Data Source
The dataset contains ~300,000 transaction records covering multiple PhonePe services such as Money Transfer, Recharge/Bills, Loans, and Insurance.
It includes detailed fields such as:
Transaction_ID,DateService,Service_Type,Payment_Status,Reason (for failures),Amount,Failed_Amount<br>
The data is structured to capture both successful and failed transactions, enabling in-depth analysis of service performance, customer behavior, monthly trends, and failure patterns.

### 5.	Features / Highlights

•	Business Problem<br>
PhonePe wants to understand why transactions are failing across different services and identify which services experience failures most frequently. Since the platform offers multiple services such as Money Transfer, Recharge/Bills, Loans, and Insurance, it becomes essential to analyze where failures occur and what factors contribute to them.

Additionally, the company aims to track the total number of transactions across all services to evaluate overall platform usage, service performance, and customer behavior.

Key questions such as:
Which services have the highest number of failed transactions?<br>
What are the most common reasons behind transaction failures?<br>
How many total transactions are performed across all services?<br>
Which service types (e.g., UPI Transfer, Mobile Recharge, EMI Payment, Insurance Premium) show the highest activity?<br>
What is the monthly trend of successful vs. failed transactions?<br>


•	Goal of the Dashboard<br>
Helps PhonePe understand transaction patterns across all services.<br>

Supports decision-making related to improving platform reliability, reducing failures, and enhancing user experience.
Identifies trends in service performance, customer usage behavior, and failure frequency across different categories such as Money Transfer, Recharge/Bills, Loans, and Insurance.
Enables users to quickly explore service-wise, month-wise, and reason-wise transaction insights.
Provides clarity on both successful and failed transactions to guide operational and strategic improvements.<br>

- Walkthrough of Key Visuals<br>
-	Key KPIs <br>
Total Transaction Amt: 3,473.3M<br>
Total Transaction Amt Failed:141.3M<br>
Total Transactions: 300K<br>
Total Transactions Failed: 12K<br>
-	Services Filter Panel<br>
A dedicated filter panel that allows users to select specific services such as Money Transfer, Recharge/Bills, Loans, and Insurance. When a filter is applied, it automatically updates the entire dashboard, making it easier to perform focused analysis and enabling faster, data-driven decision-making.<br>

-	Transactions Failed by Reason (Donut Chart)<br>
In this donut chart, we can clearly see that service errors occur more frequently compared to other categories. The company should focus on addressing service errors, which account for 34% of the total issues. Insufficient balance errors are also notable and require attention.<br>

-	Transactions Failed by Services (Donut Chart)<br>
This is an important insight for the company, highlighting which services experience the most failed transactions. Money transfers have the highest failure rate at 49%, while recharge and bill payments have the lowest failure rate.<br>

-	 Transactions by Service Type (Clustered Bar Chart)<br>
In this chart, we can visualize transactions via UPI ID, Self Account, Mobile Number, and QR Code. The company should focus on optimizing these transaction methods to minimize failures and improve overall success rates.<br>

-	 Transactions by Month (Line Bar Chart)<br>
In this chart, May and October show the highest number of transactions. The company should focus on these months to ensure smooth operations. Additional details are provided in the tooltip, which highlights the most critical information for decision-making.<br>

•	Business Impact & Insights<br>
Service Performance Optimization:
Helps PhonePe identify which services (Money Transfer, Recharge/Bills, Loans, Insurance) face the most failures, enabling targeted improvements to enhance customer satisfaction.<br>
Reliability Enhancement:
By understanding the root causes of failures—such as insufficient balance, wrong PIN, or system errors—PhonePe can improve platform stability and reduce transaction drop rates.<br>
Reliability Enhancement:
By understanding the root causes of failures—such as insufficient balance, wrong PIN, or system errors—PhonePe can improve platform stability and reduce transaction drop rates.<br>
Reliability Enhancement:
By understanding the root causes of failures—such as insufficient balance, wrong PIN, or system errors—PhonePe can improve platform stability and reduce transaction drop rates.<br>

### 6.	Screenshots / Demos
 ![Dashboard Preview](https://github.com/Danishsheik329/PhonePe_Analysis/blob/main/Screenshot%202025-12-05%20191300.png)

# PhonePe-Analysis
