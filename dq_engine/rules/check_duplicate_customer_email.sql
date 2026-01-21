-- Rule: Check for null Duplicate_customer_email
-- Purpose: Ensure duplicate_customer_email is always populated for analytics

Select 
    customer_email,
    Count(*) as Duplicate_customer_email
From customers
GROUP BY customer_email
HAVING COUNT(*) > 1;