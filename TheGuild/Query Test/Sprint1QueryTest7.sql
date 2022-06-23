--REGEXP WHERE Search

SELECT * FROM part2.member
WHERE last_name ~ '[ghe]a'
-- checks for members that last name contains ghe followed by a

SELECT * from part2.member
WHERE last_name ~ '^Hell';
--last name starts with Hell

SELECT * FROM part2.member
WHERE first_name ~ 'l$';
-- First name ends in l