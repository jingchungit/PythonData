#数值函数
#abs() 取绝对值
select abs(-10),abs(10) from dual;
select abs(-10),abs(100)

#ceil() floor()
select ceil(32.456),floor(32.456)

#mod(m,n)
select mod(10,3)

#pi()
select pi()

#pow(m,n) power(m,n)
select pow(3,2),power(3,2)

#rand() 0~1之间
select rand(),rand(),rand(),rand()

#获取 10 ~15之间的随机数 包括10 不包括15 floor(i+rand()*(j-i))
select floor(10+rand()*(15-10)),floor(10+rand()*(15-10)),floor(10+rand()*(15-10))

#round(num,n) 中n可以省略
select round(3.12345,0),round(3.12345,1),round(3.12345,2),round(3.1236,3)

select round(3.12345) 

#truncate(num,n) n不能省略
select truncate(3.4356,0),truncate(3.4356,1),truncate(3.4356,2),truncate(3.4356,3)

select truncate(3.4356,0)


