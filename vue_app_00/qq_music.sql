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
CREATE TABLE qq_music_index(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  pic VARCHAR(128),
  seq_recommended TINYINT,
  seq_new_arrival TINYINT,
  seq_top_sale TINYINT
);
CREATE TABLE qq_music_newSong(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  singer VARCHAR(10),
  pic VARCHAR(128),
  seq_recommended TINYINT,
  seq_new_arrival TINYINT,
  seq_top_sale TINYINT
);
CREATE TABLE qq_music_hotSong(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  singer VARCHAR(10),
  pic VARCHAR(128),
  seq_recommended TINYINT,
  seq_new_arrival TINYINT,
  seq_top_sale TINYINT
);
CREATE TABLE qq_music_netSong(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  singer VARCHAR(10),
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
INSERT INTO qq_music_index VALUES
(NULL, '和喜欢的人聊天了吗？','http://musicugc.qianqian.com/ugcdiy/pic/36deb7f44a9c2586f79e2cdd1f4fec6e.jpg@s_1,w_300,h_300',1, 1, 1),
(NULL, '经典歌手，怀念旧时光',"http://musicugc.qianqian.com/ugcdiy/pic/2cb0e25842cb462ef078a2269adf6809.jpg",2, 2, 2),
(NULL, '毕业才知道，校园恋爱的美好', 'http://musicugc.qianqian.com/ugcdiy/pic/cdfc38047a8a7a095c92c91ffc1825e1.jpg',3, 3, 3),
(NULL, '前半生到处流浪，后半生为你煲汤','http://musicugc.qianqian.com/ugcdiy/pic/f2533e1dcded12b3ccade7da424d2fcc.jpg',4, 4, 4),
(NULL, ' 所有的失恋，都是在给真爱让路', 'http://musicugc.qianqian.com/ugcdiy/pic/fb43d1b00d99bf1345273d8c834c9a0d.jpg@s_2,w_346,h_346',5, 5, 5),
(NULL, 'K歌金曲大结集！','http://musicugc.qianqian.com/ugcdiy/pic/2b581f0eedc43cfe477aa72dc927d409.jpg@s_2,w_346,h_346',6, 6, 6),
(NULL, '但愿人长久，千里共婵娟','http://musicugc.qianqian.com/ugcdiy/pic/d599c405439bc9f063f9f8c1347c8d3e.jpg@s_2,w_346,h_346',7, 7, 7),
(NULL, '宇宙最灵动的声音','http://musicugc.cdn.qianqian.com/ugcdiy/pic/f064d5777aba4bc260ef625e5f3b64f2.jpg@s_2,w_346,h_346',8, 8, 8);

INSERT INTO qq_music_newSong VALUES
(NULL, '木偶人','薛之谦',
'http://qukufile2.qianqian.com/data2/pic/3c929c9962fdcd053edac0f330a3189d/662233889/662233889.jpg@s_2,w_60,h_60',1, 1, 1),
(NULL, '兄弟不怀疑',"刘德华/古天乐",
'http://qukufile2.qianqian.com/data2/pic/fcec2e375ad8acad3ce01c9816bb7850/662472868/662472868.jpg@s_2,w_60,h_60',2, 2, 2),
(NULL, '你笑起来真好看 ', '李昕融',
'http://qukufile2.qianqian.com/data2/pic/a980bba76a4548fe658be5921ee15e47/624275663/624275663.jpg@s_2,w_60,h_60',3, 3, 3),
(NULL, '心如止水','潘悦晨',
'http://qukufile2.qianqian.com/data2/pic/ae20ccd3d476cd478811f46c3aa462b1/614044535/614044535.jpg@s_2,w_60,h_60',4, 4, 4),
(NULL, '战场', '沙漠五子',
'http://qukufile2.qianqian.com/data2/pic/46fc0a5ddd9758b1a620ab8b4363c18d/614499546/614499546.jpg@s_2,w_60,h_60',5, 5, 5),
(NULL, '勇士的荣耀','龙梅子',
'http://qukufile2.qianqian.com/data2/pic/e3b6310ecbe403eec3e25a497af16d3d/614133837/614133837.jpg@s_2,w_60,h_60',6, 6, 6);

INSERT INTO qq_music_hotSong VALUES
(NULL, '卡路里','火箭少女',
'http://qukufile2.qianqian.com/data2/pic/8d356491f24692ff802cc49c80f51fee/612356223/612356223.jpg@s_2,w_60,h_60',1, 1, 1),
(NULL, '心如止水',"潘悦晨",
'http://qukufile2.qianqian.com/data2/pic/ae20ccd3d476cd478811f46c3aa462b1/614044535/614044535.jpg@s_2,w_60,h_60',2, 2, 2),
(NULL, '往后余生 ', '马良',
'http://qukufile2.qianqian.com/data2/pic/f53a667bbf3c11df1da0841fd34c4d9d/604568153/604568153.jpg@s_2,w_60,h_60',3, 3, 3),
(NULL, '我的爱','许巍',
'http://qukufile2.qianqian.com/data2/pic/d3856609aa6068f9ae90002cc9cd321e/660133620/660133620.jpg@s_2,w_60,h_60',4, 4, 4),
(NULL, '演员', '薛之谦',
'http://qukufile2.qianqian.com/data2/pic/49e6161afb13e3eda9d1cb4e304561a2/613960871/613960871.jpg@s_2,w_60,h_60',5, 5, 5),
(NULL, '至少还有你','林忆莲',
'http://qukufile2.qianqian.com/data2/pic/015c6c99e1ced5261f624ef20cd7912f/660123395/660123395.jpg@s_2,w_60,h_60',6, 6, 6);

INSERT INTO qq_music_netSong VALUES
(NULL, '勇士的荣耀','龙梅子',
'http://qukufile2.qianqian.com/data2/pic/e3b6310ecbe403eec3e25a497af16d3d/614133837/614133837.jpg@s_2,w_60,h_60',1, 1, 1),
(NULL, '为悦己者容',"崔子格",
'http://qukufile2.qianqian.com/data2/pic/fe8308782dbb1c4daadd3e5716763ecf/613451063/613451063.jpg@s_2,w_60,h_60',2, 2, 2),
(NULL, '至少还有你', '林忆莲',
'http://qukufile2.qianqian.com/data2/pic/015c6c99e1ced5261f624ef20cd7912f/660123395/660123395.jpg@s_2,w_60,h_60',3, 3, 3),
(NULL, '蝶恋花','龙梅子',
'http://qukufile2.qianqian.com/data2/pic/50d95588aa0ecf5e9c0b944148ef6727/613668338/613668338.jpg@s_2,w_60,h_60',4, 4, 4),
(NULL, '都说', '龙梅子',
'http://qukufile2.qianqian.com/data2/pic/e3feb8c1acbc7680dab69f244413bc49/660136668/660136668.jpg@s_2,w_60,h_60',5, 5, 5),
(NULL, '至少还有你','林忆莲',
'http://qukufile2.qianqian.com/data2/pic/015c6c99e1ced5261f624ef20cd7912f/660123395/660123395.jpg@s_2,w_60,h_60',6, 6, 6);