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


--用户表
create table users(       
  usid int primary key,   
  usname varchar2(20) unique, 
  uspwd varchar2(45) not null,  
  telnum varchar2(45) unique ,  --电话
  email varchar2(50) unique not null,    --邮箱
  purse number(10,2),             --钱包余额
  idcard varchar2(60),            --身份证号码
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
       gdetails varchar2(80),         --商品详细
       tid int references type(tid),  --类型id
       gcount int,            --商品已卖数量
       ecount int              --评价数量
);

--购物车表
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
       telnumber varchar2(60) ,
       status number(10,2)      --金额
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

insert into admins values(111,'admin','a');

insert into users values(seq_users_usid.nextval,'nice','a','15931619481','11@qq.com',null,null,'','');
insert into users values(seq_users_usid.nextval,'navy','a','15931619482','131@qq.com',null,null,'','');

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

insert into store values(seq_store_sid.nextval,'1001','至尊披萨','单人午餐自助烤肉，提供免费WiFi');
insert into store values(seq_store_sid.nextval,'1001','金星网吧','提供免费WiFi');
insert into store values(seq_store_sid.nextval,'1001','【崇尚广场】崇尚国际影城','爆米花（小）+恒大冰泉1份');
insert into store values(seq_store_sid.nextval,'1001','神洲明珠大酒店','商务套房入住1晚，免费WiFi。');
insert into store values(seq_store_sid.nextval,'1001','时光纪摄影','提供免费WiFi');
insert into store values(seq_store_sid.nextval,'1001','【12店通用】辣百分（欣衡超市店）','辣百分劲辣/泡辣2选1，30包/盒');
insert into store values(seq_store_sid.nextval,'1001','【2店通用】瑞豪专业烫染连锁','单人隐形无痕接发2选1套餐');
insert into store values(seq_store_sid.nextval,'1001','南岳衡山风景名胜区','南岳衡山（含景区交通）一日游');

insert into goods values(seq_goods_gid.nextval,'至尊披萨','11.00',10001,'indexPic01.jpg','建议1-2人使用，提供免费WiFi','101',0,0);
insert into goods values(seq_goods_gid.nextval,'桥头米线','8.80',10001,'qtmx.png','桥头肉条一份，提供免费WiFi','101',0,0);
insert into goods values(seq_goods_gid.nextval,'金星网吧','20.00',10002,'indexPic02.jpg','提供免费WiFi','102',0,0);
insert into goods values(seq_goods_gid.nextval,'【崇尚广场】崇尚国际影城','10.80',10003,'indexPic03.jpg','爆米花（小）+恒大冰泉1份','103',0,0);
insert into goods values(seq_goods_gid.nextval,'神洲明珠大酒店','519.00',10004,'indexPic04.jpg','商务套房入住1晚，免费WiFi。','104',0,0);
insert into goods values(seq_goods_gid.nextval,'时光纪摄影','200.00',10005,'indexPic05.jpg','提供免费WiFi','105',0,0);
insert into goods values(seq_goods_gid.nextval,'【12店通用】辣百分（欣衡超市店）','25.00',10006,'indexPic06.jpg','辣百分劲辣/泡辣2选1，30包/盒','106',0,0);
insert into goods values(seq_goods_gid.nextval,'【2店通用】瑞豪专业烫染连锁','19.00',10007,'indexPic07.jpg','单人隐形无痕接发2选1套餐','107',0,0);
insert into goods values(seq_goods_gid.nextval,'南岳衡山风景名胜区','200.00',10008,'indexPic08.jpg','南岳衡山（含景区交通）一日游','108',0,0);

insert into goods values(seq_goods_gid.nextval,'佳客来牛排专家','43.90',10001,'top2.png','正宗牛排,味美实惠','101',0,0);
insert into goods values(seq_goods_gid.nextval,'膳食空间','33.00',10001,'top3.png','膳食空间欢迎您','101',0,0);
insert into goods values(seq_goods_gid.nextval,'衡府念乡烧饼','1.60',10001,'top4.png','家乡的味道','101',0,0);
insert into goods values(seq_goods_gid.nextval,'韩式烤肉','40.00',10001,'top5.png','韩式烤肉,味美实惠','101',0,0);
insert into goods values(seq_goods_gid.nextval,'豪烤馆','45.00',10001,'top6.png','自己动手,味道绝伦','101',0,0);
insert into goods values(seq_goods_gid.nextval,'雨花西餐厅‘','19.80',10001,'top7.png','客官请慢用','101',0,0);
insert into goods values(seq_goods_gid.nextval,'馍馍能DIY自助烘烤馆','38.00',10001,'top8.png','馍馍能DIY自助烘烤馆,提供免费WiFi','101',0,0);
insert into goods values(seq_goods_gid.nextval,'湘西部落','35.00',10001,'top9.png','湘西部落，提供免费WiFi','101',0,0);
insert into goods values(seq_goods_gid.nextval,'鱿遍天下','33.00',10001,'top10.png','10串鱿鱼，任选10串，提供免费WiFi','101',0,0);

