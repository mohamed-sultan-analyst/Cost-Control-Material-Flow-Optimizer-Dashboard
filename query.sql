WITH 

Unique_Zones AS (
    SELECT field17 AS Villa, field16 AS Zone
    FROM "Inventory"
    WHERE field17 IS NOT NULL
    GROUP BY field17 
),

Latest_Rates_2026 AS (
    SELECT field5 AS Mat, field9 AS Rate
    FROM "Inventory"
    WHERE field8 = '2026' AND field9 > 0
    GROUP BY field5 
    HAVING ROWID = MAX(ROWID) 
)

SELECT 
    r.approve_date AS Request_Date,
    r.MO_Num AS MO_Number,
    r.area AS Villa_Name,
    uz.Zone AS Zone,
    r.descreption AS Material,
    r.qty AS Requested_Qty,
    
   
    COALESCE(ur.Rate, 0) AS Unit_Rate,
    ROUND(r.qty * COALESCE(ur.Rate, 0), 2) AS Estimated_Value,

    
    CASE 
        WHEN r.Line_Status LIKE '%Cancel%' THEN 'Canceled'
        WHEN r.Line_Status LIKE '%Approve%' THEN 'Approved'
        ELSE r.Line_Status 
    END AS Status,


    ROUND(JULIANDAY('now') - JULIANDAY(
        '20' || SUBSTR(r.approve_date, 8, 2) || '-' || 
        CASE SUBSTR(r.approve_date, 4, 3) 
            WHEN 'Jan' THEN '01' WHEN 'Feb' THEN '02' WHEN 'Mar' THEN '03'
            WHEN 'Apr' THEN '04' WHEN 'May' THEN '05' WHEN 'Jun' THEN '06'
            WHEN 'Jul' THEN '07' WHEN 'Aug' THEN '08' WHEN 'Sep' THEN '09'
            WHEN 'Oct' THEN '10' WHEN 'Nov' THEN '11' WHEN 'Dec' THEN '12'
        END || '-' || SUBSTR(r.approve_date, 1, 2)
    ), 1) AS Delay_Days

FROM View_request AS r
LEFT JOIN Unique_Zones AS uz ON r.area = uz.Villa 
LEFT JOIN Latest_Rates_2026 AS ur ON r.descreption = ur.Mat 

WHERE r.approve_date LIKE '%-26' 
  AND r.MO_Num LIKE 'PL1-%'
   AND r.Line_Status NOT LIKE '%Closed%'
  AND r.Line_Status NOT LIKE '%Complete%'

ORDER BY Delay_Days DESC;