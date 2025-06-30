WITH stats AS (
  SELECT 
    AVG(range_km) AS avg_range,
    STDDEV(range_km) AS std_range,
    AVG(efficiency_wh_per_km) AS avg_eff,
    STDDEV(efficiency_wh_per_km) AS std_eff
  FROM `electric_vehicles_spec_2025.csv`
)
SELECT 
  brand, model, range_km, efficiency_wh_per_km,
  ROUND((range_km - stats.avg_range) / stats.std_range, 2) AS range_zscore,
  ROUND((efficiency_wh_per_km - stats.avg_eff) / stats.std_eff, 2) AS efficiency_zscore
FROM `electric_vehicles_spec_2025.csv`, stats
ORDER BY range_zscore DESC;
