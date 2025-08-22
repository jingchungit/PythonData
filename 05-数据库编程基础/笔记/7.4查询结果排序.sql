#查询雇员姓名，薪资
select ename,sal from emp;
#按薪资sal 排序  默认升序
select ename,sal from emp order by sal;
select ename,sal from emp order by sal asc;
#按薪资降序排序 order by desc
select ename,sal from emp order by sal desc;

#按别名进行排序
select ename,hiredate,sal,sal*12 as yearsal from emp;
#按yearsal排序
select ename,hiredate,sal,sal*12 as yearsal from emp order by yearsal;
select ename,hiredate,sal,sal*12 as yearsal from emp order by yearsal desc;

#按入职时间升序  薪资降序
select ename,hiredate,sal from emp order by hiredate asc,sal desc;
