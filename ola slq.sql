create Database Ola;
use Ola;

#1 retrieve all successful bookings:
Create View Successful_Bookings as
Select * From bookings
where Booking_Status = 'Success'
#1 retrieve all successful bookings:
Select * from Successful_Bookings;

#2 Find the average ride distance for each vehicle type:
Create View ride_distance_for_each_vehicle as
Select Vehicle_Type, Avg(Ride_Distance)
as avg_distance FROM bookings
Group BY Vehicle_Type;

select * from ride_distance_for_each_vehicle;

#3 Get the total number of canceled ride by customers:
Create View Canceled_ride_by_customers as
select count(*) from bookings
Where Booking_Status = 'Canceled by Customer';

select * from Canceled_ride_by_customers;

#4 List the top 5 customers who booked the highest number of rides:
Create view Top_5_Customers as
select Customer_ID, count(Booking_ID) as total_rides
From bookings
Group by Customer_Id
order by total_rides DESC LIMIT 5;

select * from Top_5_Customers;

#5 Get the number of rides canceled by drivers due to personal and car-related issues:
Create view Rides_Canceled_by_Drivers_P_C_Issues as
select count(*) from bookings
where Canceled_Rides_by_Driver = 'Personal & Car related issue';

select * from Rides_Canceled_by_Drivers_P_C_Issues;

#6 Find the maximum and minimum driver ratings for Prime Sedan bookings:
Create view Max_Min_Driver_Rating as
select max(Driver_Ratings) as max_rating,
min(Driver_Ratings) as min_rating
from bookings where Vehicle_Type = 'Prime Sedan';

select * from Max_Min_Driver_Rating;

#7 Retrive all rides where payment was made using UPI:
Create view UPI_Payment as
Select * from bookings
where Payment_Method = 'UPI';

select * from UPI_Payment;

#8  find the average customer rating per vehicle type:
Create view AVG_Cust_Rating as
select Vehicle_type, avg(Customer_Rating) as avg_customer_rating
from bookings
Group By vehicle_type;

select * from AVG_Cust_Rating;

#9 calculate the total booking value of rides completed successfully:
create view total_successful_ride_value as
select sum(Booking_Value) as total_successful_ride_value
from bookings
where Booking_Status = 'Success';

select * from total_successful_ride_value;

#10 List all incomplete rides along with the reason:
create view Incomplete_Rides_Reason as
select Booking_ID, Incomplete_Rides_Reason
from bookings
where Incomplete_Rides = 'Yes';

Select * from Incomplete_Rides_Reason;

#1 retrieve all successful bookings:
Select * from Successful_Bookings;

#2 Find the average ride distance for each vehicle type:
select * from ride_distance_for_each_vehicle;

#3 Get the total number of canceled ride by customers:
select * from Canceled_ride_by_customers;

#4 List the top 5 customers who booked the highest number of rides:
select * from Top_5_Customers;

#5 Get the number of rides canceled by drivers due to personal and car-related issues:
select * from Rides_Canceled_by_Drivers_P_C_Issues;

#6 Find the maximum and minimum driver ratings for Prime Sedan bookings:
select * from Max_Min_Driver_Rating;

#7 Retrive all rides where payment was made using UPI:
select * from UPI_Payment;

#8  find the average customer rating per vehicle type:
select * from AVG_Cust_Rating;

#9 calculate the total booking value of rides completed successfully:
select * from total_successful_ride_value;

#10 List all incomplete rides along with the reason:
Select * from Incomplete_Rides_Reason;        



