--使用team6使用者，建立資料庫"UYY_DB"

--以下資料表建立區分大小寫--

Use UYY_DB
Go

create table city(
cityPkId int primary key identity(1,1),
cityName nvarchar(10) not null unique
);
insert into city(cityName) values('基隆市');
insert into city(cityName) values('台北市');
insert into city(cityName) values('新北市');
insert into city(cityName) values('桃園市');
insert into city(cityName) values('新竹市');
insert into city(cityName) values('新竹縣');
insert into city(cityName) values('苗栗縣');
insert into city(cityName) values('台中市');
insert into city(cityName) values('彰化縣');
insert into city(cityName) values('南投縣');
insert into city(cityName) values('雲林縣');
insert into city(cityName) values('嘉義市');
insert into city(cityName) values('嘉義縣');
insert into city(cityName) values('台南市');
insert into city(cityName) values('高雄市');
insert into city(cityName) values('屏東縣');
insert into city(cityName) values('宜蘭縣');
insert into city(cityName) values('花蓮縣');
insert into city(cityName) values('台東縣');


create table dist(
distPkId int primary key identity(1,1),
cityPkId int references city(cityPkId),
distName nvarchar(10) not null
);
insert into dist(cityPkId,distName) values(1,'中正區');
insert into dist(cityPkId,distName) values(1,'七堵區');
insert into dist(cityPkId,distName) values(1,'暖暖區');
insert into dist(cityPkId,distName) values(1,'仁愛區');
insert into dist(cityPkId,distName) values(1,'中山區');
insert into dist(cityPkId,distName) values(1,'安樂區');
insert into dist(cityPkId,distName) values(1,'信義區');
insert into dist(cityPkId,distName) values(2,'中正區');
insert into dist(cityPkId,distName) values(2,'大同區');
insert into dist(cityPkId,distName) values(2,'中山區');
insert into dist(cityPkId,distName) values(2,'松山區');
insert into dist(cityPkId,distName) values(2,'大安區');
insert into dist(cityPkId,distName) values(2,'萬華區');
insert into dist(cityPkId,distName) values(2,'信義區');
insert into dist(cityPkId,distName) values(2,'士林區');
insert into dist(cityPkId,distName) values(2,'北投區');
insert into dist(cityPkId,distName) values(2,'內湖區');
insert into dist(cityPkId,distName) values(2,'南港區');
insert into dist(cityPkId,distName) values(2,'文山區');
insert into dist(cityPkId,distName) values(3,'板橋區');
insert into dist(cityPkId,distName) values(3,'中和區');
insert into dist(cityPkId,distName) values(3,'永和區');
insert into dist(cityPkId,distName) values(3,'土城區');
insert into dist(cityPkId,distName) values(3,'三峽區');
insert into dist(cityPkId,distName) values(3,'鶯歌區');
insert into dist(cityPkId,distName) values(3,'新莊區');
insert into dist(cityPkId,distName) values(3,'三重區');
insert into dist(cityPkId,distName) values(3,'蘆洲區');
insert into dist(cityPkId,distName) values(3,'五股區');
insert into dist(cityPkId,distName) values(3,'泰山區');
insert into dist(cityPkId,distName) values(3,'林口區');
insert into dist(cityPkId,distName) values(3,'八里區');
insert into dist(cityPkId,distName) values(3,'淡水區');
insert into dist(cityPkId,distName) values(3,'三芝區');
insert into dist(cityPkId,distName) values(3,'石門區');
insert into dist(cityPkId,distName) values(3,'金山區');
insert into dist(cityPkId,distName) values(3,'萬里區');
insert into dist(cityPkId,distName) values(3,'汐止區');
insert into dist(cityPkId,distName) values(3,'瑞芳區');
insert into dist(cityPkId,distName) values(3,'貢寮區');
insert into dist(cityPkId,distName) values(3,'平溪區');
insert into dist(cityPkId,distName) values(3,'雙溪區');
insert into dist(cityPkId,distName) values(3,'新店區');
insert into dist(cityPkId,distName) values(3,'深坑區');
insert into dist(cityPkId,distName) values(3,'石碇區');
insert into dist(cityPkId,distName) values(3,'坪林區');
insert into dist(cityPkId,distName) values(3,'烏來區');
insert into dist(cityPkId,distName) values(4,'桃園區');
insert into dist(cityPkId,distName) values(4,'八德區');
insert into dist(cityPkId,distName) values(4,'龜山區');
insert into dist(cityPkId,distName) values(4,'蘆竹區');
insert into dist(cityPkId,distName) values(4,'大園區');
insert into dist(cityPkId,distName) values(4,'大溪區');
insert into dist(cityPkId,distName) values(4,'中壢區');
insert into dist(cityPkId,distName) values(4,'平鎮區');
insert into dist(cityPkId,distName) values(4,'楊梅區');
insert into dist(cityPkId,distName) values(4,'龍潭區');
insert into dist(cityPkId,distName) values(4,'新屋區');
insert into dist(cityPkId,distName) values(4,'觀音區');
insert into dist(cityPkId,distName) values(4,'復興區');
insert into dist(cityPkId,distName) values(5,'東區');
insert into dist(cityPkId,distName) values(5,'北區');
insert into dist(cityPkId,distName) values(5,'香山區');
insert into dist(cityPkId,distName) values(6,'竹北市');
insert into dist(cityPkId,distName) values(6,'關西鎮');
insert into dist(cityPkId,distName) values(6,'新埔鎮');
insert into dist(cityPkId,distName) values(6,'竹東鎮');
insert into dist(cityPkId,distName) values(6,'湖口鄉');
insert into dist(cityPkId,distName) values(6,'橫山鄉');
insert into dist(cityPkId,distName) values(6,'新豐鄉');
insert into dist(cityPkId,distName) values(6,'芎林鄉');
insert into dist(cityPkId,distName) values(6,'寶山鄉');
insert into dist(cityPkId,distName) values(6,'北埔鄉');
insert into dist(cityPkId,distName) values(6,'峨眉鄉');
insert into dist(cityPkId,distName) values(6,'尖石鄉');
insert into dist(cityPkId,distName) values(6,'五峰鄉');
insert into dist(cityPkId,distName) values(7,'苗栗市');
insert into dist(cityPkId,distName) values(7,'頭份市');
insert into dist(cityPkId,distName) values(7,'苑裡鎮');
insert into dist(cityPkId,distName) values(7,'通霄鎮');
insert into dist(cityPkId,distName) values(7,'竹南鎮');
insert into dist(cityPkId,distName) values(7,'後龍鎮');
insert into dist(cityPkId,distName) values(7,'卓蘭鎮');
insert into dist(cityPkId,distName) values(7,'大湖鄉');
insert into dist(cityPkId,distName) values(7,'公館鄉');
insert into dist(cityPkId,distName) values(7,'銅鑼鄉');
insert into dist(cityPkId,distName) values(7,'南莊鄉');
insert into dist(cityPkId,distName) values(7,'頭屋鄉');
insert into dist(cityPkId,distName) values(7,'三義鄉');
insert into dist(cityPkId,distName) values(7,'西湖鄉');
insert into dist(cityPkId,distName) values(7,'造橋鄉');
insert into dist(cityPkId,distName) values(7,'三灣鄉');
insert into dist(cityPkId,distName) values(7,'獅潭鄉');
insert into dist(cityPkId,distName) values(7,'泰安鄉');
insert into dist(cityPkId,distName) values(8,'中區');
insert into dist(cityPkId,distName) values(8,'東區');
insert into dist(cityPkId,distName) values(8,'南區');
insert into dist(cityPkId,distName) values(8,'西區');
insert into dist(cityPkId,distName) values(8,'北區');
insert into dist(cityPkId,distName) values(8,'北屯區');
insert into dist(cityPkId,distName) values(8,'西屯區');
insert into dist(cityPkId,distName) values(8,'南屯區');
insert into dist(cityPkId,distName) values(8,'太平區');
insert into dist(cityPkId,distName) values(8,'大里區');
insert into dist(cityPkId,distName) values(8,'霧峰區');
insert into dist(cityPkId,distName) values(8,'烏日區');
insert into dist(cityPkId,distName) values(8,'豐原區');
insert into dist(cityPkId,distName) values(8,'后里區');
insert into dist(cityPkId,distName) values(8,'石岡區');
insert into dist(cityPkId,distName) values(8,'東勢區');
insert into dist(cityPkId,distName) values(8,'和平區');
insert into dist(cityPkId,distName) values(8,'新社區');
insert into dist(cityPkId,distName) values(8,'潭子區');
insert into dist(cityPkId,distName) values(8,'大雅區');
insert into dist(cityPkId,distName) values(8,'神岡區');
insert into dist(cityPkId,distName) values(8,'大肚區');
insert into dist(cityPkId,distName) values(8,'沙鹿區');
insert into dist(cityPkId,distName) values(8,'龍井區');
insert into dist(cityPkId,distName) values(8,'梧棲區');
insert into dist(cityPkId,distName) values(8,'清水區');
insert into dist(cityPkId,distName) values(8,'大甲區');
insert into dist(cityPkId,distName) values(8,'外埔區');
insert into dist(cityPkId,distName) values(8,'大安區');
insert into dist(cityPkId,distName) values(9,'彰化市');
insert into dist(cityPkId,distName) values(9,'員林市');
insert into dist(cityPkId,distName) values(9,'鹿港鎮');
insert into dist(cityPkId,distName) values(9,'和美鎮');
insert into dist(cityPkId,distName) values(9,'北斗鎮');
insert into dist(cityPkId,distName) values(9,'溪湖鎮');
insert into dist(cityPkId,distName) values(9,'田中鎮');
insert into dist(cityPkId,distName) values(9,'二林鎮');
insert into dist(cityPkId,distName) values(9,'線西鄉');
insert into dist(cityPkId,distName) values(9,'伸港鄉');
insert into dist(cityPkId,distName) values(9,'福興鄉');
insert into dist(cityPkId,distName) values(9,'秀水鄉');
insert into dist(cityPkId,distName) values(9,'花壇鄉');
insert into dist(cityPkId,distName) values(9,'芬園鄉');
insert into dist(cityPkId,distName) values(9,'大村鄉');
insert into dist(cityPkId,distName) values(9,'埔鹽鄉');
insert into dist(cityPkId,distName) values(9,'埔心鄉');
insert into dist(cityPkId,distName) values(9,'永靖鄉');
insert into dist(cityPkId,distName) values(9,'社頭鄉');
insert into dist(cityPkId,distName) values(9,'二水鄉');
insert into dist(cityPkId,distName) values(9,'田尾鄉');
insert into dist(cityPkId,distName) values(9,'埤頭鄉');
insert into dist(cityPkId,distName) values(9,'芳苑鄉');
insert into dist(cityPkId,distName) values(9,'大城鄉');
insert into dist(cityPkId,distName) values(9,'竹塘鄉');
insert into dist(cityPkId,distName) values(9,'溪州鄉');
insert into dist(cityPkId,distName) values(10,'南投市');
insert into dist(cityPkId,distName) values(10,'草屯鎮');
insert into dist(cityPkId,distName) values(10,'埔里鎮');
insert into dist(cityPkId,distName) values(10,'竹山鎮');
insert into dist(cityPkId,distName) values(10,'集集鎮');
insert into dist(cityPkId,distName) values(10,'名間鄉');
insert into dist(cityPkId,distName) values(10,'鹿谷鄉');
insert into dist(cityPkId,distName) values(10,'中寮鄉');
insert into dist(cityPkId,distName) values(10,'魚池鄉');
insert into dist(cityPkId,distName) values(10,'國姓鄉');
insert into dist(cityPkId,distName) values(10,'水里鄉');
insert into dist(cityPkId,distName) values(10,'信義鄉');
insert into dist(cityPkId,distName) values(10,'仁愛鄉');
insert into dist(cityPkId,distName) values(11,'斗六市');
insert into dist(cityPkId,distName) values(11,'斗南鎮');
insert into dist(cityPkId,distName) values(11,'虎尾鎮');
insert into dist(cityPkId,distName) values(11,'西螺鎮');
insert into dist(cityPkId,distName) values(11,'土庫鎮');
insert into dist(cityPkId,distName) values(11,'北港鎮');
insert into dist(cityPkId,distName) values(11,'古坑鄉');
insert into dist(cityPkId,distName) values(11,'大埤鄉');
insert into dist(cityPkId,distName) values(11,'莿桐鄉');
insert into dist(cityPkId,distName) values(11,'林內鄉');
insert into dist(cityPkId,distName) values(11,'二崙鄉');
insert into dist(cityPkId,distName) values(11,'崙背鄉');
insert into dist(cityPkId,distName) values(11,'麥寮鄉');
insert into dist(cityPkId,distName) values(11,'東勢鄉');
insert into dist(cityPkId,distName) values(11,'褒忠鄉');
insert into dist(cityPkId,distName) values(11,'臺西鄉');
insert into dist(cityPkId,distName) values(11,'元長鄉');
insert into dist(cityPkId,distName) values(11,'四湖鄉');
insert into dist(cityPkId,distName) values(11,'口湖鄉');
insert into dist(cityPkId,distName) values(11,'水林鄉');
insert into dist(cityPkId,distName) values(12,'東區');
insert into dist(cityPkId,distName) values(12,'西區');
insert into dist(cityPkId,distName) values(13,'太保市');
insert into dist(cityPkId,distName) values(13,'朴子市');
insert into dist(cityPkId,distName) values(13,'布袋鎮');
insert into dist(cityPkId,distName) values(13,'大林鎮');
insert into dist(cityPkId,distName) values(13,'民雄鄉');
insert into dist(cityPkId,distName) values(13,'溪口鄉');
insert into dist(cityPkId,distName) values(13,'新港鄉');
insert into dist(cityPkId,distName) values(13,'六腳鄉');
insert into dist(cityPkId,distName) values(13,'東石鄉');
insert into dist(cityPkId,distName) values(13,'義竹鄉');
insert into dist(cityPkId,distName) values(13,'鹿草鄉');
insert into dist(cityPkId,distName) values(13,'水上鄉');
insert into dist(cityPkId,distName) values(13,'中埔鄉');
insert into dist(cityPkId,distName) values(13,'竹崎鄉');
insert into dist(cityPkId,distName) values(13,'梅山鄉');
insert into dist(cityPkId,distName) values(13,'番路鄉');
insert into dist(cityPkId,distName) values(13,'大埔鄉');
insert into dist(cityPkId,distName) values(13,'阿里山鄉');
insert into dist(cityPkId,distName) values(14,'中西區');
insert into dist(cityPkId,distName) values(14,'東區');
insert into dist(cityPkId,distName) values(14,'南區');
insert into dist(cityPkId,distName) values(14,'北區');
insert into dist(cityPkId,distName) values(14,'安平區');
insert into dist(cityPkId,distName) values(14,'新營區');
insert into dist(cityPkId,distName) values(14,'永康區');
insert into dist(cityPkId,distName) values(14,'安南區');
insert into dist(cityPkId,distName) values(14,'仁德區');
insert into dist(cityPkId,distName) values(14,'歸仁區');
insert into dist(cityPkId,distName) values(14,'安定區');
insert into dist(cityPkId,distName) values(14,'新化區');
insert into dist(cityPkId,distName) values(14,'善化區');
insert into dist(cityPkId,distName) values(14,'下營區');
insert into dist(cityPkId,distName) values(14,'新市區');
insert into dist(cityPkId,distName) values(14,'佳里區');
insert into dist(cityPkId,distName) values(14,'西港區');
insert into dist(cityPkId,distName) values(14,'麻豆區');
insert into dist(cityPkId,distName) values(14,'關廟區');
insert into dist(cityPkId,distName) values(14,'鹽水區');
insert into dist(cityPkId,distName) values(14,'白河區');
insert into dist(cityPkId,distName) values(14,'柳營區');
insert into dist(cityPkId,distName) values(14,'後壁區');
insert into dist(cityPkId,distName) values(14,'東山區');
insert into dist(cityPkId,distName) values(14,'六甲區');
insert into dist(cityPkId,distName) values(14,'官田區');
insert into dist(cityPkId,distName) values(14,'大內區');
insert into dist(cityPkId,distName) values(14,'學甲區');
insert into dist(cityPkId,distName) values(14,'七股區');
insert into dist(cityPkId,distName) values(14,'將軍區');
insert into dist(cityPkId,distName) values(14,'北門區');
insert into dist(cityPkId,distName) values(14,'山上區');
insert into dist(cityPkId,distName) values(14,'玉井區');
insert into dist(cityPkId,distName) values(14,'楠西區');
insert into dist(cityPkId,distName) values(14,'南化區');
insert into dist(cityPkId,distName) values(14,'左鎮區');
insert into dist(cityPkId,distName) values(14,'龍崎區');
insert into dist(cityPkId,distName) values(15,'鹽埕區');
insert into dist(cityPkId,distName) values(15,'鼓山區');
insert into dist(cityPkId,distName) values(15,'左營區');
insert into dist(cityPkId,distName) values(15,'楠梓區');
insert into dist(cityPkId,distName) values(15,'三民區');
insert into dist(cityPkId,distName) values(15,'新興區');
insert into dist(cityPkId,distName) values(15,'前金區');
insert into dist(cityPkId,distName) values(15,'苓雅區');
insert into dist(cityPkId,distName) values(15,'前鎮區');
insert into dist(cityPkId,distName) values(15,'旗津區');
insert into dist(cityPkId,distName) values(15,'小港區');
insert into dist(cityPkId,distName) values(15,'鳳山區');
insert into dist(cityPkId,distName) values(15,'林園區');
insert into dist(cityPkId,distName) values(15,'大寮區');
insert into dist(cityPkId,distName) values(15,'大樹區');
insert into dist(cityPkId,distName) values(15,'大社區');
insert into dist(cityPkId,distName) values(15,'仁武區');
insert into dist(cityPkId,distName) values(15,'鳥松區');
insert into dist(cityPkId,distName) values(15,'岡山區');
insert into dist(cityPkId,distName) values(15,'橋頭區');
insert into dist(cityPkId,distName) values(15,'燕巢區');
insert into dist(cityPkId,distName) values(15,'田寮區');
insert into dist(cityPkId,distName) values(15,'阿蓮區');
insert into dist(cityPkId,distName) values(15,'路竹區');
insert into dist(cityPkId,distName) values(15,'湖內區');
insert into dist(cityPkId,distName) values(15,'茄萣區');
insert into dist(cityPkId,distName) values(15,'永安區');
insert into dist(cityPkId,distName) values(15,'彌陀區');
insert into dist(cityPkId,distName) values(15,'梓官區');
insert into dist(cityPkId,distName) values(15,'旗山區');
insert into dist(cityPkId,distName) values(15,'美濃區');
insert into dist(cityPkId,distName) values(15,'六龜區');
insert into dist(cityPkId,distName) values(15,'甲仙區');
insert into dist(cityPkId,distName) values(15,'杉林區');
insert into dist(cityPkId,distName) values(15,'內門區');
insert into dist(cityPkId,distName) values(15,'茂林區');
insert into dist(cityPkId,distName) values(15,'桃源區');
insert into dist(cityPkId,distName) values(15,'那瑪夏區');
insert into dist(cityPkId,distName) values(16,'屏東市');
insert into dist(cityPkId,distName) values(16,'潮州鎮');
insert into dist(cityPkId,distName) values(16,'東港鎮');
insert into dist(cityPkId,distName) values(16,'恆春鎮');
insert into dist(cityPkId,distName) values(16,'萬丹鄉');
insert into dist(cityPkId,distName) values(16,'長治鄉');
insert into dist(cityPkId,distName) values(16,'麟洛鄉');
insert into dist(cityPkId,distName) values(16,'九如鄉');
insert into dist(cityPkId,distName) values(16,'里港鄉');
insert into dist(cityPkId,distName) values(16,'鹽埔鄉');
insert into dist(cityPkId,distName) values(16,'高樹鄉');
insert into dist(cityPkId,distName) values(16,'萬巒鄉');
insert into dist(cityPkId,distName) values(16,'內埔鄉');
insert into dist(cityPkId,distName) values(16,'竹田鄉');
insert into dist(cityPkId,distName) values(16,'新埤鄉');
insert into dist(cityPkId,distName) values(16,'枋寮鄉');
insert into dist(cityPkId,distName) values(16,'新園鄉');
insert into dist(cityPkId,distName) values(16,'崁頂鄉');
insert into dist(cityPkId,distName) values(16,'林邊鄉');
insert into dist(cityPkId,distName) values(16,'南州鄉');
insert into dist(cityPkId,distName) values(16,'佳冬鄉');
insert into dist(cityPkId,distName) values(16,'琉球鄉');
insert into dist(cityPkId,distName) values(16,'車城鄉');
insert into dist(cityPkId,distName) values(16,'滿州鄉');
insert into dist(cityPkId,distName) values(16,'枋山鄉');
insert into dist(cityPkId,distName) values(16,'三地門鄉');
insert into dist(cityPkId,distName) values(16,'霧臺鄉');
insert into dist(cityPkId,distName) values(16,'瑪家鄉');
insert into dist(cityPkId,distName) values(16,'泰武鄉');
insert into dist(cityPkId,distName) values(16,'來義鄉');
insert into dist(cityPkId,distName) values(16,'春日鄉');
insert into dist(cityPkId,distName) values(16,'獅子鄉');
insert into dist(cityPkId,distName) values(16,'牡丹鄉');
insert into dist(cityPkId,distName) values(17,'宜蘭市');
insert into dist(cityPkId,distName) values(17,'羅東鎮');
insert into dist(cityPkId,distName) values(17,'蘇澳鎮');
insert into dist(cityPkId,distName) values(17,'頭城鎮');
insert into dist(cityPkId,distName) values(17,'礁溪鄉');
insert into dist(cityPkId,distName) values(17,'壯圍鄉');
insert into dist(cityPkId,distName) values(17,'員山鄉');
insert into dist(cityPkId,distName) values(17,'冬山鄉');
insert into dist(cityPkId,distName) values(17,'五結鄉');
insert into dist(cityPkId,distName) values(17,'三星鄉');
insert into dist(cityPkId,distName) values(17,'大同鄉');
insert into dist(cityPkId,distName) values(17,'南澳鄉');
insert into dist(cityPkId,distName) values(18,'花蓮市');
insert into dist(cityPkId,distName) values(18,'鳳林鎮');
insert into dist(cityPkId,distName) values(18,'玉里鎮');
insert into dist(cityPkId,distName) values(18,'新城鄉');
insert into dist(cityPkId,distName) values(18,'吉安鄉');
insert into dist(cityPkId,distName) values(18,'壽豐鄉');
insert into dist(cityPkId,distName) values(18,'光復鄉');
insert into dist(cityPkId,distName) values(18,'豐濱鄉');
insert into dist(cityPkId,distName) values(18,'瑞穗鄉');
insert into dist(cityPkId,distName) values(18,'富里鄉');
insert into dist(cityPkId,distName) values(18,'秀林鄉');
insert into dist(cityPkId,distName) values(18,'萬榮鄉');
insert into dist(cityPkId,distName) values(18,'卓溪鄉');
insert into dist(cityPkId,distName) values(19,'臺東市');
insert into dist(cityPkId,distName) values(19,'成功鎮');
insert into dist(cityPkId,distName) values(19,'關山鎮');
insert into dist(cityPkId,distName) values(19,'卑南鄉');
insert into dist(cityPkId,distName) values(19,'大武鄉');
insert into dist(cityPkId,distName) values(19,'太麻里鄉');
insert into dist(cityPkId,distName) values(19,'東河鄉');
insert into dist(cityPkId,distName) values(19,'長濱鄉');
insert into dist(cityPkId,distName) values(19,'鹿野鄉');
insert into dist(cityPkId,distName) values(19,'池上鄉');
insert into dist(cityPkId,distName) values(19,'綠島鄉');
insert into dist(cityPkId,distName) values(19,'延平鄉');
insert into dist(cityPkId,distName) values(19,'海端鄉');
insert into dist(cityPkId,distName) values(19,'達仁鄉');
insert into dist(cityPkId,distName) values(19,'金峰鄉');
insert into dist(cityPkId,distName) values(19,'蘭嶼鄉');


