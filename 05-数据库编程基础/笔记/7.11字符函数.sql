#CONCAT()函数
#示例：
/**查询emp表中部门编号“deptno”为10的所有员工，并使用CONCAT()函数，将查询结果中数据的显示格式设置为“姓名：xxx，部门：xxx，职位：xxx，年薪：xxx”*/
select concat('姓名:',ename,' 部门:',deptno,' 职位:',job,' 年薪:',sal*12) from emp where deptno =10;

#LENGTH()函数
/*查询emp表中员工姓名“ename”长度为6的所有员工信息。*/
select * from emp where ename like '______'
select * from emp where length(ename)=6;


#LOWER()函数、UPPER()函数
/**
查询emp表中部门编号“deptno”为10的所有员工的姓名“ename”、部门编号“deptno”，并使用LOWER()和UPPER()函数分别将ename字段的值设置为全部小写和全部大写。
*/
select ename,deptno,lower(ename),upper(ename) from emp where deptno=10


#REPLACE()函数  replace(str,oldstr,newstr)
/*
查询emp表中职位“job”为“clerk”的员工的姓名“ename”及职位“job”，并将job字段的值用“staff”替换
*/
select ename,job,replace(job,job,'staff') from emp where job = 'clerk'
select ename,job,replace(job,'man','woman') from emp;


#SUBSTRING()函数  substring(str,index,count)
/**
查询emp表中职位“job”为“clerk”的员工的姓名“ename”及职位“job”，并在查询结果中增加“subname”字段用来显示员工姓名的前三个字符。
*/
select ename,job,substring(ename,1,3) from emp where job='clerk'
select ename,job,substring(ename,1,4) from emp where job='clerk'




