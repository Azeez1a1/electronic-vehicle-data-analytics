SELECT a.brand AS base_brand, a.model AS base_model,
       b.brand AS similar_brand, b.model AS similar_model
FROM `electric_vehicles_spec_2025.csv` a
JOIN `electric_vehicles_spec_2025.csv` b ON a.model <> b.model
WHERE ABS(a.range_km - b.range_km) / a.range_km <= 0.1
  AND ABS(a.top_speed_kmh - b.top_speed_kmh) / a.top_speed_kmh <= 0.1
  AND ABS(a.efficiency_wh_per_km - b.efficiency_wh_per_km) / a.efficiency_wh_per_km <= 0.1
LIMIT 20;
