DROP TABLE member;
DROP TABLE family;
DROP TABLE community;

CREATE TABLE community(
NAME varchar(30),
AREA varchar(30),
CITY varchar(30),
PRIMARY KEY (NAME)
);

CREATE TABLE family(
HOUSE_ID number(6),
COMMMUNITY_NAME varchar(30),
ADDRESS varchar(20),
NO_OF_MEMBER number(2),
PRIMARY KEY (HOUSE_ID),
FOREIGN KEY (COMMMUNITY_NAME) REFERENCES community (name)
);

CREATE TABLE member(
H_ID number(6),
ID Number(9),
NAME varchar(30),
ADDRESS varchar(20),
PROFESSION varchar(30),
BLOOD_GROUP varchar(4),
PRIMARY KEY (ID),
FOREIGN KEY (H_ID) REFERENCES family (HOUSE_ID)
);


INSERT INTO community VALUES('East Noyatola','Moghbazar','Dhaka');


INSERT INTO family VALUES(121701,'East Noyatola','28 F/1',5);
INSERT INTO family VALUES(121702,'East Noyatola','28 E/1',4);
INSERT INTO family VALUES(121703,'East Noyatola','28/A',4);

INSERT INTO member VALUES(121701,121700001,'Md Monjurul Islam','28 F/1','Service','B+');
INSERT INTO member VALUES(121701,121700002,'Sufia Khatun','28 F/1','Housewife','B+');
INSERT INTO member VALUES(121701,121700003,'Md Mushfiqul Islam','28 F/1','Engineer','B+');
INSERT INTO member VALUES(121701,121700004,'Tasneem Islam','28 F/1','Doctor','B+');
INSERT INTO member VALUES(121701,121700005,'Md Shariful Islam','28 F/1','Student','B+');


INSERT INTO member VALUES(121702,121700006,'Md Araf Hossain','28 E/1','Service','AB+');
INSERT INTO member VALUES(121702,121700007,'Bilkis Begum','28 E/1','Doctor','A+');
INSERT INTO member VALUES(121702,121700008,'Md Billal Hossain','28 E/1','Student','O+');
INSERT INTO member VALUES(121702,121700009,'Tasnia Hossain','28 E/1','Student','A+');

INSERT INTO member VALUES(121703,121700010,'Hasnain Rahman','28/A','Service','B+');
INSERT INTO member VALUES(121703,121700011,'Naila Begum','28/A','Lawyer','A+');
INSERT INTO member VALUES(121703,121700012,'Mostafiz Rahman','28/A','Student','B+');
INSERT INTO member VALUES(121703,121700013,'Shemonti Rahman','28/A','Student','A-');

COMMIT;
