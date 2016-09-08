drop table admins;
drop table Type;
drop table users;
drop table goods;
drop table cartgoods;
drop table orders;
drop table evaluate;
drop table store;

select * from admins;
select * from Type;
select * from users;
select * from goods;
select * from cartgoods;
select * from orders;
select * from evaluate;
select * from store;

create table admins(
       aid int primary key,
       aname varchar2(20) not null,
       pwd varchar2(20 ) not null 
);
--用户表
create table users(       
  usid int primary key,   
  usname varchar2(20) not null, 
  uspwd varchar2(20) not null,  
  telnum varchar2(20) ,  --电话
  email varchar2(30),    --邮箱
  purse number(10,2),    --钱包余额
  idcard varchar2(18),            --身份证号码
  text1 varchar2(200),   --用户图片
  text2 varchar2(200)    --用户状态
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
       tfid int(20)      --父类型id
);


--商品表
create table goods(
       gid int primary key,
       gname varchar2(50),    --商品名
       gprice number(8,2),            --商品价格
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
       epics varchar2(100)
);
drop sequence seq_users_usid;
create sequence seq_users_usid start with 1001 ;
create sequence seq_store_sid start with 10001 ;
create sequence seq_type_tid start with 101 ;
create sequence seq_goods_gid start with 100001 ;
create sequence seq_orders_oid start with 20001 ;
create sequence seq_evaluate_eid start with 30001 ;

alter table users add unique(telnum);
alter table users add unique(email);

insert into users values(seq_users_usid.nextval,'张三','a','15931619481','',null,null,'','');
insert into users values(seq_users_usid.nextval,'张四','a','15931619482','',null,null,'','');
insert into users values(seq_users_usid.nextval,'张五','a','15931619483','',null,null,'','');
insert into users values(seq_users_usid.nextval,'张六','a','15931619484','',null,null,'','');
insert into users values(seq_users_usid.nextval,'张七','a','15931619475','',null,null,'','');
insert into users values(seq_users_usid.nextval,'张八','a','15931619486','',null,null,'','');
insert into users values(seq_users_usid.nextval,'张九','a','15931619487','',null,null,'','');
insert into users values(seq_users_usid.nextval,'王五','a','15931619234','',null,null,'','');
insert into users values(seq_users_usid.nextval,'nice','a','15931619254','13218qq.com',null,null,'','');

insert into users values(seq_users_usid.nextval,'匿名','a',null,'1231@163.com',null,null,'','')

=======
insert into users values(seq_users_usid.nextval,'张三','a','15931619481','',null,null,'','');
insert into users values(seq_users_usid.nextval,'张四','a','15931619482','',null,null,'','');
insert into users values(seq_users_usid.nextval,'张五','a','15931619483','',null,null,'','');
insert into users values(seq_users_usid.nextval,'张六','a','15931619484','',null,null,'','');
insert into users values(seq_users_usid.nextval,'张七','a','15931619475','',null,null,'','');
insert into users values(seq_users_usid.nextval,'张八','a','15931619486','',null,null,'','');
insert into users values(seq_users_usid.nextval,'张九','a','15931619487','',null,null,'','');
insert into users values(seq_users_usid.nextval,'王五','a','15931619234','',null,null,'','');

insert into type values(seq_type_tid.nextval,'美食',0);
insert into type values(seq_type_tid.nextval,'酒店/客栈',0);
insert into type values(seq_type_tid.nextval,'电影/在线选座',0);
insert into type values(seq_type_tid.nextval,'KTV',0);
insert into type values(seq_type_tid.nextval,'休闲娱乐',0);
insert into type values(seq_type_tid.nextval,'周边游/旅游',0);
insert into type values(seq_type_tid.nextval,'生活服务',0);
insert into type values(seq_type_tid.nextval,'购物',0);
insert into type values(seq_type_tid.nextval,'丽人',0);

insert into type values(seq_type_tid.nextval,'���',110);
insert into type values(seq_type_tid.nextval,'��Ʒ',110);
insert into type values(seq_type_tid.nextval,'С��',110);
insert into type values(seq_type_tid.nextval,'����',110);
insert into type values(seq_type_tid.nextval,'������',110);
insert into type values(seq_type_tid.nextval,'���',110);
insert into type values(seq_type_tid.nextval,'�۲�',110);
insert into type values(seq_type_tid.nextval,'���ֱ���',111);


insert into goods values(seq_goods_gid.nextval,'正新鸡扒','9.00',10001,'null','null',110,0,'');
insert into goods values(seq_goods_gid.nextval,'佳客来牛排','9.00',10001,'null','null',110,0,'');
insert into goods values(seq_goods_gid.nextval,'门客牛排','9.00',10001,'null','null',110,0,'');
insert into goods values(seq_goods_gid.nextval,'健康牛排','9.00',10001,'null','null',110,0,'');
insert into goods values(seq_goods_gid.nextval,'至尊披萨','9.00',10001,'null','null',110,0,'');


insert into store values(seq_store_sid.nextval,'1001','�й�ʳ��������','������������⣬�ṩ���WiFi');
insert into store values(seq_store_sid.nextval,'1001','�й�ʳ��������','������������⣬�ṩ���WiFi');
insert into store values(seq_store_sid.nextval,'1001','�й�ʳ��������','������������⣬�ṩ���WiFi');
insert into store values(seq_store_sid.nextval,'1001','�й�ʳ��������','������������⣬�ṩ���WiFi');
insert into store values(seq_store_sid.nextval,'1001','�й�ʳ��������','������������⣬�ṩ���WiFi');

select a.*,b.tname ftname from type a,type b where a.tfid=b.tid

select * from users where usname='张三' and uspwd ='a'
select * from users where email=''
select g.*,s.sname sname,s.sdetail from goods g,store s where g.sid=s.sid
select a.*,b.name ftname from type a,type b where a.tfid=b.tid
commit

alter table type rename column tname to name;
