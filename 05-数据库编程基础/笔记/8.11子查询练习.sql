#1写一个查询显示与scott在同一部门的雇员信息。结果集中不包含scott
#scott所在部门
select deptno from emp where ename='scott'
select *
from emp where deptno = (select deptno from emp where ename='scott')
and ename !='scott'

#2创建一个查询显示所有薪水高于平均薪水的雇员号和雇员姓名。按薪水的升序排序

#平均薪水
select avg(sal) from emp 

select empno,ename,sal
from emp where sal>(select avg(sal) from emp)
order by sal 


#3写一个查询显示所有工作在部门的名称中包含e的任一雇员的雇员号和雇员姓名

#部门的名称中包含e
select deptno from dept where dname like '%e%'

select empno,ename,deptno from emp where deptno in (select deptno from dept where dname like '%e%')

#4显示每个向king报告的雇员的姓名和薪水
#king的雇员号
select empno from emp where ename = 'king'

select ename,sal 
from emp where mgr=(select empno from emp where ename = 'king')


#5显示在Sales部门的每位雇员的雇员号、雇员名称和职位

#Sales的部门号
select deptno from dept where dname='sales'

select empno,ename,job
from emp where deptno =(select deptno from dept where dname='sales')


