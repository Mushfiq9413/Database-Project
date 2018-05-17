DESCRIBE family;
DESCRIBE community;
DESCRIBE member;


SELECT * FROM member;
SELECT * FROM family;
SELECT * FROM community;

SELECT name,bloodgroup FROM member;
SELECT name,bloodgroup,profession FROM member;

ALTER TABLE community MODIFY name varchar(33);

ALTER TABLE member RENAME COLUMN name to Mname;

