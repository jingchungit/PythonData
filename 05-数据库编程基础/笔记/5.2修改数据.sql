#修改数据
#修改student表中小王的成绩 95
update student set score=95 where stu_name='小王'

#修改stu_id=11  的stu_name= 'huahua'  age = 22
update student set stu_name='huahua' ,age = 22 where stu_id=11

#修改所有数据
#将student表中的年龄age 都增加1岁
update student set age = age+1 ;