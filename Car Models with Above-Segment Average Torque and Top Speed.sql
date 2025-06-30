SELECT brand, model, segment, torque_nm, top_speed_kmh
FROM `electric_vehicles_spec_2025.csv` e1
WHERE torque_nm > (
  SELECT AVG(torque_nm) FROM `electric_vehicles_spec_2025.csv` WHERE segment = e1.segment
)
AND top_speed_kmh > (
  SELECT AVG(top_speed_kmh) FROM `electric_vehicles_spec_2025.csv` WHERE segment = e1.segment
);
