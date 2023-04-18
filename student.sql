-- 학과 테이블
CREATE TABLE class(
-- 칼럼이름 자료형
cname VARCHAR2(30), --학과명(기본키)
ctel VARCHAR2(20), --학과 전화번호
location VARCHAR2(20), --과사무실
PRIMARY KEY(cname)
);

-- 교수 테이블
CREATE TABLE professor(
pnumber NUMBER(3),
pname VARCHAR2(20),
major VARCHAR2(30),
PRIMARY KEY(pnumber)
);

-- 학생 테이블
CREATE TABLE student(
snumber NUMBER(10),
sname VARCHAR2(20),
age NUMBER(3),
gender VARCHAR2(4),
address VARCHAR2(30),
pname VARCHAR2(30),
pnumber VARCHAR2(3),
PRIMARY KEY(cnumber),
-- 외래키 제약조건(학과)
CONSTRAINT FK_dept_std  FOREIGN KEY(dname)
REFERENCES department(dname),
-- 외래키 제약조건(교수)
CONSTRAINT FK_prof_std FOREIGN KEY(pnumber)
REFERENCES professor(pnumber)
);

-- 학과 자료 삽입
INSERT INTO class VALUES ('소프트웨어학과', '02-1234-1234', 'B동 3층');
INSERT INTO class VALUES ('화학공학과', '02-1234-4567', 'B동 4층');
INSERT INTO class VALUES ('전기전자공학과', '02-1234-5678', 'B동 5층');

SELECT * FROM tbl_class;

-- 교수 자료 삽입
INSERT INTO professor(pnumber, pname, major) VALUES (301, '오용철', '데이터베이스');
INSERT INTO professor(pnumber, pname, major) VALUES (402, '송미영', '화학 개론');
INSERT INTO professor(pnumber, pname, major) VALUES (501, '박은종', '전기공학 개론');
INSERT INTO professor(pnumber, pname, major) VALUES (302, '남우창', '데이터베이스');
INSERT INTO professor(pnumber, pname, major) VALUES (601, '김운아', '전기공학 개론');

-- 학생 자료 삽입
INSERT INTO student VALUES (20211234, '이강', 22, '여','서울시 종로구', '소프트웨어학과', 301);
INSERT INTO student VALUES (20211235, '박대양', 25, '남','서울시 성북구', '전기전자공학과', 501);
INSERT INTO student VALUES (20211236, '한비야', 33, '여','수원시 장안구', '전기전자공학과', 501);
INSERT INTO student(snumber, sname, age, cname, pnumber) VALUES (20211237, '김산', 33, '화학공학과', 402);
INSERT INTO student(snumber, sname, age, cname, pnumber) VALUES (20211238, '김산', 15, '소프트웨어학과', 302);

-- 1. 주소가 '경기도'인 학생을 검색하시오

-- 2. 주소가 '경기도'이고 남자인 학생을 검색하시오

-- 3. 나이가 많은 순으로 정렬하시오

-- 4. '박대양'의 나이를 30세로 변경(수정)하시오