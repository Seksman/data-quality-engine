-- Rule: Check for null customer_name_values
-- Purpose: Ensure customer_name is always populated for analytics

Select 
    COUNT(*) AS null_customer_name_count
    COUNT(*) * 1.0/(Select COUNT(*) FROM customers) AS null_customer_name_perc
From customers
WHERE customer_name IS NULL;