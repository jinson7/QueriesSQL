SELECT Origin as "Origin airport", avg(ArrDelay) as "Average delay of arrival", 
	avg(DepDelay) as "Average delay of exit"
FROM Flights
GROUP BY Origin;