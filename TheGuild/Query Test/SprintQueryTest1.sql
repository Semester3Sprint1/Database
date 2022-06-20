-- Used the mission_income_with_race veiw to display only certain races

SELECT * FROM part2."mission_income_with_race"
WHERE race = 'Human' or race = 'Orc'
-- Total Mission Income for Members with Race of Human or Orc
-