create table member(
memberPkId int primary key identity(1,1),
memberEmail nvarchar(30) not null,
memberPwd nvarchar(30) not null,
memberName nvarchar(30) not null,
memberIdNumber nvarchar(10) not null,
memberAddress nvarchar(50) not null,
memberPhone nvarchar(20) not null,
memberStatus nvarchar(10) not null
);
insert into member(memberEmail,memberPwd,memberName,memberIdNumber,memberAddress,memberPhone,memberStatus) values('Tanjirou@gmail.com.tw','P@ssw0rd123','炭治郎','F111111001','台北市信義區信義路一段1號','0911111111','true');
insert into member(memberEmail,memberPwd,memberName,memberIdNumber,memberAddress,memberPhone,memberStatus) values('Nezuko@gmail.com.tw','P@ssw0rd123','彌豆子','F222222002','新北市板橋區板橋路一段2號','0922222222','true');
insert into member(memberEmail,memberPwd,memberName,memberIdNumber,memberAddress,memberPhone,memberStatus) values('Zenitsu@gmail.com.tw','P@ssw0rd123','善逸','F111111003','桃園市桃園區桃園路一段3號','0933333333','true');
insert into member(memberEmail,memberPwd,memberName,memberIdNumber,memberAddress,memberPhone,memberStatus) values('Inosuke@gmail.com.tw','P@ssw0rd123','伊之助','F111111004','新竹市香山區香山路一段4號','0944444444','false');
insert into member(memberEmail,memberPwd,memberName,memberIdNumber,memberAddress,memberPhone,memberStatus) values('Kyoujurou@gmail.com.tw','P@ssw0rd123','杏壽郎','F111111005','苗栗縣後龍鎮後龍路一段5號','0955555555','true');
insert into member(memberEmail,memberPwd,memberName,memberIdNumber,memberAddress,memberPhone,memberStatus) values('Shinobu@gmail.com.tw','P@ssw0rd123','蝴蝶忍','F222222006','台中市西屯區西屯路一段6號','0966666666','false');


