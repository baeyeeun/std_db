SELECT * FROM world.review4;

CREATE TABLE IF NOT EXISTS `codeGroup` (
  `seq` VARCHAR(100) NOT NULL,
  `name` VARCHAR(100) NULL,
  `codeGroupcol` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `code` (
  `code` VARCHAR(100) NOT NULL,
  `name` VARCHAR(100) NULL,
  `codeGroup_seq` VARCHAR(100) NOT NULL,
  INDEX `fk_code_codeGroup1_idx` (`codeGroup_seq` ASC) VISIBLE,
  PRIMARY KEY (`codeGroup_seq`, `code`),
  CONSTRAINT `fk_code_codeGroup1`
    FOREIGN KEY (`codeGroup_seq`)
    REFERENCES `codeGroup` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

drop table code;
drop table codeGroup;

insert into codeGroup (
seq
, name
) values (
'infor002'
, '통신사'
);

select * from codeGroup;
select * from code;

insert into code (
code
, name
, codeGroup_seq
) values (
'3'
, 'KT'
, 'infor002'
);

select
a.seq
, a.name
, b.code
, b.name
from codeGroup a
left join code b on b.codeGroup_seq = a.seq;

create view viewCode as
select
a.seq
, a.name
, b.code
, b.name
from codeGruop a
left join code b on b.codeGroup_seq = a.seq;