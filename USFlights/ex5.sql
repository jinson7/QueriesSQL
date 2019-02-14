select UniqueCarrier as "Company", count(*) as "Nº flights canceled"
from Flights
where Cancelled = 1
group by UniqueCarrier
order by 2 desc