create table memberDetails(
memeberPkId int references member(memberPkId),
emergercyContact nvarchar(30) not null,
emergercyNumber nvarchar(20) not null,
emergercyRelationship nvarchar(10) not null,
smoke nvarchar(10) not null,
betelNut nvarchar(10) not null,
diseases nvarchar(20),
allergy nvarchar(20),
surgery nvarchar(20)
);
insert into memberDetails(memeberPkId,emergercyContact,emergercyNumber,emergercyRelationship,smoke,betelNut,diseases,allergy,surgery) values(1,'治郎爸','0911001001','父','true','false','聖母病','','多處骨折手術');
insert into memberDetails(memeberPkId,emergercyContact,emergercyNumber,emergercyRelationship,smoke,betelNut,diseases,allergy,surgery) values(2,'豆子媽','0922002002','母','false','false','','','咬合矯正');
insert into memberDetails(memeberPkId,emergercyContact,emergercyNumber,emergercyRelationship,smoke,betelNut,diseases,allergy,surgery) values(3,'善逸妻','0933003003','配偶','false','true','','','結紮');
insert into memberDetails(memeberPkId,emergercyContact,emergercyNumber,emergercyRelationship,smoke,betelNut,diseases,allergy,surgery) values(4,'之助狗','0944004004','寵物','true','true','神經病','','');
insert into memberDetails(memeberPkId,emergercyContact,emergercyNumber,emergercyRelationship,smoke,betelNut,diseases,allergy,surgery) values(5,'壽郎弟','0955005005','弟弟','true','false','','便當過敏','');
insert into memberDetails(memeberPkId,emergercyContact,emergercyNumber,emergercyRelationship,smoke,betelNut,diseases,allergy,surgery) values(6,'香奈乎','0966006006','徒弟','false','false','','硬幣過敏','');


