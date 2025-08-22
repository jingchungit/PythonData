#limit [start_index],row_count

#查询部门号为20的雇员信息
select * from emp where deptno=20

#显示前3条  #start_index 取默认值 0  即从第一条开始
select * from emp where deptno=20 limit 3;
select * from emp where deptno=20 limit 0,3;

#从第三条开始显示3条   第3 4 5条显示 limit 2,3
select * from emp where deptno=20 limit 2,3

#如果row_count 超过总共记录条数
select * from emp where deptno=20

#查询部门号为20的雇员信息，从第二条数据开始  显示10
select * from emp where deptno=20 limit 1,10

#查询雇员表的信息，进行分页  每页显示3条数据
#第一页 limit 3
select * from emp limit 3;
select * from emp limit 0,3;

#第二页  limit 3,3
select * from emp limit 3,3

#第三页  limit 6,3
select * from emp limit 6,3

#第n页  limit  (n-1)*pagesize,3

#LIMIT关键字通常与ORDER BY一起使用，先对查询结果进行排序，然后分页显示。
#查询雇员表雇员信息，按薪资降序排序， 取前5条
select * from emp order by sal desc limit 5




