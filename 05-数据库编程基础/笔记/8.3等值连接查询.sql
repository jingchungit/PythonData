#查询每位员工的编号、姓名、职位、月薪、部门编号、部门名称、部门所在地。
#等值连接
select empno,ename,job,sal,emp.deptno,dname,loc
from emp inner join dept
on emp.deptno=dept.deptno

select empno,ename,job,sal,emp.deptno,dname,loc
from emp  join dept
on emp.deptno=dept.deptno

select empno,ename,job,sal,e.deptno,dname,loc
from emp e inner join dept d
on e.deptno = d.deptno
/**
1.inner 可以省略
2.连接表中有相同字段名，在字段名前面指定来自哪张表（可以使用表名也可以使用别名）
*/
/***
select 查询数据
from table1 [[as] t1],table2 [[as] t2]
where 关联条件 

*/
#查询每位员工的编号、姓名、职位、月薪、部门编号、部门名称、部门所在地。
select empno,ename,job,sal,e.deptno,dname,loc
from emp e ,dept d
where e.deptno=d.deptno

