SELECT Origin as "Origin airport", colYear as "Year", colMonth as "Month", "retard"
FROM Flights
GROUP BY Origin, colYear, colMonth
ORDER BY Origin, colYear, colMonth;