create table clinic(
clinicPkId int primary key identity(1,1),
clinicAccount nvarchar(30) not null unique,
clinicPwd nvarchar(30) not null,
clinicName nvarchar(30) not null,
clinicPhone nvarchar(20) not null,
clinicCity int references city(cityPkId),
clinicDist int references dist(distPkId),
clinicAddress nvarchar(50) not null,
--clinicLocation nvarchar(30),
clinicStartTime date not null,
clinicEndTime date not null,
clinicStatus nvarchar(10) not null
);
insert into clinic(clinicAccount,clinicPwd,clinicName,clinicPhone,clinicCity,clinicDist,clinicAddress,clinicStartTime,clinicEndTime,clinicStatus) values('Shinra@hotmail.com.tw','P@ssw0rd456','神羅牙醫診所','00-000-001',1,1,'遠得要命1','2021/01/01','2021/12/31','false');
insert into clinic(clinicAccount,clinicPwd,clinicName,clinicPhone,clinicCity,clinicDist,clinicAddress,clinicStartTime,clinicEndTime,clinicStatus) values('Yorozuya@hotmail.com.tw','P@ssw0rd456','萬事屋牙醫診所','00-000-002',2,7,'遠得要命2','2021/01/01','2021/12/31','true');
insert into clinic(clinicAccount,clinicPwd,clinicName,clinicPhone,clinicCity,clinicDist,clinicAddress,clinicStartTime,clinicEndTime,clinicStatus) values('Konoha@hotmail.com.tw','P@ssw0rd456','木葉牙醫診所','00-000-003',3,20,'遠得要命3','2021/01/01','2021/12/31','true');