insert into goods values(seq_goods_gid.nextval,'悦享西饼(岳屏店)','7.90',10002,'ms1.png','美食，悦屏公园','101',0,0);
insert into goods values(seq_goods_gid.nextval,'麦琪(环城南路店)','16.00',10002,'ms2.png','美食，雁城区','101',0,0);
insert into goods values(seq_goods_gid.nextval,'江湖对决小龙虾','39.90',10002,'ms3.png','美食，崇尚广场','101',0,0);
insert into goods values(seq_goods_gid.nextval,'食韵家','35.00',10002,'ms4.png','美食，耒阳市','101',0,0);
insert into goods values(seq_goods_gid.nextval,'猎人酒吧(工学院南门)','48.00',10002,'ms5.png','美食，酃湖大学城','101',0,0);
insert into goods values(seq_goods_gid.nextval,'虾米香辣虾','40.00',10002,'ms6.png','美食，华新步步高','101',0,0);
insert into goods values(seq_goods_gid.nextval,'爱尚比萨咖啡','9.90',10002,'ms7.png','美食，老师院/八中','101',0,0);
insert into goods values(seq_goods_gid.nextval,'中国食谱自助烤肉','36.80',10002,'ms8.png','美食，中山南路','101',0,0);
insert into goods values(seq_goods_gid.nextval,'京牛时尚中西餐厅','80.00',10002,'ms9.png','美食，崇尚广场','101',0,0);
insert into goods values(seq_goods_gid.nextval,'三年二班(立新店)','9.00',10002,'ms10.png','美食，立新开发区','101',0,0);
insert into goods values(seq_goods_gid.nextval,'至尊比萨(中山店)','32.00',10002,'ms11.png','美食，石鼓广场','101',0,0);
insert into goods values(seq_goods_gid.nextval,'世家健康牛排','43.90',10002,'ms12.png','美食，雁峰区','101',0,0);
insert into goods values(seq_goods_gid.nextval,'茶马遗风藏式秘制烤鱼','39.00',10002,'ms13.png','美食，崇尚广场','101',0,0);

insert into goods values(seq_goods_gid.nextval,'金色家族量版ktv','9.80',10003,'ktv1.png','休闲娱乐，石鼓区','104',0,0);
insert into goods values(seq_goods_gid.nextval,'同一首歌ktv','28.00',10003,'ktv2.png','休闲娱乐，石鼓区','104',0,0);
insert into goods values(seq_goods_gid.nextval,'唯k主题ktv','19.80',10003,'ktv3.png','休闲娱乐，耒阳市','104',0,0);
insert into goods values(seq_goods_gid.nextval,'咔乐迪量贩式KTV','30.00',10003,'ktv4.png','休闲娱乐，蒸湘区','104',0,0);
insert into goods values(seq_goods_gid.nextval,'糖果量贩KTV（首峰店）','39.80',10003,'ktv5.png','休闲娱乐， 岳屏公园','104',0,0);
insert into goods values(seq_goods_gid.nextval,'凯乐纯KTV','28.00',10003,'ktv6.png','休闲娱乐，立新开发区','104',0,0);
insert into goods values(seq_goods_gid.nextval,'世纪传奇ktv','27.00',10003,'ktv7.png','休闲娱乐，石鼓区','104',0,0);
insert into goods values(seq_goods_gid.nextval,'唯歌KTV量贩','19.80',10003,'ktv8.png','休闲娱乐，华新开发区','104',0,0);
insert into goods values(seq_goods_gid.nextval,'名店糖果ktv','39.90',10003,'ktv9.png','休闲娱乐，蒸湘区','104',0,0);
insert into goods values(seq_goods_gid.nextval,'卡布娱乐(旗舰店)','38.00',10003,'ktv10.png','休闲娱乐，晶珠广场','104',0,0);
insert into goods values(seq_goods_gid.nextval,'凯乐纯kvt','39.00',10003,'ktv11.png','休闲娱乐，石鼓广场','104',0,0);
insert into goods values(seq_goods_gid.nextval,'k歌汇量版ktv','19.90',10003,'ktv12.png','休闲娱乐，莲湖广场','104',0,0);
insert into goods values(seq_goods_gid.nextval,'Newway星派ktv','39.00',10003,'ktv13.png','休闲娱乐，解放路','104',0,0);

