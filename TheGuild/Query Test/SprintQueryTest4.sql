SELECT  member_name, count FROM part2.missions_per_member 
WHERE count >1
ORDER BY count DESC;