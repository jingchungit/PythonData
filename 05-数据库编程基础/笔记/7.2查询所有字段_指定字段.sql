#1.查询所有的字段
select empno,ename,job,mgr,sal,hiredate,comm,deptno from emp;
select empno,ename,job,mgr,sal,comm,deptno,hiredate from emp;

# * 通配符查询所有字段
select * from emp;

#查询指定的字段
#查询雇员姓名  入职日期  薪资
select ename,hiredate,sal from emp;

#查询部门号  
select deptno from emp;

#去重 distinct
select distinct deptno from emp;

#distinct可以与两个字段连用
select deptno,job,ename from emp;
#查询不在同一部门 而且职位也不相同
select distinct deptno,job from emp;