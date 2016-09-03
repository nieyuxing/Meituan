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

--����Ա��
create table admins(
       aid int primary key,
       aname varchar2(20) not null,
       pwd varchar2(20 ) not null 
);
insert into admins values(111,'admin','a');
--�û���
create table users(       
  usid int primary key,   
  usname varchar2(20) not null, 
  uspwd varchar2(20) not null,  
  telnum varchar2(20) ,  --�绰
  email varchar2(30),    --����
  purse number(10,2),             --Ǯ�����
  idcard int,            --���֤����
  text1 varchar2(200),   --�û�ͼƬ
  text2 varchar2(200)    --Ԥ���ֶ�
);

--�̵��
create table store(
	sid int primary key,
    usid int references users(usid),
	sname varchar2(50),
	sdetail varchar2(200)
);

--��Ʒ���ͱ�
create table type(
       tid int primary key,   --����id
       tname varchar2(20),    --������
       tfid int      --������id
);


--��Ʒ��
create table goods(
       gid int primary key,
       gname varchar2(50),    --��Ʒ��
       gprice number(8,2),            --��Ʒ�۸�
       sid int references store(sid),    --��Ʒ��ַ���൱�ڵ�����
       gpic varchar2(50),             --��ƷͼƬ
       gdetails varchar2(20),         --��Ʒ��ϸ
       tid int references type(tid),  --����id
       gcount int,            --��Ʒ��������
       text3 varchar2(50)     --Ԥ���ֶ�
);

--�û���Ʒ��
create table cartgoods(
       usid int references users(usid),  --���ﳵid
       gid int references goods(gid), --��Ʒid
       gnum int,         --��Ʒ����
       cgprice int        --���ﳵ�ܼ�
);
--������
create table orders(
       oid int primary key,
       otime date,        --����ʱ��
       oroom varchar2(100),   --�����ͻ���ַ
       usid int references users(usid),
       telnumber int ,
       status int          --����״̬
);

--���۱�
create table evaluate(
       eid int primary key,
       usid int references users(usid),
       gid int references goods(gid),
       econtent varchar2(200),  --��������
       edate date,              --����ʱ��
       state int  ,              --���۷���1-5
       epics varchar2(100)		--����ͼƬ
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

<<<<<<< HEAD
insert into users values(seq_users_usid.nextval,'张三','a','15931619481','',null,null,'','');
insert into users values(seq_users_usid.nextval,'张四','a','15931619482','',null,null,'','');
insert into users values(seq_users_usid.nextval,'张五','a','15931619483','',null,null,'','');
insert into users values(seq_users_usid.nextval,'张六','a','15931619484','',null,null,'','');
insert into users values(seq_users_usid.nextval,'张七','a','15931619475','',null,null,'','');
insert into users values(seq_users_usid.nextval,'张八','a','15931619486','',null,null,'','');
insert into users values(seq_users_usid.nextval,'张九','a','15931619487','',null,null,'','');
insert into users values(seq_users_usid.nextval,'王五','a','15931619234','',null,null,'','');
insert into users values(seq_users_usid.nextval,'nice','a','15931619254','13218qq.com',null,null,'','');

insert into users values(seq_users_usid.nextval,seq_users_usid.nextval,'a','15931619200','222@163.com',null,null,'','')

=======
insert into users values(seq_users_usid.nextval,'����','a','15931619481','',null,null,'','');
insert into users values(seq_users_usid.nextval,'����','a','15931619482','',null,null,'','');
insert into users values(seq_users_usid.nextval,'����','a','15931619483','',null,null,'','');
insert into users values(seq_users_usid.nextval,'����','a','15931619484','',null,null,'','');
insert into users values(seq_users_usid.nextval,'����','a','15931619475','',null,null,'','');
insert into users values(seq_users_usid.nextval,'�Ű�','a','15931619486','',null,null,'','');
insert into users values(seq_users_usid.nextval,'�ž�','a','15931619487','',null,null,'','');
insert into users values(seq_users_usid.nextval,'����','a','15931619234','',null,null,'','');
>>>>>>> branch 'master' of ssh://git@github.com/nieyuxing/Meituan.git

insert into type values(seq_type_tid.nextval,'��ʳ',0);
insert into type values(seq_type_tid.nextval,'�Ƶ�/��ջ',0);
insert into type values(seq_type_tid.nextval,'��Ӱ/����ѡ��',0);
insert into type values(seq_type_tid.nextval,'KTV',0);
insert into type values(seq_type_tid.nextval,'��������',0);
insert into type values(seq_type_tid.nextval,'�ܱ���/����',0);
insert into type values(seq_type_tid.nextval,'������',0);
insert into type values(seq_type_tid.nextval,'����',0);
insert into type values(seq_type_tid.nextval,'����',0);

insert into type values(seq_type_tid.nextval,'���',110);
insert into type values(seq_type_tid.nextval,'��Ʒ',110);
insert into type values(seq_type_tid.nextval,'С��',110);
insert into type values(seq_type_tid.nextval,'����',110);
insert into type values(seq_type_tid.nextval,'������',110);
insert into type values(seq_type_tid.nextval,'���',110);
insert into type values(seq_type_tid.nextval,'�۲�',110);
insert into type values(seq_type_tid.nextval,'���ֱ���',111);

<<<<<<< HEAD
insert into goods values(seq_goods_gid.nextval,'正新鸡扒','9.00',10001,'null','null',110,0,'');
insert into goods values(seq_goods_gid.nextval,'佳客来牛排','9.00',10001,'null','null',110,0,'');
insert into goods values(seq_goods_gid.nextval,'门客牛排','9.00',10001,'null','null',110,0,'');
insert into goods values(seq_goods_gid.nextval,'健康牛排','9.00',10001,'null','null',110,0,'');
insert into goods values(seq_goods_gid.nextval,'至尊披萨','9.00',10001,'null','null',110,0,'');
=======

insert into goods values(seq_goods_gid.nextval,'���¼���','9.00',10001,'null','null',110,0,'');
insert into goods values(seq_goods_gid.nextval,'�ѿ���ţ��','9.00',10001,'null','null',110,0,'');
insert into goods values(seq_goods_gid.nextval,'�ſ�ţ��','9.00',10001,'null','null',110,0,'');
insert into goods values(seq_goods_gid.nextval,'����ţ��','9.00',10001,'null','null',110,0,'');
insert into goods values(seq_goods_gid.nextval,'��������','9.00',10001,'null','null',110,0,'');
>>>>>>> branch 'master' of ssh://git@github.com/nieyuxing/Meituan.git

insert into store values(seq_store_sid.nextval,'1001','�й�ʳ��������','������������⣬�ṩ���WiFi');
insert into store values(seq_store_sid.nextval,'1001','�й�ʳ��������','������������⣬�ṩ���WiFi');
insert into store values(seq_store_sid.nextval,'1001','�й�ʳ��������','������������⣬�ṩ���WiFi');
insert into store values(seq_store_sid.nextval,'1001','�й�ʳ��������','������������⣬�ṩ���WiFi');
insert into store values(seq_store_sid.nextval,'1001','�й�ʳ��������','������������⣬�ṩ���WiFi');

select a.*,b.tname ftname from type a,type b where a.tfid=b.tid

select * from users where usname='张三' and uspwd ='a'

commit
