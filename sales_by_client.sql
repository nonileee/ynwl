create view sales_by_client as 
    SELECT 
        client_id,
        c.name,
        SUM(invoice_total) AS total_sales
    FROM clients c
     JOIN invoices  i USING(client_id)
    GROUP BY client_id,name