SELECT COUNT(*) AS line_item_per_invoice, InvoiceId FROM InvoiceLine
GROUP BY InvoiceId