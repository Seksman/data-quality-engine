-- Rule: Check for Null order_date values
-- Purpose: Ensure order_date is always populated for analytics

Select 
    COUNT(*) AS null_order_date_count
From orders
WHERE order_date IS NULL;