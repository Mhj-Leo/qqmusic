SET NAMES UTF8;
DROP DATABASE IF EXISTS qq_music;
CREATE DATABASE qq_music CHARSET=UTF8;
USE qq_music;
/*****�����****/
CREATE TABLE qq_music_user(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(50),
  upwd  VARCHAR(32),
  email VARCHAR(32),
  phone INT
);
/******���ݵ���******/
/************用户表*************/
INSERT INTO qq_music_user VALUES
(null,'tom',md5('123'),"316575809@qq.com","15152457851"),
(null,'mhj',md5('123456'),"316575809@qq.com","15152457851"),
(null,'jerry',md5('123'),"316575809@qq.com","15152457851"),
(null,'haodadi',md5('123456'),"316575809@qq.com","15152457851"),
(null,'wangjingan',md5('123111'),"316575809@qq.com","15152457851"),
(null,'hailang',md5('2222'),"316575809@qq.com","15152457851");