create table timeTable(
timeTablePkId int primary Key identity(1,1),
times nvarchar(10),
weekdays nvarchar(10),
);

create table dentist(
clinicPkId int references clinic(clinicPkId),
dentistPkId int primary key identity(1,1),
dentistName nvarchar(30),
dentistImage nvarchar(max),
dentistGender nvarchar(10),
);


create table items(
itemPkId int primary key identity(1,1),
itemName nvarchar(20)
);
insert into items(itemName) values('齬齒');
insert into items(itemName) values('洗牙');
insert into items(itemName) values('牙周病');
insert into items(itemName) values('人工贗復');
insert into items(itemName) values('根管治療');
insert into items(itemName) values('顯微根管');
insert into items(itemName) values('冷光美白');
insert into items(itemName) values('全口矯正');
insert into items(itemName) values('兒童牙科');
insert into items(itemName) values('敏感性牙齒');


--create table clinicPayment(
--clinicPkId int references clinic(clinicPkId)
--);


create table dentistItem(
dentistPkId int references dentist(dentistPkId),
itemPkId int references items(itemPkId)
);

create table dentistTime(
dentistPkId int references dentist(dentistPkId),
timeTablePkId int references timeTable(timeTablePkId)
);

create table appointment(
memeberPkId int references member(memberPkId),
clinicPkId int references clinic(clinicPkId),
dentistPkId int references dentist(dentistPkId),
appointDate Date,
timeTablePkId int references timeTable(timeTablePkId),
itemPkId int references items(itemPkId),
arrive nvarchar(10)
);

create table products(
productPkId int primary key identity(1,1),
productName nvarchar(50),
productUpdateDate date,
productPrice int,
productQuantity int,
productStatus nvarchar(10),
productImage nvarchar ,
productProfile nvarchar(100),
productSpec nvarchar(100)
);

create table coupon(
couponPkId int primary key identity(1,1),
couponContext nvarchar(10),
couponCode nvarchar(10),
couponStartTime date,
couponEndTime date
);

create table orders(
orderPkId int primary key identity(1,1),
memeberPkId int references member(memberPkId),
couponPkId int references coupon(couponPkId),
totalPayment int,
orderStatus nvarchar(10),
shipAddress nvarchar(50)
);

create table orderDetails(
orderPkId int references orders(orderPkId),
productPkId int references products(productPkId),
orderQuantity int
);