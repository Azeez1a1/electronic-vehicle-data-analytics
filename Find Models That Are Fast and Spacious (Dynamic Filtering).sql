SELECT brand, model, acceleration_0_100_s, cargo_volume_l
FROM `electric_vehicles_spec_2025.csv`
WHERE acceleration_0_100_s < 5
  AND cargo_volume_l > (
    SELECT AVG(cargo_volume_l) FROM `electric_vehicles_spec_2025.csv`
  )
ORDER BY acceleration_0_100_s ASC, cargo_volume_l DESC;
