#not in   in 的使用
#查询10 20 部门的雇员信息
select * from emp where deptno in (10,20);

#查询雇员姓名在'Jones' 'Scott' 'Ford'的雇员信息
select * from emp where ename in ('Jones', 'Scott', 'Ford');

#查询不在10 和20 部门的雇员姓名 部门号
select ename,deptno from emp where deptno not in (10,20)