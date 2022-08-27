drop database if exists `demo_ssm`;
create database if not exists `demo_ssm` character set 'utf8mb4' collate 'utf8mb4_general_ci';
use `demo_ssm`;

drop table if exists `demo_ssm`.`books`;
create table if not exists `demo_ssm`.`books`
(
    `bookId`     int(8)       not null auto_increment comment '书籍ID',
    primary key (`bookId`),
    `bookName`   varchar(100) not null default '无名' comment '书籍名',
    `bookCounts` int(6)       not null default 0 comment '书籍数量',
    `detail`     varchar(200) not null default '无' comment '书籍描述'
) engine = innodb;