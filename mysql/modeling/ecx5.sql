use world;

CREATE TABLE IF NOT EXISTS `writer` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `book6` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `book6_writer` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `writer_no` INT UNSIGNED NOT NULL,
  `book6_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`),
  INDEX `fk_book6_writer_writer1_idx` (`writer_no` ASC) VISIBLE,
  INDEX `fk_book6_writer_book61_idx` (`book6_no` ASC) VISIBLE,
  CONSTRAINT `fk_book6_writer_writer1`
    FOREIGN KEY (`writer_no`)
    REFERENCES `writer` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_book6_writer_book61`
    FOREIGN KEY (`book6_no`)
    REFERENCES `book6` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

insert into book6(
name
) values (
'html'
);

insert into writer(
name
) values (
'나제'
);

select * from book6;
select * from writer;
select * from book6_writer;


-- 연결 book6과 writer의 연결을 book6_writer로 연결

insert into book6_writer (
book6_no
, writer_no
) values (
3
, 2
);

select
a.no
, a.name
, b.writer_no
from book6 a
left join book6_writer b on b.book6_no = a.no;

select
a.no
, a.name
, b.writer_no
,(select name from writer c where c.no = b.writer_no) as writer_name
from book6 a
left join book6_writer b on b.book6_no = a.no;

-- 번호 이름 작가 순서 이름 나오게 하기
select
a.no
, a.name
, b.writer_no
, c.name
,(select name from writer c where c.no = b.writer_no) as writer_name
from book6 a
left join book6_writer b on b.book6_no = a.no;