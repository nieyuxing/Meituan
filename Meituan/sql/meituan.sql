drop table admins;

drop table evaluate;--在 user goods 前
drop table cartgoods;--在user goods 前
drop table goods;  --在 type store 前
drop table store;  --在 user前 
drop table Type;
drop table orders;--在 user 前
drop table users;

select * from admins;
select * from users;
select * from Type;
select * from goods;
select * from cartgoods;
select * from orders;
select * from evaluate;
select * from store;

create table admins(
       aid int primary key,
       aname varchar2(20) not null,
       pwd varchar2(45 ) not null 
);
insert into admins values(111,'admin','a');

--用户表
create table users(       
  usid int primary key,   
  usname varchar2(20) unique, 
  uspwd varchar2(45) not null,  
  telnum varchar2(45) unique ,  --电话
  email varchar2(50) unique not null,    --邮箱
  purse number(10,2),             --钱包余额
  idcard int,            --身份证号码
  text1 varchar2(200),   --用户图片
  text2 varchar2(200)    --预留字段
);

--商店表
create table store(
	sid int primary key,
    usid int references users(usid),
	sname varchar2(50),
	sdetail varchar2(200)
);

--商品类型表
create table type(
       tid int primary key,   --类型id
       tname varchar2(20),    --类型名
       tfid int      --父类型id
);


--商品表
create table goods(
       gid int primary key,
       gname varchar2(50) unique not null,    --商品名
       gprice number(8,2) not null,            --商品价格
       sid int references store(sid),    --商品地址，相当于店铺名
       gpic varchar2(50),             --商品图片
       gdetails varchar2(20),         --商品详细
       tid int references type(tid),  --类型id
       gcount int,            --商品已卖数量
       text3 varchar2(50)     --预留字段
);

--用户商品表
create table cartgoods(
       usid int references users(usid),  --购物车id
       gid int references goods(gid), --商品id
       gnum int,         --商品数量
       cgprice int        --购物车总价
);
--订单表
create table orders(
       oid int primary key,
       otime date,        --订单时间
       oroom varchar2(100),   --订单送货地址
       usid int references users(usid),
       telnumber int ,
       status int          --订单状态
);

--评价表
create table evaluate(
       eid int primary key,
       usid int references users(usid),
       gid int references goods(gid),
       econtent varchar2(200),  --评价内容
       edate date,              --评价时间
       state int  ,              --评价分数1-5
       epics varchar2(100)		--评价图片
);

drop sequence seq_users_usid;
drop sequence seq_store_sid;
drop sequence seq_type_tid;
drop sequence seq_goods_gid;
drop sequence seq_orders_oid;
drop sequence seq_evaluate_eid;

create sequence seq_users_usid start with 1001 ;
create sequence seq_store_sid start with 10001 ;
create sequence seq_type_tid start with 101 ;
create sequence seq_goods_gid start with 100001 ;
create sequence seq_orders_oid start with 20001 ;
create sequence seq_evaluate_eid start with 30001 ;


insert into type values(seq_type_tid.nextval,'美食',0);
insert into type values(seq_type_tid.nextval,'酒店/客栈',0);
insert into type values(seq_type_tid.nextval,'电影/在线选座',0);
insert into type values(seq_type_tid.nextval,'KTV',0);
insert into type values(seq_type_tid.nextval,'休闲娱乐',0);
insert into type values(seq_type_tid.nextval,'周边游/旅游',0);
insert into type values(seq_type_tid.nextval,'生活服务',0);
insert into type values(seq_type_tid.nextval,'购物',0);
insert into type values(seq_type_tid.nextval,'丽人',0);

insert into type values(seq_type_tid.nextval,'火锅',101);
insert into type values(seq_type_tid.nextval,'甜品',101);
insert into type values(seq_type_tid.nextval,'小吃',101);
insert into type values(seq_type_tid.nextval,'西餐',101);
insert into type values(seq_type_tid.nextval,'东北菜',101);
insert into type values(seq_type_tid.nextval,'湘菜',101);
insert into type values(seq_type_tid.nextval,'港菜',101);
insert into type values(seq_type_tid.nextval,'新林宾馆',102);

insert into users values(seq_users_usid.nextval,null,'a',null,'123@163.com',null,null,'','')

insert into store values(seq_store_sid.nextval,'1001','中国食府自助烤肉','单人午餐自助烤肉，提供免费WiFi');
insert into store values(seq_store_sid.nextval,'1001','中国食府自助烤肉','单人午餐自助烤肉，提供免费WiFi');
insert into store values(seq_store_sid.nextval,'1001','中国食府自助烤肉','单人午餐自助烤肉，提供免费WiFi');
insert into store values(seq_store_sid.nextval,'1001','中国食府自助烤肉','单人午餐自助烤肉，提供免费WiFi');
insert into store values(seq_store_sid.nextval,'1001','中国食府自助烤肉','单人午餐自助烤肉，提供免费WiFi');


insert into goods values(seq_goods_gid.nextval,'正新鸡扒','9.00',10011,'null','null',101,0,'');
insert into goods values(seq_goods_gid.nextval,'佳客来牛排','9.00',10011,'null','null',101,0,'');
insert into goods values(seq_goods_gid.nextval,'门客牛排','9.00',10011,'null','null',101,0,'');
insert into goods values(seq_goods_gid.nextval,'健康牛排','9.00',10011,'null','null',101,0,'');
insert into goods values(seq_goods_gid.nextval,'至尊披萨','9.00',10011,'null','null',101,0,'');


select a.*,b.tname ftname from type a,type b where a.tfid=b.tid

select * from users where email='1321830203@qq.com'

select * from users where usname='张三' and uspwd ='a'

select * from users where email='888@qq.com' or usname='888@qq.com'
commit
