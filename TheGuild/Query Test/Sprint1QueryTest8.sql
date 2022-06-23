SELECT m.first_name, m.last_name , r.rank_name, COUNT(mr.mission_num) AS "Missions Completed" FROM part2.member m
JOIN part2.rank r ON m.rank_id = r.rank_id
LEFT JOIN part2.mission_report mr ON m.member_id = mr.member_id
LEFT JOIN part2.mission mi ON mi.mission_num = mr.mission_num
GROUP BY r.rank_name, m.first_name, m.last_name, mr.mission_num;


