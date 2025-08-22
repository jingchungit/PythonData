#查询部分号
select deptno,ename from emp;
#查询10号部门的雇员信息
select * from emp where deptno=10

#查询10号部门的雇员信息 ，按薪资降序排序
select * from emp where deptno=10 order by sal desc

#查询雇员信息，薪资sal大于1500
select * from emp where sal>1500

#查询雇员姓名，薪资，部门号 薪资小于等于1500
select ename,sal,deptno from emp where sal<=1500 order by sal

#查询雇员号，雇员姓名，部门号 ,部门号不在10部门的
select empno,ename,deptno from emp where deptno!=10;
select empno,ename,deptno from emp where deptno<>10;

#查询雇员姓名叫 Smith的雇员信息 MySQL中不区分大小写
select * from  emp where ename = 'Smith'
select * from  emp where ename = 'SMITH'

#想让区别大小写 binary
#查询雇员姓名叫 Smith的雇员信息
select * from emp where  ename='smith'
select * from emp where binary ename='smith'
select * from emp where binary ename='SMITH'
select * from emp where binary ename='Smith'

#查询薪资在1500~3000之间的雇员姓名，入职时间，部门号，职位,薪资
select ename,hiredate,deptno,job,sal from emp where sal>=1500 and sal<=3000
#between  and
select ename,hiredate,deptno,job,sal from emp where sal between 1500 and 3000;
#not between and
#查询小于1500 大于3000 的雇员信息
select * from emp where sal not between 1500 and 3000; 



