create table emp(
	empno int(4) primary key,
	ename varchar(10),
	job varchar(9),
	mgr int(4),
	hiredate date,
	sal decimal(7,2),
	comm decimal(7,2),
	deptno int(2)
);

insert into emp values
	(7369, 'Smith', 'clerk', 7902, '1980-12-17', 800, null, 20),
	(7499, 'Allen', 'salesman', 7698, '1981-02-20', 1600, 300, 30),
	(7521, 'Ward', 'salesman', 7698, '1981-02-22', 1250, 500, 30),
	(7566, 'Jones', 'manager', 7839, '1981-04-02', 2975, null, 20),
	(7654, 'Maritn', 'salesman', 7698, '1981-09-28', 1250, 1400, 30),
	(7698, 'Blake', 'manager', 7839, '1981-05-01', 2850, null, 30),
	(7782, 'Clark', 'manager', 7839, '1981-06-09', 2450, null, 10),
	(7788, 'Scott', 'analyst', 7566, '1987-04-19', 3000, null, 20),
	(7839, 'King', 'president', null, '1981-11-17', 5000, null, 10),
	(7844, 'Turner', 'salesman', 7698, '1981-09-08', 1500, 0, 30),
	(7876, 'Adams', 'clerk', 7788, '1987-05-23', 1100, null, 20),
	(7900, 'James', 'clerk', 7698, '1981-12-03', 950, null, 30),
	(7902, 'Ford', 'analyst', 7566, '1981-12-03', 3000, null, 20),
	(7934, 'Miller', 'clerk', 7782, '1982-01-23', 1300, null, 10);
	
select * from emp;