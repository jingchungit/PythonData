#3.列子查询 in any|some  all
#查询emp表中工作地点在“New York”或者“Dallas”的员工信息。
select * from dept
#工作地点在“New York”或者“Dallas”的部门号
select deptno from dept where loc in('new york','Dallas')
#
select * from emp where deptno in(select deptno from dept where loc in('new york','Dallas'))

#查询emp表中月薪低于任何一个“clerk”的月薪的员工信息。
#“clerk”的月薪
select sal from emp where job='clerk'
select * from emp where sal <any(select sal from emp where job='clerk')

select * from emp where sal <some(select sal from emp where job='clerk')

#查询emp表中月薪高于所有“clerk”的月薪的员工信息。

#“clerk”的月薪
select sal from emp where job='clerk'
select * from emp where sal >all(select sal from emp where job='clerk')
