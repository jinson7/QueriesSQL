SELECT UniqueCarrier as "Company", sum(Distance) as "Distance"
FROM Flights
Group by UniqueCarrier
Order by 2 desc
Limit 10