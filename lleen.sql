-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.5-10.0.14-MariaDB - mariadb.org binary distribution
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 studen 的数据库结构
DROP DATABASE IF EXISTS `studen`;
CREATE DATABASE IF NOT EXISTS `studen` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `studen`;


-- 导出  表 studen.biaobai 结构
DROP TABLE IF EXISTS `biaobai`;
CREATE TABLE IF NOT EXISTS `biaobai` (
  `id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imgurl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pirce` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introduce` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imgbig` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiftItems` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 正在导出表  studen.biaobai 的数据：~38 rows (大约)
/*!40000 ALTER TABLE `biaobai` DISABLE KEYS */;
REPLACE INTO `biaobai` (`id`, `titel`, `imgurl`, `pirce`, `introduce`, `img1`, `imgbig`, `GiftItems`) VALUES
	('1', '闪烁的爱', 'http://img5.liwuyou.com/images/201608/source_img/3757_P_1472633902699.jpg!pro240.jpg', '128', '爱是捧在手心精心呵护，爱也是想你的时候会心一笑。不要让遇见只留下回忆，爱从来不需要等待。爱心暖手宝随时随地，温暖随行，这个冬日给你不一样的温暖。', './images/page/goods-1-1.jpg,./images/page/goods-1-2.jpg,./images/page/goods-1-3.jpg,./images/page/goods-1-4.jpg,./images/page/goods-1-5.jpg,./images/page/goods-1-6.jpg', './images/page/goods-1-1-big.jpg,./images/page/goods-1-2-big.jpg,./images/page/goods-1-3-big.jpg,./images/page/goods-1-4-big.jpg,./images/page/goods-1-5-big.jpg,./images/page/goods-', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('2', '“盒”你承诺', 'http://img2.liwuyou.com/images/201601/source_img/3739_P_1453884946276.jpg!pro240.jpg', '99', '每个女孩的心中都住着一个没有长大的自己，她会和童话里的小狐狸对话，养着自己的小兔子，遇到自己的小王子，过上幸福的日子', './images/page/goods-1-1.jpg,./images/page/goods-1-2.jpg,./images/page/goods-1-3.jpg,./images/page/goods-1-4.jpg,./images/page/goods-1-5.jpg,./images/page/goods-1-6.jpg', './images/page/goods-1-1-big.jpg,./images/page/goods-1-2-big.jpg,./images/page/goods-1-3-big.jpg,./images/page/goods-1-4-big.jpg,./images/page/goods-1-5-big.jpg,./images/page/goods-1-6-big.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('3', '爱的承诺', 'http://img3.liwuyou.com/images/201609/source_img/3729_P_1473046789632.jpg!pro240.jpg', '138', '夏天解暑，冰淇淋和手持小风扇都是标配哦！多档换风速，纤薄到只有1.8cm，适合女孩子的手握持，逛街.旅行.到沙滩，带上我，夏日更清爽~', './images/page/goods-2-1.jpg,./images/page/goods-2-2.jpg,./images/page/goods-2-3.jpg,./images/page/goods-2-4.jpg,./images/page/goods-2-5.jpg,./images/page/goods-2-6.jpg', './images/page/goods-2-1-big.jpg,./images/page/goods-2-2-big.jpg,./images/page/goods-2-3-big.jpg,./images/page/goods-2-4-big.jpg,./images/page/goods-2-5-big.jpg,./images/page/goods-2-6-big.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('4', '唯爱项链', 'http://img2.liwuyou.com/images/201609/source_img/3706_P_1473049030131.jpg!pro240.jpg', '119', '萌萌的外表，女人的贴心好伙伴，给肌肤每时每刻的滋润，便捷舒适的补水神器。居家旅行，办公室内，随处可用，不仅给肌肤充电还能给手机充电~更有四种色款，等你领养~', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-6.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-6-big.jpg,', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('5', '为你闪亮', 'http://img2.liwuyou.com/images/201505/source_img/3633_P_1430907405031.jpg!pro240.jpg', '48', '幸福的云朵，无忧无虑的岁月，青春的爱恋，那么简单和单纯，就像这个闹钟，简约却实在。曾经的初恋的美好，就像飘在云端的感觉，空气中都充满棉花糖的味道。', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-7.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-7-big.jpg,', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('6', '钟爱一生', 'http://img1.liwuyou.com/images/201609/source_img/3070_P_1473067039465.jpg!pro240.jpg', '108', '银的光芒优雅而耀眼，与蝴蝶的牵绊仿佛在述说着一个动人的爱情故事，持久的光泽，正如恋人的感情永不褪色', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-8.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-8-big.jpg,', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('7', '情比金坚', 'http://img1.liwuyou.com/images/201608/source_img/358_P_1472535224425.JPG!pro240.jpg', '108', '告别光线陷阱，呈现您美好妆容，美好的你，适合这盏时尚低奢简约的化妆镜收纳台灯。 模拟自然光，你本来就很美；贴心小收纳，告别零乱；简约生活，尽在细节。', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-9.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-9-big.jpg,', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('8', '黑白配', 'http://img4.liwuyou.com/images/201704/source_img/3801_P_1491459530368.jpg!pro240.jpg', '98', '可爱的毛绒玩具，还会为你播放音乐，为你增加乐趣，放下生活和工作的压力，沉浸在音乐的世界里，抱着趴趴熊，感受童趣吧', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-10.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-10-big.jpg,', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('9', '四叶草之恋', 'http://img4.liwuyou.com/images/201704/source_img/3801_P_1491459530368.jpg!pro240.jpg', '119', '可充电USB节能灯，触摸台灯音箱。新颖的外形及吊灯的设计，使得整个产品不管是家居还是办公，都会增添不少亮色气氛。全封闭灯罩及灯体设计，防尘，易清洁； 迷你音响，使得整个优雅环境增添音乐氛围~~在每个黑黑的夜晚里，TA都愿意陪伴着你，为你点亮一盏不灭的灯，为你献上一曲动听的音乐，伴你进入甜美的梦乡。', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-11.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-11-big.jpg,', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('10', '音乐枕趴趴熊', 'http://img4.liwuyou.com/images/201609/source_img/3457_P_1475224085358.jpg!pro240.jpg', '99', '设计巧妙，每个零部件都经过精细车工制作。白色钢琴音乐盒清新淡雅，诗情画意。暗藏首饰格，在绒布台里面放上戒指，给TA一份意想不到的惊喜', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-12.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-12-big.jpg,', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('11', '暖暖杯', 'http://img3.liwuyou.com/images/201710/source_img/3417_P_1508300243547.png!pro240.jpg', '188', '转呀转，就真的遇见Mr.right ~花朵的旋转木马音乐盒，打开还有闪闪渐变的LED灯光~让黑夜瞬间从喧哗转成了宁静，在静谧的夜晚，与心爱的人一起漫步田间小道该是多么美好呢！', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-13.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-13-big.jpg,', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('12', '璀璨心情', 'http://img3.liwuyou.com/images/201710/source_img/3417_P_1508300243547.png!pro240.jpg', '138', '总是在你需要的时刻，给你温暖，总是在你需要能量的时候，为你充电，冬天，寒冷不再可怕', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-14.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-14-big.jpg,', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('13', '今生相依', 'http://img2.liwuyou.com/images/201609/source_img/3760_P_1472695926336.jpg!pro240.jpg', '128', '四叶草，第一片叶子代表希望；第二篇叶子代表信心；第三片叶子代表爱情；第四片叶子代表幸运。我想把这四片叶子都送给你，希望你带着希望、怀着信心、收获爱情、然后一辈子永远都那么幸运，跟你喜欢的那个人，永不相离哦！', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-15.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-15-big.jpg,', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('14', '真爱永恒', 'http://img3.liwuyou.com/images/201609/source_img/3738_P_1473151141702.jpg!pro240.jpg', '169', '每一次不经意抬起的手腕，都是你在乎的时光流动，而我们在乎的，就是精准地向你展示每一秒钟，不论场合，不论哪一刻，一份好的礼物，一种男士的风范', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-16.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-16-big.jpg,', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('15', '我们的纪念-七彩', 'http://img3.liwuyou.com/images/201609/source_img/3550_P_1473054216547.jpg!pro240.jpg', '159', '高品质神烦狗doge狗头抱枕，个性3D仿真设计，让你觉得这就是活生生的一头狗啊！在光棍节愚人节拿出来估计会让很多小伙伴都惊呆了哦~它不仅仅是外形创意独特，也是超级实用的靠枕呢，上班时间，看电视坐沙发时候，抱着我们家的神烦狗狗，舒适感又增添不少呀！数码印刷效果，毛绒外套还可拆洗抱枕清洁和长久使用，您，值得拥有~', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-17.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-17-big.jpg,', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('16', '心恋心', 'http://img3.liwuyou.com/images/201609/source_img/3499_P_1473737331307.jpg!pro240.jpg', '139', '简洁方形系列柔抱枕，选材柔软舒适，做工精致、品质优良，内衬太空记忆棉。作为抱枕，靠枕或使用，带给您一份动感及柔和的韵律，极具时尚气息。车用居家两相宜。为TA量身定制一个独一无二的抱枕吧，舒适实用的一份礼物~', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-18.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-18-big.jpg,', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('17', '万法一心', 'http://img4.liwuyou.com/images/201405/source_img/3358_P_1401066487793.jpg!pro240.jpg', '99', '简洁方形系列柔抱枕，选材柔软舒适，做工精致、品质优良，内衬太空记忆棉。作为抱枕，靠枕或使用，带给您一份动感及柔和的韵律，极具时尚气息。车用居家两相宜。为TA量身定制一个独一无二的抱枕吧，舒适实用的一份礼物~', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-19.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-19-big.jpg,', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('18', '七彩的幸福', 'http://img4.liwuyou.com/images/201405/source_img/3358_P_1401066487793.jpg!pro240.jpg', '288', '明明能靠一脸萌来吃饭，偏偏要靠肚里的音响~用音乐帮你减压，用呆萌为你舒畅心情', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-20.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-20-big.jpg,', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('19', '思春潮少女心', 'http://img3.liwuyou.com/images/201608/source_img/311_P_1470039707132.jpg!pro240.jpg', '298', '拥有灵动跑车的曲线机身，优美性感的尾部设计，清洁太阳能省电节能，智能操作模式随心换，双核负离子发生器，强效活性炭甲醛过滤层。', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-21.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-21-big.jpg,', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('20', '星辰大海', 'http://img5.liwuyou.com/images/201803/source_img/3886_P_1522392937239.jpg!pro240.jpg', '299', '萨诺猴音乐枕，是一款吉祥音乐枕。它戴着耳机，神情放松地聆听音乐，造型非常时尚。萨诺猴音乐枕配有高品质扬声器，面料摸起来柔软舒服。抱着它，感受它的柔软、聆听音乐的畅快吧！', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-22.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-22-big.jpg,', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('21', '像素小电视', 'http://img4.liwuyou.com/images/201803/source_img/3884_P_1522383623043.jpg!pro240.jpg', '98', '告别光线陷阱，呈现您美好妆容，美好的你，适合这盏时尚低奢简约的化妆镜收纳台灯。 模拟自然光，你本来就很美；贴心小收纳，告别零乱；简约生活，尽在细节。', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-23.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-23-big.jpg,', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('22', '圣诞节指甲油', 'http://img5.liwuyou.com/images/201803/source_img/3870_P_1520323943559.jpg!pro240.jpg', '87', '“马上有钱”是对好友亲人一个美好祝愿，我们兢兢业业努力工作，就是希望给身边的家人一个更好的未来更优质的生活，身后可以放八枚银币，祝福发大财哟！', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-24.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-24-big.jpg,', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('23', '神秘天蝎', 'http://img3.liwuyou.com/images/201712/source_img/3866_P_1512457418797.jpg!pro240.jpg', '65', '自从有了你，我的思念之花就那么盛开了。牵挂的感觉袭遍我的全身，你不会知道我一个人是多么疯狂的想你，今生只与你相恋相依偎！', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-25.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-25-big.jpg,', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('24', '魅力天枰', 'http://img3.liwuyou.com/images/201711/source_img/3864_P_1510821849407.jpg!pro240.jpg', '77', '想要清凉的夏季，就要檬檬的心情，这是个柠檬的加湿器，隔着屏幕都似乎闻到了柠檬酸酸的香气~~只要一颗柠檬，就能发现生活有多美！', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-26.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-26-big.jpg,', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('25', '处女座-完美主义', 'http://img5.liwuyou.com/images/201711/source_img/3863_P_1509954555929.jpg!pro240.jpg', '88', 'Heart Tea。当你拿起茶杯，杯身上的略微凸出的心形就会闪烁迷人的颜色！蓝色，表示水温为0～35度；橘色，表示水温为35～75度；红色则表示温度在75~90度以上，提醒你慢慢喝，不然会烫口！', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-27.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-27-big.jpg,', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('26', '绅士喵', 'http://img2.liwuyou.com/images/201711/source_img/3862_P_1509955467506.jpg!pro240.jpg', '99', '张小盒来啦~这个冬天是不是格外的冷呢！不管是办公室、家、公交车、地铁一个个的水泥铁皮盒子都冷得让人瑟瑟发抖。不过不用担心，这个冬天四好青年张小盒携手青春爱靓的美眉莉莉盒将给你带来非凡的温暖体验，让你告别寒冷说走就走~', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-28.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-28-big.jpg,', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('27', '张小盒暖手宝', 'http://img4.liwuyou.com/images/201711/source_img/3860_P_1512022170908.jpg!pro240.jpg', '80', '爱是捧在手心精心呵护，爱也是想你的时候会心一笑。不要让遇见只留下回忆，爱从来不需要等待。爱心暖手宝随时随地，温暖随行，这个冬日给你不一样的温暖。', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-29.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-29-big.jpg,', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('28', '梦幻城堡', 'http://img4.liwuyou.com/images/201710/source_img/3855_P_1508301687278.png!pro240.jpg', '134', '明明能靠一脸萌来吃饭，偏偏要靠肚里的音响~用音乐帮你减压，用呆萌为你舒畅心情', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-30.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-30-big.jpg,', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('29', '你是我的小幸运', 'http://img2.liwuyou.com/images/201708/source_img/3850_P_1502330363316.jpg!pro240.jpg', '233', '拥有灵动跑车的曲线机身，优美性感的尾部设计，清洁太阳能省电节能，智能操作模式随心换，双核负离子发生器，强效活性炭甲醛过滤层。', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-31.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-31-big.jpg,', '粉色  直接购买,蓝色  直接购买,黑色 直接购买'),
	('30', '狮子座指甲油', 'http://img5.liwuyou.com/images/201708/source_img/3849_P_1502330333064.jpg!pro240.jpg', '455', '萨诺猴音乐枕，是一款吉祥音乐枕。它戴着耳机，神情放松地聆听音乐，造型非常时尚。萨诺猴音乐枕配有高品质扬声器，面料摸起来柔软舒服。抱着它，感受它的柔软、聆听音乐的畅快吧！', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-32.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-32-big.jpg,', NULL),
	('31', '公主情缘', 'http://img2.liwuyou.com/images/201708/source_img/3848_P_1502329795481.jpg!pro240.jpg', '642', '告别光线陷阱，呈现您美好妆容，美好的你，适合这盏时尚低奢简约的化妆镜收纳台灯。 模拟自然光，你本来就很美；贴心小收纳，告别零乱；简约生活，尽在细节。', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-33.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-33-big.jpg,', NULL),
	('32', '格调时光', 'http://img1.liwuyou.com/images/201707/source_img/3847_P_1501225169455.jpg!pro240.jpg', '312', '“马上有钱”是对好友亲人一个美好祝愿，我们兢兢业业努力工作，就是希望给身边的家人一个更好的未来更优质的生活，身后可以放八枚银币，祝福发大财哟！', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-34.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-34-big.jpg,', NULL),
	('33', '爱的记忆', 'http://img5.liwuyou.com/images/201708/source_img/3846_P_1501667816769.jpg!pro240.jpg', '334', '自从有了你，我的思念之花就那么盛开了。牵挂的感觉袭遍我的全身，你不会知道我一个人是多么疯狂的想你，今生只与你相恋相依偎！', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-35.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-35-big.jpg,', NULL),
	('34', '七彩小精灵', 'http://img1.liwuyou.com/images/201707/source_img/3844_P_1500882493580.jpg!pro240.jpg', '1113', '想要清凉的夏季，就要檬檬的心情，这是个柠檬的加湿器，隔着屏幕都似乎闻到了柠檬酸酸的香气~~只要一颗柠檬，就能发现生活有多美！', NULL, NULL, NULL),
	('35', '你是我的宇宙', 'http://img4.liwuyou.com/images/201707/source_img/3843_P_1500013044408.jpg!pro240.jpg', '67', 'Heart Tea。当你拿起茶杯，杯身上的略微凸出的心形就会闪烁迷人的颜色！蓝色，表示水温为0～35度；橘色，表示水温为35～75度；红色则表示温度在75~90度以上，提醒你慢慢喝，不然会烫口！', NULL, NULL, NULL),
	('36', '爱你的诺言', 'http://img3.liwuyou.com/images/201706/source_img/3841_P_1498448034867.jpg!pro240.jpg', '88', '张小盒来啦~这个冬天是不是格外的冷呢！不管是办公室、家、公交车、地铁一个个的水泥铁皮盒子都冷得让人瑟瑟发抖。不过不用担心，这个冬天四好青年张小盒携手青春爱靓的美眉莉莉盒将给你带来非凡的温暖体验，让你告别寒冷说走就走~', NULL, NULL, NULL),
	('37', NULL, 'http://img1.liwuyou.com/images/201706/source_img/3840_P_1497950638220.jpg!pro240.jpg', NULL, NULL, NULL, NULL, NULL),
	('38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `biaobai` ENABLE KEYS */;


-- 导出  表 studen.goodslist 结构
DROP TABLE IF EXISTS `goodslist`;
CREATE TABLE IF NOT EXISTS `goodslist` (
  `id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imgurl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiftItems` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introduce` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imgbig` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 正在导出表  studen.goodslist 的数据：~29 rows (大约)
/*!40000 ALTER TABLE `goodslist` DISABLE KEYS */;
REPLACE INTO `goodslist` (`id`, `title`, `price`, `imgurl`, `GiftItems`, `type`, `comments`, `introduce`, `img1`, `imgbig`) VALUES
	('1', '人气单品', NULL, 'images/goods/goods.jpg', NULL, 'goods', NULL, NULL, NULL, NULL),
	('2', '萌宠化妆镜', '148', 'images/goods/goods-1.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'goods', NULL, '每个女孩的心中都住着一个没有长大的自己，她会和童话里的小狐狸对话，养着自己的小兔子，遇到自己的小王子，过上幸福的日子', './images/page/goods-1-1.jpg,./images/page/goods-1-2.jpg,./images/page/goods-1-3.jpg,./images/page/goods-1-4.jpg,./images/page/goods-1-5.jpg,./images/page/goods-1-6.jpg', './images/page/goods-1-1-big.jpg,./images/page/goods-1-2-big.jpg,./images/page/goods-1-3-big.jpg,./images/page/goods-1-4-big.jpg,./images/page/goods-1-5-big.jpg,./images/page/goods-1-6-big.jpg'),
	('3', '冰淇淋小风扇', '69', 'images/goods/goods-2.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'goods', NULL, '夏天解暑，冰淇淋和手持小风扇都是标配哦！多档换风速，纤薄到只有1.8cm，适合女孩子的手握持，逛街.旅行.到沙滩，带上我，夏日更清爽~', './images/page/goods-2-1.jpg,./images/page/goods-2-2.jpg,./images/page/goods-2-3.jpg,./images/page/goods-2-4.jpg,./images/page/goods-2-5.jpg,./images/page/goods-2-6.jpg', './images/page/goods-2-1-big.jpg,./images/page/goods-2-2-big.jpg,./images/page/goods-2-3-big.jpg,./images/page/goods-2-4-big.jpg,./images/page/goods-2-5-big.jpg,./images/page/goods-2-6-big.jpg'),
	('4', '绅士喵', '98', 'images/goods/goods-3.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'goods', NULL, '萌萌的外表，女人的贴心好伙伴，给肌肤每时每刻的滋润，便捷舒适的补水神器。居家旅行，办公室内，随处可用，不仅给肌肤充电还能给手机充电~更有四种色款，等你领养~', './images/page/goods-3-1.jpg,./images/page/goods-3-2.jpg,./images/page/goods-3-3.jpg,./images/page/goods-3-4.jpg,./images/page/goods-3-5.jpg,./images/page/goods-3-6.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-6-big.jpg,'),
	('5', '爱恋云端', '99', 'images/goods/goods-4.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'goods1', NULL, '幸福的云朵，无忧无虑的岁月，青春的爱恋，那么简单和单纯，就像这个闹钟，简约却实在。曾经的初恋的美好，就像飘在云端的感觉，空气中都充满棉花糖的味道。', './images/page/goods-2-1.jpg,./images/page/goods-2-2.jpg,./images/page/goods-2-3.jpg,./images/page/goods-2-4.jpg,./images/page/goods-2-5.jpg,./images/page/goods-2-6.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-6-big.jpg,'),
	('6', '蝶恋花', '148', 'images/goods/goods-5.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'goods1', NULL, '银的光芒优雅而耀眼，与蝴蝶的牵绊仿佛在述说着一个动人的爱情故事，持久的光泽，正如恋人的感情永不褪色', './images/page/goods-2-1.jpg,./images/page/goods-2-2.jpg,./images/page/goods-2-3.jpg,./images/page/goods-2-4.jpg,./images/page/goods-2-5.jpg,./images/page/goods-2-6.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-6-big.jpg,'),
	('7', '美好的你', '189', 'images/goods/goods-6.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'goods1', NULL, '告别光线陷阱，呈现您美好妆容，美好的你，适合这盏时尚低奢简约的化妆镜收纳台灯。 模拟自然光，你本来就很美；贴心小收纳，告别零乱；简约生活，尽在细节。', './images/page/goods-2-1.jpg,./images/page/goods-2-2.jpg,./images/page/goods-2-3.jpg,./images/page/goods-2-4.jpg,./images/page/goods-2-5.jpg,./images/page/goods-2-6.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-6-big.jpg,'),
	('8', '音乐枕趴趴熊', '149', 'images/goods/good-1.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'goodBIG', NULL, '可爱的毛绒玩具，还会为你播放音乐，为你增加乐趣，放下生活和工作的压力，沉浸在音乐的世界里，抱着趴趴熊，感受童趣吧', './images/page/goods-2-1.jpg,./images/page/goods-2-2.jpg,./images/page/goods-2-3.jpg,./images/page/goods-2-4.jpg,./images/page/goods-2-5.jpg,./images/page/goods-2-6.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-6-big.jpg,'),
	('9', '酷玩音乐台灯', '79', 'images/goods/good-2.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'good', NULL, '可充电USB节能灯，触摸台灯音箱。新颖的外形及吊灯的设计，使得整个产品不管是家居还是办公，都会增添不少亮色气氛。全封闭灯罩及灯体设计，防尘，易清洁； 迷你音响，使得整个优雅环境增添音乐氛围~~在每个黑黑的夜晚里，TA都愿意陪伴着你，为你点亮一盏不灭的灯，为你献上一曲动听的音乐，伴你进入甜美的梦乡。', './images/page/goods-2-1.jpg,./images/page/goods-2-2.jpg,./images/page/goods-2-3.jpg,./images/page/goods-2-4.jpg,./images/page/goods-2-5.jpg,./images/page/goods-2-6.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-6-big.jpg,'),
	('10', '爱的旋律', '97', 'images/goods/good-3.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'good', NULL, '设计巧妙，每个零部件都经过精细车工制作。白色钢琴音乐盒清新淡雅，诗情画意。暗藏首饰格，在绒布台里面放上戒指，给TA一份意想不到的惊喜', './images/page/goods-2-1.jpg,./images/page/goods-2-2.jpg,./images/page/goods-2-3.jpg,./images/page/goods-2-4.jpg,./images/page/goods-2-5.jpg,./images/page/goods-2-6.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-6-big.jpg,'),
	('11', '花儿多多开', '138', 'images/goods/good-4.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'good', NULL, '转呀转，就真的遇见Mr.right ~花朵的旋转木马音乐盒，打开还有闪闪渐变的LED灯光~让黑夜瞬间从喧哗转成了宁静，在静谧的夜晚，与心爱的人一起漫步田间小道该是多么美好呢！', './images/page/goods-2-1.jpg,./images/page/goods-2-2.jpg,./images/page/goods-2-3.jpg,./images/page/goods-2-4.jpg,./images/page/goods-2-5.jpg,./images/page/goods-2-6.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-6-big.jpg,'),
	('12', '温暖你星窝', '98', 'images/goods/good-5.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'good', NULL, '总是在你需要的时刻，给你温暖，总是在你需要能量的时候，为你充电，冬天，寒冷不再可怕', './images/page/goods-2-1.jpg,./images/page/goods-2-2.jpg,./images/page/goods-2-3.jpg,./images/page/goods-2-4.jpg,./images/page/goods-2-5.jpg,./images/page/goods-2-6.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-6-big.jpg,'),
	('13', '四叶草之恋', '119', 'images/goods/good-6.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'good', NULL, '四叶草，第一片叶子代表希望；第二篇叶子代表信心；第三片叶子代表爱情；第四片叶子代表幸运。我想把这四片叶子都送给你，希望你带着希望、怀着信心、收获爱情、然后一辈子永远都那么幸运，跟你喜欢的那个人，永不相离哦！', './images/page/goods-2-1.jpg,./images/page/goods-2-2.jpg,./images/page/goods-2-3.jpg,./images/page/goods-2-4.jpg,./images/page/goods-2-5.jpg,./images/page/goods-2-6.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-6-big.jpg,'),
	('14', '男神风范', '219', 'images/goods/good-7.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'good', NULL, '每一次不经意抬起的手腕，都是你在乎的时光流动，而我们在乎的，就是精准地向你展示每一秒钟，不论场合，不论哪一刻，一份好的礼物，一种男士的风范', './images/page/goods-2-1.jpg,./images/page/goods-2-2.jpg,./images/page/goods-2-3.jpg,./images/page/goods-2-4.jpg,./images/page/goods-2-5.jpg,./images/page/goods-2-6.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-6-big.jpg,'),
	('15', '神烦狗', '98', 'images/goods/good-8.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'good', NULL, '高品质神烦狗doge狗头抱枕，个性3D仿真设计，让你觉得这就是活生生的一头狗啊！在光棍节愚人节拿出来估计会让很多小伙伴都惊呆了哦~它不仅仅是外形创意独特，也是超级实用的靠枕呢，上班时间，看电视坐沙发时候，抱着我们家的神烦狗狗，舒适感又增添不少呀！数码印刷效果，毛绒外套还可拆洗抱枕清洁和长久使用，您，值得拥有~', './images/page/goods-2-1.jpg,./images/page/goods-2-2.jpg,./images/page/goods-2-3.jpg,./images/page/goods-2-4.jpg,./images/page/goods-2-5.jpg,./images/page/goods-2-6.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-6-big.jpg,'),
	('16', '生日烛光-七彩发光抱枕', '108', 'images/goods/good-9.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'good', NULL, '简洁方形系列柔抱枕，选材柔软舒适，做工精致、品质优良，内衬太空记忆棉。作为抱枕，靠枕或使用，带给您一份动感及柔和的韵律，极具时尚气息。车用居家两相宜。为TA量身定制一个独一无二的抱枕吧，舒适实用的一份礼物~', './images/page/goods-2-1.jpg,./images/page/goods-2-2.jpg,./images/page/goods-2-3.jpg,./images/page/goods-2-4.jpg,./images/page/goods-2-5.jpg,./images/page/goods-2-6.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-6-big.jpg,'),
	('16', '小吉祥', '108', 'images/goods/jixian.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'jixianBIG', NULL, '简洁方形系列柔抱枕，选材柔软舒适，做工精致、品质优良，内衬太空记忆棉。作为抱枕，靠枕或使用，带给您一份动感及柔和的韵律，极具时尚气息。车用居家两相宜。为TA量身定制一个独一无二的抱枕吧，舒适实用的一份礼物~', './images/page/goods-2-1.jpg,./images/page/goods-2-2.jpg,./images/page/goods-2-3.jpg,./images/page/goods-2-4.jpg,./images/page/goods-2-5.jpg,./images/page/goods-2-6.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-6-big.jpg,'),
	('17', '车载净化小卫士', '129', 'images/goods/jixian-1.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'jixian', NULL, '明明能靠一脸萌来吃饭，偏偏要靠肚里的音响~用音乐帮你减压，用呆萌为你舒畅心情', './images/page/goods-2-1.jpg,./images/page/goods-2-2.jpg,./images/page/goods-2-3.jpg,./images/page/goods-2-4.jpg,./images/page/goods-2-5.jpg,./images/page/goods-2-6.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-6-big.jpg,'),
	('18', '美好的你', '239', 'images/goods/jixian-2.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'jixian', NULL, '拥有灵动跑车的曲线机身，优美性感的尾部设计，清洁太阳能省电节能，智能操作模式随心换，双核负离子发生器，强效活性炭甲醛过滤层。', './images/page/goods-2-1.jpg,./images/page/goods-2-2.jpg,./images/page/goods-2-3.jpg,./images/page/goods-2-4.jpg,./images/page/goods-2-5.jpg,./images/page/goods-2-6.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-6-big.jpg,'),
	('19', '马上有梦响', '148', 'images/goods/jixian-3.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'jixian', NULL, '萨诺猴音乐枕，是一款吉祥音乐枕。它戴着耳机，神情放松地聆听音乐，造型非常时尚。萨诺猴音乐枕配有高品质扬声器，面料摸起来柔软舒服。抱着它，感受它的柔软、聆听音乐的畅快吧！', './images/page/goods-2-1.jpg,./images/page/goods-2-2.jpg,./images/page/goods-2-3.jpg,./images/page/goods-2-4.jpg,./images/page/goods-2-5.jpg,./images/page/goods-2-6.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-6-big.jpg,'),
	('20', '今生相依', '189', 'images/goods/jixian-4.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'jixian', NULL, '告别光线陷阱，呈现您美好妆容，美好的你，适合这盏时尚低奢简约的化妆镜收纳台灯。 模拟自然光，你本来就很美；贴心小收纳，告别零乱；简约生活，尽在细节。', './images/page/goods-2-1.jpg,./images/page/goods-2-2.jpg,./images/page/goods-2-3.jpg,./images/page/goods-2-4.jpg,./images/page/goods-2-5.jpg,./images/page/goods-2-6.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-6-big.jpg,'),
	('21', '马上有梦响', '199', 'images/goods/jixian-5.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'jixian', NULL, '“马上有钱”是对好友亲人一个美好祝愿，我们兢兢业业努力工作，就是希望给身边的家人一个更好的未来更优质的生活，身后可以放八枚银币，祝福发大财哟！', './images/page/goods-2-1.jpg,./images/page/goods-2-2.jpg,./images/page/goods-2-3.jpg,./images/page/goods-2-4.jpg,./images/page/goods-2-5.jpg,./images/page/goods-2-6.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-6-big.jpg,'),
	('22', '檬檬的心情', '169', 'images/goods/jixian-6.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'jixian', NULL, '自从有了你，我的思念之花就那么盛开了。牵挂的感觉袭遍我的全身，你不会知道我一个人是多么疯狂的想你，今生只与你相恋相依偎！', './images/page/goods-2-1.jpg,./images/page/goods-2-2.jpg,./images/page/goods-2-3.jpg,./images/page/goods-2-4.jpg,./images/page/goods-2-5.jpg,./images/page/goods-2-6.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-6-big.jpg,'),
	('23', '为你闪亮', '69', 'images/goods/jixian-7.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'jixian', NULL, '想要清凉的夏季，就要檬檬的心情，这是个柠檬的加湿器，隔着屏幕都似乎闻到了柠檬酸酸的香气~~只要一颗柠檬，就能发现生活有多美！', './images/page/goods-2-1.jpg,./images/page/goods-2-2.jpg,./images/page/goods-2-3.jpg,./images/page/goods-2-4.jpg,./images/page/goods-2-5.jpg,./images/page/goods-2-6.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-6-big.jpg,'),
	('25', '爱心感温杯', '132', 'images/goods/jixian-9.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'jixian', NULL, 'Heart Tea。当你拿起茶杯，杯身上的略微凸出的心形就会闪烁迷人的颜色！蓝色，表示水温为0～35度；橘色，表示水温为35～75度；红色则表示温度在75~90度以上，提醒你慢慢喝，不然会烫口！', './images/page/goods-2-1.jpg,./images/page/goods-2-2.jpg,./images/page/goods-2-3.jpg,./images/page/goods-2-4.jpg,./images/page/goods-2-5.jpg,./images/page/goods-2-6.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-6-big.jpg,'),
	('26', '张小盒暖手宝', '148', 'images/goods/comment-1.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'comment', '超级好用，没色差，我在东北晚上0下几度的时候发热相当快，不用调到最大档就够热的了。', '张小盒来啦~这个冬天是不是格外的冷呢！不管是办公室、家、公交车、地铁一个个的水泥铁皮盒子都冷得让人瑟瑟发抖。不过不用担心，这个冬天四好青年张小盒携手青春爱靓的美眉莉莉盒将给你带来非凡的温暖体验，让你告别寒冷说走就走~', './images/page/goods-2-1.jpg,./images/page/goods-2-2.jpg,./images/page/goods-2-3.jpg,./images/page/goods-2-4.jpg,./images/page/goods-2-5.jpg,./images/page/goods-2-6.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-6-big.jpg,'),
	('27', '爱心暖手宝', '199', 'images/goods/comment-2.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'comment', '超级好用，没色差，我在东北晚上0下几度的时候发热相当快，不用调到最大档就够热的了。', '爱是捧在手心精心呵护，爱也是想你的时候会心一笑。不要让遇见只留下回忆，爱从来不需要等待。爱心暖手宝随时随地，温暖随行，这个冬日给你不一样的温暖。', './images/page/goods-2-1.jpg,./images/page/goods-2-2.jpg,./images/page/goods-2-3.jpg,./images/page/goods-2-4.jpg,./images/page/goods-2-5.jpg,./images/page/goods-2-6.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-6-big.jpg,'),
	('28', '杯子', '566', 'images/goods/comment-3.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'comment', '很喜欢，一分钱一分货，，送给对象的礼物，她很高兴，试用了感觉很不错哦，以后就可以。。', NULL, './images/page/goods-2-1.jpg,./images/page/goods-2-2.jpg,./images/page/goods-2-3.jpg,./images/page/goods-2-4.jpg,./images/page/goods-2-5.jpg,./images/page/goods-2-6.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-6-big.jpg,'),
	('29', '音响', '999', 'images/goods/comment-4.jpg', '粉色  直接购买,蓝色  直接购买,黑色 直接购买', 'comment', '已收到！送给男朋友的！男朋友很喜欢呢。他说音效很好 方便携带。最重要的是刻上去的...', NULL, './images/page/goods-2-1.jpg,./images/page/goods-2-2.jpg,./images/page/goods-2-3.jpg,./images/page/goods-2-4.jpg,./images/page/goods-2-5.jpg,./images/page/goods-2-6.jpg', './images/page/goods-3-1-big.jpg,./images/page/goods-3-2-big.jpg,./images/page/goods-3-3-big.jpg,./images/page/goods-3-4-big.jpg,./images/page/goods-3-5-big.jpg,./images/page/goods-3-6-big.jpg,');
/*!40000 ALTER TABLE `goodslist` ENABLE KEYS */;


-- 导出  表 studen.user 结构
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upassword` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 正在导出表  studen.user 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
REPLACE INTO `user` (`id`, `username`, `upassword`) VALUES
	(1, '18778307708', '1234567'),
	(2, '13650324353', 'a7881942'),
	(3, '18866661111', '123456');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


-- 导出  表 studen.userlist 结构
DROP TABLE IF EXISTS `userlist`;
CREATE TABLE IF NOT EXISTS `userlist` (
  `id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT '1',
  `item` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 正在导出表  studen.userlist 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `userlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `userlist` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;