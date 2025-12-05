create database PhonePe_Analysis;
use PhonePe_Analysis;
SELECT 
    *
FROM
    PhonePe_Data;
select 
distinct(ï»¿Transaction_ID) from PhonePe_Data;
select count(*) from PhonePe_Data;
describe PhonePe_Data;
alter table PhonePe_Data change column ï»¿Transaction_ID  Transaction_ID text;
alter table PhonePe_Data modify column Date date;
update PhonePe_Data set Date = str_to_date(Date,'%d-%m-%Y');

-- Home
-- KPI'S
-- Total_Transaction_Amt
SELECT 
    CONCAT(ROUND(SUM(Amount) / 1000000, 2), 'M') AS Total_Transaction_Amt
FROM
    PhonePe_Data;

-- Total_Transactions
SELECT 
    CONCAT(ROUND(COUNT(Transaction_ID) / 1000, 2),
            'K') AS Total_Transactions
FROM
    PhonePe_Data;

-- Total_Transaction_Amt_Failed
SELECT DISTINCT
    Payment_Status
FROM
    PhonePe_Data;
SELECT 
    CONCAT(ROUND(SUM(Amount) / 1000000, 3), 'M') AS Total_Transaction_Amt_Failed
FROM
    PhonePe_Data
WHERE
    Payment_Status NOT IN ('Successful');
    
SELECT 
    Payment_Status,
    CONCAT(ROUND(SUM(Amount) / 1000000, 3), 'M') AS Total_Transaction_Amt_Failed
FROM
    PhonePe_Data
WHERE
    Payment_Status NOT IN ('Successful')
GROUP BY Payment_Status;

-- Total Transactions_Failed
SELECT 
    Payment_Status,
    CONCAT(ROUND(COUNT(Transaction_ID) / 1000, 3),
            'K') AS Total_Transactions
FROM
    PhonePe_Data
WHERE
    Payment_Status NOT IN ('Successful');
    
SELECT 
    Payment_Status,
    CONCAT(ROUND(COUNT(Transaction_ID) / 1000, 3),
            'K') AS Total_Transactions
FROM
    PhonePe_Data
WHERE
    Payment_Status NOT IN ('Successful')
GROUP BY Payment_Status;


-- Failed_transaction By reason
SELECT 
    Reason,
    CONCAT(ROUND(COUNT(Transaction_ID) / 1000, 3),
            'K') AS Total_Transactions
FROM
    PhonePe_Data
WHERE
    Payment_Status NOT IN ('Successful')
GROUP BY Reason;

-- Failed Transactions by services
SELECT 
    Service,
    CONCAT(ROUND(COUNT(Transaction_ID) / 1000, 3),
            'K') AS Total_Transactions
FROM
    PhonePe_Data
WHERE
    Payment_Status NOT IN ('Successful')
GROUP BY Service;


-- Total Transaction by service Type
SELECT 
    Service_Type,
    CONCAT(ROUND(COUNT(Transaction_ID) / 1000, 3),
            'K') AS Total_Transactions
FROM
    PhonePe_Data
GROUP BY Service_Type
ORDER BY Total_Transactions DESC;

-- Total Transaction By Month
SELECT 
    MONTH(Date) AS Month,
    CONCAT(ROUND(COUNT(Transaction_ID) / 1000, 3),
            'K') AS Total_Transactions
FROM
    PhonePe_Data
GROUP BY MONTH(Date)
ORDER BY MONTH(date) ASC;


-- MONEY TRANSFER
-- KPI'S
-- Total_Transaction_Amt
SELECT 
    CONCAT(ROUND(SUM(Amount) / 1000000, 2), 'M') AS Total_Transaction_Amt
FROM
    PhonePe_Data
WHERE
    Service = 'Money_Transfer';

-- Total_Transactions
SELECT 
    CONCAT(ROUND(COUNT(Transaction_ID) / 1000, 2),
            'K') AS Total_Transactions
FROM
    PhonePe_Data
WHERE
    Service = 'Money_Transfer';

-- Total_Transaction_Amt_Failed
SELECT DISTINCT
    Payment_Status
FROM
    PhonePe_Data;
SELECT 
    CONCAT(ROUND(SUM(Amount) / 1000000, 3), 'M') AS Total_Transaction_Amt_Failed
FROM
    PhonePe_Data
WHERE
    Payment_Status IN ('Failed')
        AND Service = 'Money_Transfer';
    


-- Total Transactions_Failed
SELECT 
    Payment_Status,
    CONCAT(ROUND(COUNT(Transaction_ID) / 1000, 3),
            'K') AS Total_Transactions_Failed
FROM
    PhonePe_Data
WHERE
    Payment_Status IN ('Failed')
        AND Service = 'Money_Transfer';