insert into goods values(seq_goods_gid.nextval,'蕾特恩专业祛痘连锁店','1.00',10004,'lr1.png','丽人，雁峰区','109',0,0);
insert into goods values(seq_goods_gid.nextval,'88烫染吧品牌连锁','0.10',10004,'lr2.png','丽人，东方百货','109',0,0);
insert into goods values(seq_goods_gid.nextval,'一宿潮派沙龙','0.10',10004,'lr3.png','丽人，解放路','109',0,0);
insert into goods values(seq_goods_gid.nextval,'无界烫染总店','0.10',10004,'lr4.png','丽人，解放路','109',0,0);
insert into goods values(seq_goods_gid.nextval,'发泽造型','39.80',10004,'lr5.png','丽人，华新步步高','109',0,0);
insert into goods values(seq_goods_gid.nextval,'佛伦斯私人定制烫染国际连锁','0.10',10004,'lr6.png','丽人，中山南路','109',0,0);
insert into goods values(seq_goods_gid.nextval,'漂亮宝贝','39.80',10004,'lr7.png','丽人，解放路','109',0,0);
insert into goods values(seq_goods_gid.nextval,'流行解码烫染沙龙','12.80',10004,'lr8.png','丽人，南华大学','109',0,0);
insert into goods values(seq_goods_gid.nextval,'金领公社','39.00',10004,'lr9.png','丽人，解放路','109',0,0);
insert into goods values(seq_goods_gid.nextval,'诺米造型','29.80',10004,'lr10.png','丽人，解放路','109',0,0);
insert into goods values(seq_goods_gid.nextval,'巴布婴童会所','68.00',10004,'lr11.png','丽人，华新开发区','109',0,0);
insert into goods values(seq_goods_gid.nextval,'佛伦斯私人定制烫染国际连锁南华店','39.00',10004,'lr12.png','丽人，南华大学','109',0,0);


insert into orders values(seq_orders_oid.nextval,to_date('2016-09-10','yyyy-MM-dd'),'湖南工学院',1001,'123456789',1000);
insert into orders values(seq_orders_oid.nextval,to_date('2016-01-10','yyyy-MM-dd'),'湖南工学院',1002,'123456789',2000);
insert into orders values(seq_orders_oid.nextval,to_date('2016-02-10','yyyy-MM-dd'),'湖南工学院',1002,'123456789',3000);
insert into orders values(seq_orders_oid.nextval,to_date('2016-03-10','yyyy-MM-dd'),'湖南工学院',1001,'123456789',4000);
insert into orders values(seq_orders_oid.nextval,to_date('2016-04-10','yyyy-MM-dd'),'湖南工学院',1002,'123456789',5000);
insert into orders values(seq_orders_oid.nextval,to_date('2016-05-10','yyyy-MM-dd'),'湖南工学院',1001,'123456789',6000);
insert into orders values(seq_orders_oid.nextval,to_date('2016-06-10','yyyy-MM-dd'),'湖南工学院',1002,'123456789',7000);
insert into orders values(seq_orders_oid.nextval,to_date('2016-07-10','yyyy-MM-dd'),'湖南工学院',1001,'123456789',8000);
insert into orders values(seq_orders_oid.nextval,to_date('2016-08-10','yyyy-MM-dd'),'湖南工学院',1001,'123456789',9000);
insert into orders values(seq_orders_oid.nextval,to_date('2016-08-10','yyyy-MM-dd'),'湖南工学院',1001,'123456789',9000);
insert into orders values(seq_orders_oid.nextval,to_date('2016-08-10','yyyy-MM-dd'),'湖南工学院',1001,'123456789',9000);
insert into orders values(seq_orders_oid.nextval,to_date('2016-08-10','yyyy-MM-dd'),'湖南工学院',1001,'123456789',9000);
insert into orders values(seq_orders_oid.nextval,to_date('2016-08-10','yyyy-MM-dd'),'湖南工学院',1001,'123456789',9000);
insert into orders values(seq_orders_oid.nextval,to_date('2016-08-10','yyyy-MM-dd'),'湖南工学院',1001,'123456789',9000);
insert into orders values(seq_orders_oid.nextval,to_date('2016-08-10','yyyy-MM-dd'),'湖南工学院',1001,'123456789',9000);
insert into orders values(seq_orders_oid.nextval,to_date('2016-08-10','yyyy-MM-dd'),'湖南工学院',1001,'123456789',9000);
insert into orders values(seq_orders_oid.nextval,to_date('2016-08-10','yyyy-MM-dd'),'湖南工学院',1001,'123456789',900);
insert into orders values(seq_orders_oid.nextval,to_date('2016-08-10','yyyy-MM-dd'),'湖南工学院',1001,'123456789',900);
insert into orders values(seq_orders_oid.nextval,to_date('2016-08-10','yyyy-MM-dd'),'湖南工学院',1001,'123456789',900);
insert into orders values(seq_orders_oid.nextval,to_date('2016-08-10','yyyy-MM-dd'),'湖南工学院',1001,'123456789',900);
insert into orders values(seq_orders_oid.nextval,to_date('2016-08-10','yyyy-MM-dd'),'湖南工学院',1001,'123456789',90);

