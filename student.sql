-- �а� ���̺�
CREATE TABLE class(
-- Į���̸� �ڷ���
cname VARCHAR2(30), --�а���(�⺻Ű)
ctel VARCHAR2(20), --�а� ��ȭ��ȣ
location VARCHAR2(20), --���繫��
PRIMARY KEY(cname)
);

-- ���� ���̺�
CREATE TABLE professor(
pnumber NUMBER(3),
pname VARCHAR2(20),
major VARCHAR2(30),
PRIMARY KEY(pnumber)
);

-- �л� ���̺�
CREATE TABLE student(
snumber NUMBER(10),
sname VARCHAR2(20),
age NUMBER(3),
gender VARCHAR2(4),
address VARCHAR2(30),
pname VARCHAR2(30),
pnumber VARCHAR2(3),
PRIMARY KEY(cnumber),
-- �ܷ�Ű ��������(�а�)
CONSTRAINT FK_dept_std  FOREIGN KEY(dname)
REFERENCES department(dname),
-- �ܷ�Ű ��������(����)
CONSTRAINT FK_prof_std FOREIGN KEY(pnumber)
REFERENCES professor(pnumber)
);

-- �а� �ڷ� ����
INSERT INTO class VALUES ('����Ʈ�����а�', '02-1234-1234', 'B�� 3��');
INSERT INTO class VALUES ('ȭ�а��а�', '02-1234-4567', 'B�� 4��');
INSERT INTO class VALUES ('�������ڰ��а�', '02-1234-5678', 'B�� 5��');

SELECT * FROM tbl_class;

-- ���� �ڷ� ����
INSERT INTO professor(pnumber, pname, major) VALUES (301, '����ö', '�����ͺ��̽�');
INSERT INTO professor(pnumber, pname, major) VALUES (402, '�۹̿�', 'ȭ�� ����');
INSERT INTO professor(pnumber, pname, major) VALUES (501, '������', '������� ����');
INSERT INTO professor(pnumber, pname, major) VALUES (302, '����â', '�����ͺ��̽�');
INSERT INTO professor(pnumber, pname, major) VALUES (601, '����', '������� ����');

-- �л� �ڷ� ����
INSERT INTO student VALUES (20211234, '�̰�', 22, '��','����� ���α�', '����Ʈ�����а�', 301);
INSERT INTO student VALUES (20211235, '�ڴ��', 25, '��','����� ���ϱ�', '�������ڰ��а�', 501);
INSERT INTO student VALUES (20211236, '�Ѻ��', 33, '��','������ ��ȱ�', '�������ڰ��а�', 501);
INSERT INTO student(snumber, sname, age, cname, pnumber) VALUES (20211237, '���', 33, 'ȭ�а��а�', 402);
INSERT INTO student(snumber, sname, age, cname, pnumber) VALUES (20211238, '���', 15, '����Ʈ�����а�', 302);

-- 1. �ּҰ� '��⵵'�� �л��� �˻��Ͻÿ�

-- 2. �ּҰ� '��⵵'�̰� ������ �л��� �˻��Ͻÿ�

-- 3. ���̰� ���� ������ �����Ͻÿ�

-- 4. '�ڴ��'�� ���̸� 30���� ����(����)�Ͻÿ