SELECT segment, battery_type
FROM (
  SELECT segment, battery_type,
         RANK() OVER (PARTITION BY segment ORDER BY COUNT(*) DESC) AS rankings
  FROM `electric_vehicles_spec_2025.csv`
  GROUP BY segment, battery_type
) AS ranked
WHERE rankings = 1;
