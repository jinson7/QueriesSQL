#1
SELECT count(*) as "Numbers of flights" FROM Flights;

#2
SELECT Origin as "Origin airport", avg(ArrDelay) as "Average delay of arrival", 
	avg(DepDelay) as "Average delay of exit"
FROM Flights
GROUP BY Origin;

#3
SELECT Origin as "Origin airport", colYear as "Year", colMonth as "Month", "retard"
FROM Flights
GROUP BY Origin, colYear, colMonth
ORDER BY Origin, colYear, colMonth;

#4
SELECT a.Airport as "City", f.colYear as "Year", f.colMonth as "Month", "retard"
FROM Flights f, USAirports a
Where IATA = Origin
GROUP BY a.Airport, f.colYear, f.colMonth
ORDER BY a.Airport, f.colYear, f.colMonth

#5
select UniqueCarrier as "Company", count(*) as "Nº flights canceled"
from Flights
where Cancelled = 1
group by UniqueCarrier
order by 2 desc

#
SELECT UniqueCarrier as "Company", sum(Distance) as "Distance"
FROM Flights
Group by UniqueCarrier
Order by 2 desc
Limit 10

#7
SELECT UniqueCarrier as "Company", avg(DepDelay) as "Average delay of destination"
FROM Flights
Group by UniqueCarrier
Having avg(DepDelay) > 10
Order by 2 asc