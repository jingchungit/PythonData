#流程函数
/**
查询emp表中部门编号“deptno”为20的员工月薪“sal”，在查询结果中使用字段“sal_level”来表示薪资等级，如果“sal”的值大于等于3000，则用“high”表示高薪，否则用“low”表示低薪。
*/
#if()
select ename,sal,if(sal>=3000,'high','low') sal_level from emp where deptno=20

#ifnull(v1,v2)
/*
查询雇员姓名，薪资，年薪 ，年总收入 (年薪+奖金) 

*/
select ename,sal,comm,sal*12,sal*12+comm from emp;
select ename,sal,comm,sal*12,sal*12+ifnull(comm,0) from emp;

#nullif(v1,v2)
select nullif(1,1),nullif(1,2)

#case value when value1 then result1  end
/**
查询emp表中部门编号“deptno”为20的员工月薪“sal”，在查询结果中使用字段“sal_level”来表示薪资等级，如果“sal”的值大于等于3000，则用“high”表示高薪，否则用“low”表示低薪。
*/
select ename,sal,case sal>=3000 when true then 'high' else 'low' end sal_level
from emp where deptno=20

#case when condition then result end
select ename,sal, case when sal>=3000 then 'high' else 'low' end sal_level
from emp where deptno=20


