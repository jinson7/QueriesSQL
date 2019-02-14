SELECT UniqueCarrier as "Company", avg(DepDelay) as "Average delay of destination"
FROM Flights
Group by UniqueCarrier
Having avg(DepDelay) > 10
Order by 2 asc