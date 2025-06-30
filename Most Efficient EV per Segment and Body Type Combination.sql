WITH ranked AS (
  SELECT *,
    ROW_NUMBER() OVER (PARTITION BY segment, car_body_type ORDER BY efficiency_wh_per_km ASC) AS rk
  FROM `electric_vehicles_spec_2025.csv`
)
SELECT brand, model, segment, car_body_type, efficiency_wh_per_km
FROM ranked
WHERE rk = 1;
