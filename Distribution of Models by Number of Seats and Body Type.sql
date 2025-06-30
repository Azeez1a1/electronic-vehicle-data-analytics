SELECT 
  car_body_type, seats, COUNT(*) AS model_count
FROM `electric_vehicles_spec_2025.csv`
GROUP BY car_body_type, seats
ORDER BY car_body_type, seats;
