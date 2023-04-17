-- ���� Ÿ�� �Լ�
-- ������ ���̺� : dual
SELECT ABS(-10), ABS(10) FROM dual;

-- �ݿø� : ROUND(��, �ڸ���)
SELECT ROUND(3.875, 2) FROM DUAL;

-- sal�� 30�Ϸ� ������ �Ҽ� �ڸ����� ���� �ݿø��� �� ���
SELECT sal �޿�,
        sal/30 �ϱ�,
        ROUND(sal/30, 1) ���1,
        ROUND(sal/30, 0) ���2,
        ROUND(sal/30, -1) ���3
FROM employee;


-- sal�� 30�Ϸ� ������ �Ҽ� �ڸ����� ���� ����(����) �� ���
SELECT sal �޿�,
        sal/30 �ϱ�,
        TRUNC(sal/30, 1) ���1        
FROM employee;

SELECT * FROM orders;

--���� ��� �ֹ� �ݾ��� ��� ������ �ݿø��� ���� ���Ͻÿ�
SELECT custid, ROUND(AVG(saleprice), -2) ����ֹ��ݾ�
FROM orders
GROUP BY custid;

SELECT custid ����ȣ, COUNT(*) �ֹ���, SUM(saleprice) �Ѿ�
FROM orders
GROUP BY custid;


SELECT custid ����ȣ,  SUM(saleprice)/COUNT((*),-2) ��ձݾ�
FROM orders
GROUP BY custid;

select * from customer;



--��¥ �Լ�
--20�� ���� ��¥ ���
SELECT SYSDATE - 20 FROM DUAL;

-- 3���� ���� ��¥ ���
SELECT ADD_MONTHS(SYSDATE, 3) ���
FROM DUAL;

-- 3���� ���� ��¥ ���
SELECT ADD_MONTHS(SYSDATE, -3) ���
FROM DUAL;

-- 3���� ���� ��¥ ���
SELECT ADD_MONTHS('2023-4-1', -3) ���
FROM DUAL;
--��¥�� �ð�
SELECT SYSTIMESTAMP FROM DUAL;

--�ֹ���ȣ�� 6���� 10������ ������ �ֹ��Ͽ� 3������ ���Ѱ��� ���Ͻÿ�
-- 1. �ֹ���ȣ�� 6~10�� ���� �˻�
-- 2. �ֹ��Ͽ� 3���� ���ϱ�
SELECT orderid �ֹ���ȣ,
      ADD_MONTHS(orderdate, 3) ���ϱ���,
      ADD_MONTHS(orderdate, -3) ������
FROM orders
WHERE orderid >= 6 AND orderid <= 10;

-- �ֹ���ȣ�� 10�� ������ �ֹ��Ϸκ��� ���ñ����� �Ѱ������� ���Ͻÿ�
-- MONTHS_BETWEEN(���ĳ�¥, ������¥)
SELECT orderid �ֹ���ȣ, orderdate �ֹ���,
        TRUNC(MONTHS_BETWEEN(SYSDATE, orderdate), 0) �Ѱ�����        
FROM orders
WHERE orderid = 10;

-- ������ �ֹ��Ϸκ��� 10���� ������ Ȯ���Ѵ�. �� �ֹ��� Ȯ�����ڸ� ���Ͻÿ�.
SELECT orderid �ֹ���ȣ,
        orderdate �ֹ���,
        orderdate + 10 Ȯ����
FROM orders;

-- �ڵ� Ÿ�� ��ȯ
SELECT 1 + '2' FROM DUAL;

-- ���� Ÿ�� ��ȯ
-- ���ڸ� ���� �������� ��ȯ
SELECT TO_NUMBER('120') ��� FROM DUAL;

-- ��¥ ����
SELECT TO_DATE('2022-06-30', 'yy-mm-dd') FROM DUAL;
-- 
SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD') ��¥,
         TO_CHAR(SYSDATE, 'YYYY') ����,
          TO_CHAR(SYSDATE, 'MM') ��,
           TO_CHAR(SYSDATE, 'DD') ��
FROM DUAL;

--�ð� ���� ��ȯ
SELECT TO_CHAR(SYSDATE, 'HH:MI:SS PM') �ð�����,
       TO_CHAR(SYSDATE, 'YYYY/MM/DD HH:MI:SS PM') ��¥�ͽð� 
FROM DUAL;





-- �� �̸����� ���� ���� ���� ����� �ο����� ���Ͻÿ�
-- ��Ʈ, GROUP BY�� SUBSTR(), COUNT(*)
SELECT SUBSTR(name, 1, 1) ��, COUNT(*) �ο�
FROM customer
GROUP BY SUBSTR(name, 1, 1);
