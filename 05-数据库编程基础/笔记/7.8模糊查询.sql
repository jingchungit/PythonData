#模糊查询  like
#查询雇员姓名以s开头雇员信息
select * from emp where ename like 's%'

#查询雇员姓名以s结尾的雇员信息
select * from emp where ename like '%s'

#查询雇员姓名中包含s的
select * from emp where ename like '%s%'

#查询雇员姓名不是以s开头的雇员信息
select *from emp where ename not like 's%'

#查询emp表中姓名的第二个字符是“L”的所有员工的信息。
select * from emp where ename like '_l%'
select * from emp where ename like '_l' #雇员姓名第一个是任意字符,第二个是l总共长度2

#查询emp表中姓名包含字符“_”
select * from emp where ename like '%_%'

#解决方式1 使用\转义
select * from emp where ename like '%\_%'

#解决方式2 escape
select * from emp where ename like '%a_%' escape 'a'



