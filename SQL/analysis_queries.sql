-- =============================================
-- QUERY 1: Default Rate by Employment Type
-- =============================================


SELECT 
    c.employment_type,
    COUNT(ld.loan_id) AS total_defaults,
    COUNT(la.loan_id) AS total_loans,
    ROUND((COUNT(ld.loan_id)::decimal / COUNT(la.loan_id)) * 100, 2) AS default_rate_percent
FROM 
    loan_applications la
JOIN 
    customers c ON la.customer_id = c.customer_id
LEFT JOIN 
    loan_defaults ld ON la.loan_id = ld.loan_id
GROUP BY 
    c.employment_type
ORDER BY 
    default_rate_percent DESC;


-- =============================================
-- QUERY 2: Default Rate by Credit Score Band
-- =============================================


SELECT 
    CASE 
        WHEN c.credit_score BETWEEN 300 AND 579 THEN 'Very Poor'
        WHEN c.credit_score BETWEEN 580 AND 669 THEN 'Fair'
        WHEN c.credit_score BETWEEN 670 AND 739 THEN 'Good'
        WHEN c.credit_score BETWEEN 740 AND 799 THEN 'Very Good'
        WHEN c.credit_score BETWEEN 800 AND 900 THEN 'Excellent'
        ELSE 'Unknown'
    END AS credit_score_band,
    COUNT(ld.loan_id) AS total_defaults,
    COUNT(la.loan_id) AS total_loans,
    ROUND((COUNT(ld.loan_id)::decimal / COUNT(la.loan_id)) * 100, 2) AS default_rate_percent
FROM 
    loan_applications la
JOIN 
    customers c ON la.customer_id = c.customer_id
LEFT JOIN 
    loan_defaults ld ON la.loan_id = ld.loan_id
GROUP BY 
    credit_score_band
ORDER BY 
    default_rate_percent DESC;


-- =============================================
-- QUERY 3: Default Rate by Region
-- =============================================

SELECT 
    c.region,
    COUNT(ld.loan_id) AS total_defaults,
    COUNT(la.loan_id) AS total_loans,
    ROUND((COUNT(ld.loan_id)::decimal / COUNT(la.loan_id)) * 100, 2) AS default_rate_percent
FROM 
    loan_applications la
JOIN 
    customers c ON la.customer_id = c.customer_id
LEFT JOIN 
    loan_defaults ld ON la.loan_id = ld.loan_id
GROUP BY 
    c.region
ORDER BY 
    default_rate_percent DESC;


-- =============================================
-- QUERY 4: Default Rate by Loan Type
-- =============================================

SELECT 
    la.loan_type,
    COUNT(ld.loan_id) AS total_defaults,
    COUNT(la.loan_id) AS total_loans,
    ROUND((COUNT(ld.loan_id)::decimal / COUNT(la.loan_id)) * 100, 2) AS default_rate_percent
FROM 
    loan_applications la
LEFT JOIN 
    loan_defaults ld ON la.loan_id = ld.loan_id
GROUP BY 
    la.loan_type
ORDER BY 
    default_rate_percent DESC;

-- =============================================
-- QUERY 5: Missed Payment Rate by Region
-- =============================================

SELECT 
    c.region,
    COUNT(CASE WHEN lp.payment_status = 'Missed payment' THEN 1 END) AS total_missed_payments,
    COUNT(lp.payment_id) AS total_payments,
    ROUND(
        (COUNT(CASE WHEN lp.payment_status = 'Missed payment' THEN 1 END)::decimal / COUNT(lp.payment_id)) * 100, 
        2
    ) AS missed_payment_rate_percent
FROM 
    loan_payments lp
JOIN 
    loan_applications la ON lp.loan_id = la.loan_id
JOIN 
    customers c ON la.customer_id = c.customer_id
GROUP BY 
    c.region
ORDER BY 
    missed_payment_rate_percent DESC;

