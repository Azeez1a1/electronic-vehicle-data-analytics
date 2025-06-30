SELECT 
  car_body_type,
  ROUND(AVG(efficiency_wh_per_km), 1) AS avg_efficiency,
  CASE 
    WHEN AVG(efficiency_wh_per_km) < 150 THEN 'Highly Efficient'
    WHEN AVG(efficiency_wh_per_km) BETWEEN 150 AND 180 THEN 'Moderate'
    ELSE 'Inefficient'
  END AS efficiency_label
FROM `electric_vehicles_spec_2025.csv`
GROUP BY car_body_type
ORDER BY avg_efficiency;
