#1列出至少有四位员工的所有部门信息
#1.1每个部门有多少人
select count(*),deptno
from emp group by deptno
#1.2至少有四位
select count(*),deptno
from emp group by deptno having count(*)>=4
#1.3部门信息
select d.*,dd.num
from dept d,(select count(*) num,deptno
from emp group by deptno having count(*)>=4) dd
where d.deptno = dd.deptno

#使用 join  on  实现
select d.*,dd.num
from dept d join (select count(*) num,deptno
from emp group by deptno having count(*)>=4) dd
on d.deptno = dd.deptno

#2列出薪金比“SMITH”多的员工信息
#2.1“SMITH”的薪资
select sal from emp where ename='smith'

#2.2比“SMITH”多的员工信息
select *
from emp 
where sal>(select sal from emp where ename='smith')

#3列出所有员工的姓名及其直接上级的姓名。没有领导的雇员也列出
select e.ename 雇员姓名,m.ename 领导姓名
from emp e left join emp m
on e.mgr = m.empno

#right join 
select  e.ename 雇员姓名,m.ename 领导姓名
from emp m  right join emp e
on e.mgr = m.empno


#4列出受雇日期早于其直接上级的所有员工的编号、姓名、部门名称
select e.empno,e.ename,d.dname,e.hiredate 雇员入职日期 ,m.hiredate 领导入职日期
from emp e join dept d
on e.deptno = d.deptno
join emp m
on e.mgr = m.empno
where e.hiredate < m.hiredate

#5列出所有“CLERK”（办事员）的姓名及其部门名称、部门人数
#“CLERK”（办事员）的姓名
select ename from emp where job ='clerk'

#其部门名称
select e.ename,d.dname
from emp e join dept d
on e.deptno=d.deptno
where job ='clerk'
#部门人数
select deptno ,count(*)
from emp group by deptno


select e.ename,d.dname,dd.num
from emp e join dept d
on e.deptno=d.deptno
join (select deptno ,count(*) num
from emp group by deptno) dd
on d.deptno = dd.deptno
where job ='clerk'


#6列出最低薪金大于1500的各种工作及此从事此工作的全部雇员人数
#最低薪金大于1500
select job,min(sal),count(*)
from emp 
group by job
having min(sal)>1500

#7列出在部门“SALES”（销售部）工作的员工的姓名，假定不知道销售部的部门编号。
#部门“SALES”（销售部）的部门号
select deptno from dept where dname = 'sales'

#员工的姓名
select ename
from emp 
where deptno = (select deptno from dept where dname = 'sales')

#8列出薪金高于公司平均薪金的所有员工，所在部门、上级领导
#公司平均薪金
select avg(sal) from emp

select e.*,d.dname,d.loc,m.ename 领导姓名,m.sal 领导薪资
from emp e join dept d
on e.deptno=d.deptno
join emp m
on e.mgr=m.empno
where e.sal>(select avg(sal) from emp)

#9列出与“SCOTT”从事相同工作的所有员工及部门名称
#“SCOTT”从事的工作
select job from emp where ename='scott'

#所有员工及部门名称
select e.*,d.dname,d.loc
from emp e join dept d
on e.deptno=d.deptno
where e.job = (select job from emp where ename='scott')
and e.ename !='scott'

#10列出薪金高于在部门30工作的所有员工的薪金的员工姓名和薪金、部门名称
select e.ename,e.sal,d.dname
from emp e join dept d
on e.deptno = d.deptno
where sal >all(select sal from emp where deptno=30)

#11列出在每个部门工作的员工数量、部门名称、平均工资和平均服务期限
select count(*),d.dname,d.deptno,avg(sal),avg(DATEDIFF(sysdate(),hiredate)/365)
from emp e join dept d
on e.deptno=d.deptno
group by d.deptno

#12列出所有员工的年工资，按年薪从低到高排序
select (sal+ifnull(comm,0))*12  yearsal from emp order by yearsal

#13求出部门名称中，带‘s’字符的部门员工的工资合计、部门人数
select deptno

from dept where dname like '%s%'

select deptno,count(*),sum(sal) 
from emp 
where deptno in (select deptno
from dept where dname like '%s%')
group by deptno

select d.deptno,count(*),sum(sal)
from emp e join dept d
on e.deptno = d.deptno
where d.dname like '%s%'
group by d.deptno

