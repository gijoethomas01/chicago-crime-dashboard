SELECT 
  primary_type,
  COUNT(*) AS num_crimes
FROM `bigquery-public-data.chicago_crime.crime`
WHERE EXTRACT(YEAR FROM date) = 2024
GROUP BY primary_type
ORDER BY num_crimes DESC;
