SELECT a.Airport as "City", f.colYear as "Year", f.colMonth as "Month", "retard"
FROM Flights f, USAirports a
Where IATA = Origin
GROUP BY a.Airport, f.colYear, f.colMonth
ORDER BY a.Airport, f.colYear, f.colMonth