#查询雇员薪资大于等于1500 小于等于3000的雇员信息
select * from emp where sal between 1500 and 3000;

#使用多条件查询 and
select * from emp where sal >=1500 and sal<=3000

#查询部门号20 且 职位clerk 的雇员姓名  职位  薪资 部门号
select ename,sal,job,deptno from emp where deptno=20 and job = 'clerk'

#or 连接多条件查询
#查询部门号20 或者 职位clerk 的雇员姓名  职位  薪资 部门号
select ename,sal,job,deptno from emp where deptno=20 or job ='clerk'

#&& 替换 and
#查询部门号20 且 职位clerk 的雇员姓名  职位  薪资 部门号
select ename,sal,job,deptno from emp where deptno=20 && job='clerk'

#||替换 or
#查询部门号20 或者 职位clerk 的雇员姓名  职位  薪资 部门号
select ename,job,sal,deptno from emp where deptno=20 || job = 'clerk'



