SELECT SUBSTR(created,0,LENGTH(created)-8) AS Year_Month, COUNT(*), 
        SUM(amount), AVG(amount), MIN(amount), MAX(amount)
FROM loan_transactions  
GROUP BY Year_Month
ORDER BY Year_Month DESC;