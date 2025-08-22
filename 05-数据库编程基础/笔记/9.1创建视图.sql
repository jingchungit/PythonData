select select_priv, create_view_priv, show_view_priv, drop_priv, super_priv from mysql.user where user='root';

#单表查询创建视图
#创建视图：查询雇员表中雇员姓名、薪资、入职时间、职位
select ename,sal,hiredate,job from emp

create view emp_view1 as (select ename,sal,hiredate,job from emp)

#查询视图
select * from emp_view1

#多表查询创建视图
#创建视图 ：查询雇员姓名，薪资，职位，部门信息，及领导姓名，薪资，入职时间
create view emp_view2 as (select e.ename 雇员姓名,e.sal 雇员薪资,e.job 雇员职位,d.*,m.ename 领导姓名,m.sal 领导薪资, m.hiredate 领导入职日期
from emp e join dept d
on e.deptno=d.deptno
join emp m
on e.mgr=m.empno)

select * from emp_view2

#在视图上创建视图
#创建视图显示工作在new york的雇员姓名，薪资，职位，部门信息，及领导姓名，薪资，入职时间
create view emp_view3 as( select * from emp_view2 where loc = 'new york')
select * from emp_view3







