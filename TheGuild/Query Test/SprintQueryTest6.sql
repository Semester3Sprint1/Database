-- Query to check with specs we need to recruit
SELECT specialization, member_per_spec FROM part2.specs_per_member
Where member_per_spec <=2
Order BY member_per_spec ASC;