-- TotalTransactions By Reason
SELECT 
    Reason,
    CONCAT(ROUND(COUNT(Transaction_ID) / 1000, 3),
            'K') AS Total_Transactions_Failed
FROM
    PhonePe_Data
WHERE
    Payment_Status NOT IN ('Successful')
        AND Service = 'Money_Transfer'
GROUP BY Reason;


-- Total_Transactions By Payment_Status
SELECT 
    Payment_Status,
    CONCAT(ROUND(COUNT(Transaction_ID) / 1000, 3),
            'K') AS Total_Transactions_Failed
FROM
    PhonePe_Data
WHERE
    Service = 'Money_Transfer'
GROUP BY Payment_Status;

-- Total_Transaction By Transfer_Type
SELECT 
    Service_Type AS Transfer_Type,
    CONCAT(ROUND(COUNT(Transaction_ID) / 1000, 3),
            'K') AS Total_Transactions
FROM
    PhonePe_Data
WHERE
    Service = 'Money_Transfer'
GROUP BY Service_Type;


-- Total_Transactions BY Month
SELECT 
    MONTH(Date) AS Month,
    CONCAT(ROUND(COUNT(Transaction_ID) / 1000, 3),
            'K') AS Total_Transactions
FROM
    PhonePe_Data
WHERE
    Service = 'Money_Transfer'
GROUP BY Month
ORDER BY Month ASC;

-- Recharge_Bills
-- KPI'S
-- Total_Transaction_Amt
SELECT 
    CONCAT(ROUND(SUM(Amount) / 1000000, 2), 'M') AS Total_Transaction_Amt
FROM
    PhonePe_Data
WHERE
    Service = 'Recharge_Bills';

-- Total_Transactions
SELECT 
    CONCAT(ROUND(COUNT(Transaction_ID) / 1000, 2),
            'K') AS Total_Transactions
FROM
    PhonePe_Data
WHERE
    Service = 'Recharge_Bills';

-- Total_Transaction_Amt_Failed
SELECT DISTINCT
    Payment_Status
FROM
    PhonePe_Data;
SELECT 
    CONCAT(ROUND(SUM(Amount) / 1000000, 3), 'M') AS Total_Transaction_Amt_Failed
FROM
    PhonePe_Data
WHERE
    Payment_Status IN ('Failed')
        AND Service = 'Recharge_Bills';
    


-- Total Transactions_Failed
SELECT 
    Payment_Status,
    CONCAT(ROUND(COUNT(Transaction_ID) / 1000, 3),
            'K') AS Total_Transactions_Failed
FROM
    PhonePe_Data
WHERE
    Payment_Status IN ('Failed')
        AND Service = 'Recharge_Bills';

-- Total Transactions By Reason
SELECT 
    Reason,
    ROUND(COUNT(Transaction_ID), 3) AS Total_Transactions_Failed
FROM
    PhonePe_Data
WHERE
    Payment_Status NOT IN ('Successful')
        AND Service = 'Recharge_Bills'
GROUP BY Reason;


-- Total_Transactions By Payment_Status
SELECT 
    Payment_Status,
    CONCAT(ROUND(COUNT(Transaction_ID) / 1000, 3),
            'K') AS Total_Transactions
FROM
    PhonePe_Data
WHERE
    Service = 'Recharge_Bills'
GROUP BY Payment_Status;

-- Total_Transaction By Recharge_Type
SELECT 
    Service_Type AS Recharge_Type,
    CONCAT(ROUND(COUNT(Transaction_ID) / 1000, 3),
            'K') AS Total_Transactions
FROM
    PhonePe_Data
WHERE
    Service = 'Recharge_Bills'
GROUP BY Service_Type;


-- Total_Transactions BY Month
SELECT 
    MONTH(Date) AS Month,
    CONCAT(ROUND(COUNT(Transaction_ID) / 1000, 3),
            'K') AS Total_Transactions
FROM
    PhonePe_Data
WHERE
    Service = 'Recharge_Bills'
GROUP BY Month
ORDER BY Month ASC;



-- Loans
-- KPI'S
-- Total_Transaction_Amt
SELECT 
    CONCAT(ROUND(SUM(Amount) / 1000000, 2), 'M') AS Total_Transaction_Amt
FROM
    PhonePe_Data
WHERE
    Service = 'Loans';

-- Total_Transactions
SELECT 
    CONCAT(ROUND(COUNT(Transaction_ID) / 1000, 2),
            'K') AS Total_Transactions
FROM
    PhonePe_Data
WHERE
    Service = 'Loans';


-- Total Transactions Amt Failed
SELECT 
    CONCAT(ROUND(SUM(Amount) / 1000000, 2), 'M') AS Total_Transactions_Failed
