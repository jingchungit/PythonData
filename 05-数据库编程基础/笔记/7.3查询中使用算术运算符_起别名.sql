#查询雇员的姓名,入职时间,职位,薪资
select ename,hiredate,job,sal from emp;

#查询雇员的姓名,入职时间,职位,薪资,年薪
select ename,hiredate,job,sal,sal*12 from emp;

#起别名 
#例如 sal*12 as yealsal
select ename,hiredate,job,sal,sal*12 as yealsal from emp;
select ename,hiredate,job,sal,sal*12 as 'yealsal' from emp;
select ename,hiredate,job,sal,sal*12 as 'yeal sal' from emp;

#“姓名：xxx，部门：xxx，职位：xxx，年薪：xxx”
select concat('姓名：',ename,' 部门：',deptno,' 职位：',job,' 年薪：',sal*12) from emp;