insert into evaluate values(seq_evaluate_eid.nextval,1001,100001,'好吃的不的了...',to_date('2015-08-08','yyyy-MM-dd'),4,null);
insert into evaluate values(seq_evaluate_eid.nextval,1001,100002,'好吃的不的了...',to_date('2015-07-08','yyyy-MM-dd'),4,null);
insert into evaluate values(seq_evaluate_eid.nextval,1001,100003,'好吃的不的了...',to_date('2015-08-07','yyyy-MM-dd'),5,null);
insert into evaluate values(seq_evaluate_eid.nextval,1002,100001,'好吃的不的了...',to_date('2015-06-07','yyyy-MM-dd'),4,null);
insert into evaluate values(seq_evaluate_eid.nextval,1002,100002,'好吃的不的了...',to_date('2015-08-08','yyyy-MM-dd'),3,null);
insert into evaluate values(seq_evaluate_eid.nextval,1003,100001,'好吃的不的了...',to_date('2015-06-08','yyyy-MM-dd'),4,null);
insert into evaluate values(seq_evaluate_eid.nextval,1003,100002,'好吃的不的了...',to_date('2015-08-06','yyyy-MM-dd'),2,null);

select * from goods where gid between 100010 and 100018
--按 九大类型分类
select * from(select a.*,rownum rn from(select g.gid,g.gname,g.gprice,g.gpic,g.gdetails,g.gcount,g.ecount,t.tid from goods g,type t where g.tid=t.tid and t.tname='丽人') a where rownum<=10) where rn>0

select g.*,e.econtent,e.edate,e.state,e.epics,u.usname,s.sname from goods g,evaluate e,users u,store s where e.usid=u.usid and e.gid=g.gid and g.sid=s.sid

select a.*,b.tname name  from type a,type b where a.tfid=b.tid

select *  from type
 select g.gid,g.gname,g.gprice,g.gpic,g.gdetails,g.gcount,g.ecount,t.tid from goods g,type t where g.tid=t.tid and t.tname='美食'
select * from(select a.*,rownum rn from(select g.gid,g.gname,g.gprice,g.gpic,g.gdetails,g.gcount,g.ecount,t.tid from goods g,type t where g.tid=t.tid and t.tname='美食') a where 10>=rownum) where rn>0

select g.gid,g.gname,g.gprice,g.gpic,g.gdetails,g.gcount,g.ecount from goods g where gname like '%k%'
SELECT g.gid,g.gname,g.gprice,g.gpic,g.gdetails,g.gcount,g.ecount FROM goods WHERE gname LIKE CONCAT(CONCAT('%', #{text}), '%')

select g.gid,g.gname,g.gprice,g.gpic,g.gdetails,g.gcount,g.ecount FROM goods g order by g.gprice 