FROM
    PhonePe_Data
WHERE
    Payment_Status NOT IN ('Successful')
        AND Service = 'Loans';

-- Total Transactions By Reason
SELECT 
    Reason,
    ROUND(COUNT(Transaction_ID), 3) AS Total_Transactions_Failed
FROM
    PhonePe_Data
WHERE
    Payment_Status NOT IN ('Successful')
        AND Service = 'Loans'
GROUP BY Reason;


-- Total_Transactions By Payment_Status
SELECT 
    Payment_Status, COUNT(Transaction_ID) AS Total_Transactions
    CASE When COUNT(Transaction_ID) where Payment_Status ="Successful" 
    when count(Transaction_ID) where Payment_Status in(Wrong PIN,Insufficient amount,Server error) end 
FROM
    PhonePe_Data
WHERE
    Service = 'Loans'
GROUP BY Payment_Status;

SELECT
    CASE 
        WHEN Payment_Status IN ('Wrong PIN', 'Insufficient amount', 'Server error') 
            THEN 'Failed'
        ELSE 'Successful'
    END AS Status_Category,
    COUNT(Transaction_ID) AS Total_Transactions
FROM PhonePe_Data
WHERE Service = 'Loans'
GROUP BY 
    CASE 
        WHEN Payment_Status IN ('Wrong PIN', 'Insufficient amount', 'Server error') 
            THEN 'Failed'
        ELSE 'Successful'
    END;

        
   

-- Total_Transaction By Loan_Type
SELECT 
    Service_Type AS Loan_Type,
    CONCAT(ROUND(COUNT(Transaction_ID) / 1000, 3),
            'K') AS Total_Transactions
FROM
    PhonePe_Data
WHERE
    Service = 'Loans'
GROUP BY Service_Type;


-- Total_Transactions BY Month
SELECT 
    MONTH(Date) AS Month,
    CONCAT(ROUND(COUNT(Transaction_ID) / 1000, 3),
            'K') AS Total_Transactions
FROM
    PhonePe_Data
WHERE
    Service = 'Loans'
GROUP BY Month
ORDER BY Month ASC;



-- Insurance
-- KPI'S
-- Total_Transaction_Amt
SELECT 
    CONCAT(ROUND(SUM(Amount) / 1000000, 2), 'M') AS Total_Transaction_Amt
FROM
    PhonePe_Data
WHERE
    Service = 'Insurance';

-- Total_Transactions
SELECT 
    CONCAT(ROUND(COUNT(Transaction_ID) / 1000, 2),
            'K') AS Total_Transactions
FROM
    PhonePe_Data
WHERE
    Service = 'Insurance';

-- Total_Transaction_Amt_Failed
SELECT DISTINCT
    Payment_Status
FROM
    PhonePe_Data;
SELECT 
    CONCAT(ROUND(SUM(Amount) / 1000000, 3), 'M') AS Total_Transaction_Amt_Failed
FROM
    PhonePe_Data
WHERE
    Payment_Status IN ('Failed')
        AND Service = 'Insurance';
    


-- Total Transactions_Failed
SELECT 
    Payment_Status,
    CONCAT(ROUND(COUNT(Transaction_ID) / 1000, 3),
            'K') AS Total_Transactions_Failed
FROM
    PhonePe_Data
WHERE
    Payment_Status IN ('Failed')
        AND Service = 'Insurance';

-- Total Transactions By Reason
SELECT 
    Reason,
    ROUND(COUNT(Transaction_ID), 3) AS Total_Transactions_Failed
FROM
    PhonePe_Data
WHERE
    Payment_Status NOT IN ('Successful')
        AND Service = 'Insurance'
GROUP BY Reason;


-- Total_Transactions By Payment_Status
SELECT 
    Payment_Status,
    CONCAT(ROUND(COUNT(Transaction_ID) / 1000, 3),
            'K') AS Total_Transactions
FROM
    PhonePe_Data
WHERE
    Service = 'Insurance'
GROUP BY Payment_Status;

-- Total_Transaction By Recharge_Type
SELECT 
    Service_Type AS Insurance_Type,
    CONCAT(ROUND(COUNT(Transaction_ID) / 1000, 3),
            'K') AS Total_Transactions
FROM
    PhonePe_Data
WHERE
    Service = 'Insurance'
GROUP BY Service_Type;


-- Total_Transactions BY Month
SELECT 
    MONTH(Date) AS Month,
    CONCAT(ROUND(COUNT(Transaction_ID) / 1000, 3),
            'K') AS Total_Transactions
FROM
    PhonePe_Data
WHERE
    Service = 'Insurance'
GROUP BY Month
ORDER BY Month ASC;