-- ���� Ÿ�� �Լ�
SELECT LOWER('ABCD') RESULT FROM DUAL;

-- SUBSTR(����, �ε���, ���ڼ�)
SELECT SUBSTR('ABC', 1, 2) RESULT FROM DUAL;
-- REPLACE(����, ��������, ���ο��)
SELECT REPLACE('ABC','A', 'E') RESULT FROM DUAL;
-- CONCAT(����1, ����2) - ���� ����
SELECT CONCAT('A','B') RESULT FROM DUAL;
-- ���Ῥ���� - '||'
SELECT '�ȳ�' || '�ϼ���' RESULT FROM DUAL;
-- LPAD(����, ���ڼ�, ��ȣ) - ��ȣ�� ���ʺ��� ä��
SELECT LPAD('cloud', 10, '*') RESULT FROM DUAL;
-- RPAD(����, ���ڼ�, ��ȣ) - ��ȣ�� �����ʺ��� ä��
SELECT RPAD('cloud', 10, '*') RESULT FROM DUAL;

-- �μ��̸����� ó������ �����ؼ� 2���� ���� ���
SELECT SUBSTR(deptname, 1, 2) �μ���
FROM DEPT;

-- ���� ���� '�߱�'�� ���Ե� ������ '��'�� �����Ͽ� �˻�
SELECT bookid, REPLACE(bookname,'�߱�', '��') RESULT FROM BOOK;

-- �½��������� ������ ������ ����� ������ ���ڼ�, ����Ʈ ���� �˻�
-- �ѱ� 3Byte, ����,Ư����ȣ - 1Byte
SELECT bookname,
    LENGTH(bookname)���ڼ�,
    LENGTHB(bookname) ����Ʈ��
FROM book
WHERE publisher = '�½�����';