-- 문자 타입 함수
SELECT LOWER('ABCD') RESULT FROM DUAL;

-- SUBSTR(문자, 인덱스, 글자수)
SELECT SUBSTR('ABC', 1, 2) RESULT FROM DUAL;
-- REPLACE(문자, 이전문자, 새로운문자)
SELECT REPLACE('ABC','A', 'E') RESULT FROM DUAL;
-- CONCAT(문자1, 문자2) - 문자 연결
SELECT CONCAT('A','B') RESULT FROM DUAL;
-- 연결연산자 - '||'
SELECT '안녕' || '하세요' RESULT FROM DUAL;
-- LPAD(문자, 문자수, 기호) - 기호를 왼쪽부터 채움
SELECT LPAD('cloud', 10, '*') RESULT FROM DUAL;
-- RPAD(문자, 문자수, 기호) - 기호를 오른쪽부터 채움
SELECT RPAD('cloud', 10, '*') RESULT FROM DUAL;

-- 부서이름에서 처음부터 시작해서 2개의 문자 출력
SELECT SUBSTR(deptname, 1, 2) 부서명
FROM DEPT;

-- 도서 제목에 '야구'가 포함된 도서를 '농구'로 변경하여 검색
SELECT bookid, REPLACE(bookname,'야구', '농구') RESULT FROM BOOK;

-- 굿스포츠에서 출판한 도서의 제목과 제목의 문자수, 바이트 수를 검색
-- 한글 3Byte, 영어,특수기호 - 1Byte
SELECT bookname,
    LENGTH(bookname)문자수,
    LENGTHB(bookname) 바이트수
FROM book
WHERE publisher = '굿스포츠';