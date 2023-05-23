SELECT COUNT(*) AS invoices_by_contry, BillingCountry FROM Invoice
GROUP BY BillingCountry