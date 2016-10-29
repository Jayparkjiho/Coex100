
CREATE SEQUENCE seq_mem_num;

create table member_tb(
	mem_num number primary key,
	mem_id varchar2(20) unique not null,
	mem_pw varchar2(20) not null,
	mem_sex varchar2(10) not null,
	mem_age number(5) not null,
	mem_phone varchar2(30) not null,
	mem_email varchar2(40) not null
);


create sequence seq_pref_no;

create table CoexPREFERENCE_TB(
   PREFNO number(10) primary key,
   PREF_10 number(10) default 0,
   PREF_20 number(10) default 0,
   PREF_30 number(10) default 0,
   PREF_40 number(10) default 0,
   PREF_MALE number(10) default 0,
   PREF_FEMALE number(10) default 0,
   PREF_CONFERENCE number(10) default 0,
   PREF_SHOPPING number(10) default 0,
   PREF_DATE number(10) default 0,
   PREF_MEAL number(10) default 0,
   PREF_CULTURE number(10) default 0,
   PREF_ETC number(10) default 0,
   PREF_SINGLE number(10) default 0,
   PREF_TWO number(10) default 0,
   PREF_THREE number(10) default 0,
   PREF_FOUR number(10) default 0,
   PREF_FIVE number(10) default 0,
   PREF_TEN number(10) default 0,
   PREF_9_12 number(10) default 0,
   PREF_12_15 number(10) default 0,
   PREF_15_18 number(10) default 0,
   PREF_18_21 number(10) default 0,
   PREF_21 number(10) default 0
  );



create table coexplace_tb (
   place_no number primary key,
   place_name varchar2(100) not null,
   place_nodeno number not null,
   place_info varchar2(2000) not null,
   place_price number,
   place_eval_avg number(5,2) not null,
   place_working_day number not null,
   place_open_time varchar2(10) not null,
   place_close_time varchar2(10) not null,
   place_category varchar2(100) not null,
   place_runtime_min number not null,
   place_runtime_max number not null,
   place_photo_name varchar2(100) not null,
   place_type number not null,
   pref_no number,
   constraint fk_coexplace_tb foreign key(pref_no)
   references coexpreference_tb(pref_no)
   on delete cascade
);

alter table coexplace_tb
modify place_info varchar2(2000);

create table food_tb(
	food_num number primary key,
	food_name varchar2(100),
	food_price varchar2(100),
	food_type varchar2(100),
	place_no number,
	constraint fk_place_tb foreign key(place_no)
	references coexplace_tb(place_no)
	on delete cascade
);

drop table coexpreference_tb;

drop table coexplace_tb;

drop table food_tb;

drop table member;

drop sequence seq_mem_num;

create table sequence seq_food_num;

create sequence seq_place_no;

insert into COEXPREFERENCE_TB (PREF_NO) values(seq_pref_no.nextval)

CREATE TABLE ANSWER_TB(
ANSWER_NO NUMBER(10) PRIMARY KEY,
ANSWER_PURPOSE_NO NUMBER(1) NOT NULL,
ANSWER_DATE DATE NOT NULL,
ANSWER_START_TIME VARCHAR2(7) NOT NULL,
ANSWER_END_TIME VARCHAR2(7) NOT NULL,
ANSWER_SEX NUMBER(1) NOT NULL,
ANSWER_AGE NUMBER(2) NOT NULL,
ANSWER_HEAD_COUNT NUMBER(2) NOT NULL,
ANSWER_TRAFFIC NUMBER(1) NOT NULL,
ANSWER_MEAL NUMBER(1) NOT NULL,
ANSWER_SCOUNT NUMBER(1) NOT NULL,
ANSWER_PURPOSE_START VARCHAR2(7),
ANSWER_PURPOSE_END VARCHAR2(7),
ANSWER_SONE_NODE NUMBER(10),
ANSWER_SONE_START VARCHAR2(7),
ANSWER_SONE_END VARCHAR2(7),
ANSWER_STWO_NODE NUMBER(10),
ANSWER_STWO_START VARCHAR2(7),
ANSWER_STWO_END VARCHAR2(7)
)

DROP table ANSWER_tb;

select * from coexplace_tb

insert into coexplace_tb values(seq_place_no.nextval, '#1', 1,1,1,1,1,1,1,1,1,1,1,1,1)
