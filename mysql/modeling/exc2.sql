use world;

show tables;

-- 주석

-- 테이블 생성
create table member(
seq int,
neme varchar(100),
id varchar(100),
regdate datetime
);

create table member2 (
 seq int,
 name varchar(100),
 id varchar(100),
 regdate datetime
);

-- 테이블 삭제

drop table member2;
drop table member;
drop table member;