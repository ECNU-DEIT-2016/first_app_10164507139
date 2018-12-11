## 1.0.0

- Initial version, created by Stagehand
  
##第三次作业
- feature1 实现基本随机点名（通过按钮）
- feature2 增加了显示名字的功能
- feature3 增加了显示点名次数的功能
- faeture4 增加了显示所有同学名字的功能
- feature5 增加了点击每个同学列表下面出现详细信息的功能（包括学号和性别）

##第四次作业（服务器）
- 地址：8009
- /users 可以获得随机点名（刷新）
- /users/[:id]，id（0-11），可以获得对应学号的学生名字
- /allnames，可以获得所有学生的名字

##第五次作业（数据库）

- 地址：8002
- /users 可以从数据库获得所有学生的名单
- /users/[:id],可从数据库获得对应学生的名单
- /random，可通过刷新页面从数据库获得随机点名名单
- 建表：CREATE TABLE `example`.`student` (
  `id` INT NOT NULL,
  `stu_id` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `sex` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
- 插入数据：
INSERT INTO `example`.`student` (`id`, `stu_id`, `name`, `sex`) VALUES ('0', '10164507101', 'ldk', 'M');
INSERT INTO `example`.`student` (`id`, `stu_id`, `name`, `sex`) VALUES ('1', '10164507102', 'cy', 'F');
INSERT INTO `example`.`student` (`id`, `stu_id`, `name`, `sex`) VALUES ('2', '10164507105', 'cxr', 'F');
INSERT INTO `example`.`student` (`id`, `stu_id`, `name`, `sex`) VALUES ('3', '10164507110', 'zjy', 'F');
INSERT INTO `example`.`student` (`id`, `stu_id`, `name`, `sex`) VALUES ('4', '10164507116', 'zsy', 'M');
INSERT INTO `example`.`student` (`id`, `stu_id`, `name`, `sex`) VALUES ('5', '10164507119', 'ljy', 'F');
INSERT INTO `example`.`student` (`id`, `stu_id`, `name`, `sex`) VALUES ('6', '10164507121', 'qxy', 'F');
INSERT INTO `example`.`student` (`id`, `stu_id`, `name`, `sex`) VALUES ('7', '10164507124', 'zjx', 'M');
INSERT INTO `example`.`student` (`id`, `stu_id`, `name`, `sex`) VALUES ('8', '10164507127', 'wsr', 'F');
INSERT INTO `example`.`student` (`id`, `stu_id`, `name`, `sex`) VALUES ('9', '10164507136', 'zzh', 'M');
INSERT INTO `example`.`student` (`id`, `stu_id`, `name`, `sex`) VALUES ('10', '10164507138', 'zkx', 'F');
INSERT INTO `example`.`student` (`id`, `stu_id`, `name`, `sex`) VALUES ('11', '10164507139', 'tlw', 'F');

