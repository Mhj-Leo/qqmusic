SET NAMES UTF8;
DROP DATABASE IF EXISTS qq_music;
CREATE DATABASE qq_music CHARSET=UTF8;
USE qq_music;
/*****建立表格****/
CREATE TABLE qq_music_user(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(50),
  upwd  VARCHAR(32),
  email VARCHAR(32),
  phone INT
);
/****首页轮播广告商品****/
CREATE TABLE qq_music_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);
/****首页商品****/
CREATE TABLE qq_music_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  pic VARCHAR(128),
  seq_recommended TINYINT,
  seq_new_arrival TINYINT,
  seq_top_sale TINYINT
);

/******写入数据******/
/************用户表*************/
INSERT INTO qq_music_user VALUES
(null,'tom',md5('123'),"316575809@qq.com","15152457851"),
(null,'mhj',md5('123456'),"316575809@qq.com","15152457851"),
(null,'jerry',md5('123'),"316575809@qq.com","15152457851"),
(null,'haodadi',md5('123456'),"316575809@qq.com","15152457851"),
(null,'wangjingan',md5('123111'),"316575809@qq.com","15152457851"),
(null,'hailang',md5('2222'),"316575809@qq.com","15152457851");
/*首页轮播图 */
INSERT INTO qq_music_index_carousel VALUES
(NULL, 'img/banner-1.png','轮播广告商品1',''),
(NULL, 'img/banner-2.png','轮播广告商品2',''),
(NULL, 'img/banner-3.png','轮播广告商品3',''),
(NULL, 'img/banner-4.png','轮播广告商品4','');
/*首页*/
INSERT INTO qq_music_index_product VALUES
(NULL, '今天你和喜欢的人聊天了吗？','img/index/1.jpg',1, 1, 1),
(NULL, '经典歌手，怀念旧时光','img/index/2.jpg',2, 2, 2),
(NULL, '毕业后才知道，校园恋爱的美好', 'img/index/3.jpg',3, 3, 3),
(NULL, '前半生到处流浪，后半生为你煲汤','img/index/4.jpg',4, 4, 4),
(NULL, ' 所有的失恋，都是在给真爱让路', 'img/index/5.jpg',5, 5, 5),
(NULL, '亲戚面前露一手！K歌金曲大结集！','img/index/6.jpg',6, 6, 6),
(NULL, '但愿人长久，千里共婵娟','img/index/7.jpg',7, 7, 7),
(NULL, '「古典」莫扎特，宇宙最灵动的声音','img/index/8.jpg',8, 8, 8);
