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

-- 잊지 말고 꼭 하기
use world;


create table cafe(
seq int,
cafename varchar(100),
tablenum int(100),
chairnum int(100),
adress varchar(150),
area varchar(150),
ceoname varchar(100)
);

drop table cafe;

create table cafe(
seq int,
cafename varchar(100),
tablenum int,
chairnum int,
adress varchar(150),
area varchar(150),
ceoname varchar(100)
);

drop table cafe;

-- 코드성 데이터 : 무조건 int로 넣어야 함

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

-- 데이터 입력

insert into cafe(
seq
,cafename
,tablenum
,chairnum
,adress
,area
,ceoname
) values (
10
,'메머드커피'
,1
,2
,'서울서울쓰'
,1
,'이난리다'
);

-- varchar은 ' 또는 "로 감싼다.
-- int 는 사용하지 않아도 된다.
-- 콤마는 앞쪽을 선호, :는 호불호가 갈림.

-- 데이터 조회

select*from cafe;

-- 3번에 있는 정보 찾기? 검색문
select*from cafe where seq=3;

-- select*from ~ where (보고 싶은 목록)= 몇 번째인지 적으면 해당 데이터만 확인 가능.
-- 여러 개 보고 싶을 시에는 and를 사용해서 나열('스타벅스' and '이백제', '스타벅스이면서 ceoname이 이백제인 사람을 찾기)
-- 여러 개 보고 싶을 시에는 and를 사용해서 나열('스타벅스' or '이백제', '스타벅스이거나 ceoname이 이백제인 사람을 찾기)

-- int일 때면 숫자로 검색 허용

select*from cafe where seq=3;
select*from cafe where area=1;
select*from cafe where name='이백제';
select*from cafe where name='스타벅스' and area=1;
select*from cafe where name='스타벅스' or ceoname='이백제';
-- 둘 중 하나 만족하면

select*from cafe where area > 1;
select*from cafe where area < 2;
select*from cafe where area >= 1;
select*from cafe where area <=1;
select*from cafe where area <> 1;

select*from cafe where name like '%백제';
select*from cafe where name like '이백$';
select*from cafe where name like '이%백제';
