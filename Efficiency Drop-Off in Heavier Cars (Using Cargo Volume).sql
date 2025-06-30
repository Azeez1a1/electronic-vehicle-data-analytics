SELECT 
  brand, model, cargo_volume_l, efficiency_wh_per_km,
  ROUND(efficiency_wh_per_km / cargo_volume_l, 4) AS inefficiency_ratio
FROM `electric_vehicles_spec_2025.csv`
WHERE cargo_volume_l > 0
ORDER BY inefficiency_ratio DESC
LIMIT 10;
