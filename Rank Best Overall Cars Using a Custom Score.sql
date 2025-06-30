SELECT 
  brand, model,
  ROUND( (range_km / battery_capacity_kWh) * 0.4 + 
         (fast_charging_power_kw_dc / 250) * 0.3 +
         (towing_capacity_kg / 2000) * 0.3, 2) AS performance_score
FROM `electric_vehicles_spec_2025.csv`
WHERE battery_capacity_kWh > 0
ORDER BY performance_score DESC
LIMIT 10;
