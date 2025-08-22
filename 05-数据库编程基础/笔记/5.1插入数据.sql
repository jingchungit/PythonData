#创建student表
create table student(
 stu_id int primary key auto_increment,
 stu_name varchar(20) not null,
 age int(2),
 score float,
 email varchar(30) unique,
 sex varchar(1) default '女'
)

#1.为所有字段插入数据 
insert into student(stu_id,stu_name,age,email,score,sex) values(101,'张三',23,'zhangsan@163.com',99.8,'女')

desc student;
insert into student values(1002,'李四',12,99.9,'8777262@qq.com','男')

#2.为指定的字段插入值
insert into student(stu_name,age,score,email) values('王五',14,100,'8772626@qq.com')

insert into student(stu_name,age,score) values('赵六',15,99);

insert into student(age,score) values(16,99.3)

insert into student(stu_name,age,score,email) values('小王',4,100,'8772626@qq.com')

#3.使用set给所有字段插入数据
insert into student set stu_id =1,stu_name='小王',score=89.9,age=16,email='8722662@qq.com',sex='男'

#set给指定字段插入数据
insert into student set stu_name='小红' ,score=99.9,age=18,email='xiaohong@163.com'

#4.插入多条数据
insert into student values
             (11,'aa',12,89,'12344@qq.com','男'),
						 (22,'bb',22,99,'bb@163.com','女'),
						 (33,'cc',22,100,'asd','女')
		
#给指定的字段插入多条数据
insert into student(stu_name,age,score,email) values             ('小张',13,78,'xiaozhang@163.com'),
						 ('小李',16,88,'33222@qq.com'),
						 ('小宋',6,100,'13333222@qq.com')
						 
#5.使用查询结果插入数据
create table female_student(
stu_id int primary key auto_increment,
stu_name varchar(20) not null,
age int(2),
score float,
email varchar(30) unique,
sex varchar(1) default '女'
)

#将student表中性别为‘女’的数据插入到 female_student
insert into female_student 
select * from student where sex = '女'

#使用查询给指定字段插入数据
insert into female_student(stu_name,age,score,email)
select stu_name,age,score,email from student where sex='男'

insert into female_student(stu_name,age,score)
select stu_name,age,score,email from student where sex='男'





