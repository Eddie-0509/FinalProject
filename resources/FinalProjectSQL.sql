--使用team6使用者，建立資料庫"UYY_DB"
use UYY_DB
go

--以下資料表建立區分大小寫--

--台灣縣市表--
create table city(
cityPkId int primary key identity(1,1) not null,
cityName nvarchar(10) not null									--縣市名稱--
)

INSERT INTO city(cityName) values('臺北市');
INSERT INTO city(cityName) values('新北市');
INSERT INTO city(cityName) values('桃園市');
INSERT INTO city(cityName) values('臺中市');
INSERT INTO city(cityName) values('臺南市');
INSERT INTO city(cityName) values('高雄市');
INSERT INTO city(cityName) values('宜蘭縣');
INSERT INTO city(cityName) values('新竹縣');
INSERT INTO city(cityName) values('苗栗縣');
INSERT INTO city(cityName) values('彰化縣');
INSERT INTO city(cityName) values('南投縣');
INSERT INTO city(cityName) values('雲林縣');
INSERT INTO city(cityName) values('嘉義市');
INSERT INTO city(cityName) values('嘉義縣');
INSERT INTO city(cityName) values('屏東縣');
INSERT INTO city(cityName) values('臺東縣');
INSERT INTO city(cityName) values('花蓮縣');
INSERT INTO city(cityName) values('澎湖縣');
INSERT INTO city(cityName) values('基隆市');
INSERT INTO city(cityName) values('新竹市');
INSERT INTO city(cityName) values('金門縣');
INSERT INTO city(cityName) values('連江縣');


--台灣行政區域表--
create table dist(
distPkId int primary key identity(1,1) not null,
cityPkId int references city(cityPkId) not null,
distName nvarchar(20) not null								--行政區名稱--
)
INSERT INTO dist(cityPkId,distName)values(	1	,'中正區');
INSERT INTO dist(cityPkId,distName)values(	1	,'大同區');
INSERT INTO dist(cityPkId,distName)values(	1	,'中山區');
INSERT INTO dist(cityPkId,distName)values(	1	,'松山區');
INSERT INTO dist(cityPkId,distName)values(	1	,'大安區');
INSERT INTO dist(cityPkId,distName)values(	1	,'萬華區');
INSERT INTO dist(cityPkId,distName)values(	1	,'信義區');
INSERT INTO dist(cityPkId,distName)values(	1	,'士林區');
INSERT INTO dist(cityPkId,distName)values(	1	,'北投區');
INSERT INTO dist(cityPkId,distName)values(	1	,'內湖區');
INSERT INTO dist(cityPkId,distName)values(	1	,'南港區');
INSERT INTO dist(cityPkId,distName)values(	1	,'文山區');
INSERT INTO dist(cityPkId,distName)values(	2	,'板橋區');
INSERT INTO dist(cityPkId,distName)values(	2	,'新莊區');
INSERT INTO dist(cityPkId,distName)values(	2	,'中和區');
INSERT INTO dist(cityPkId,distName)values(	2	,'永和區');
INSERT INTO dist(cityPkId,distName)values(	2	,'土城區');
INSERT INTO dist(cityPkId,distName)values(	2	,'樹林區');
INSERT INTO dist(cityPkId,distName)values(	2	,'三峽區');
INSERT INTO dist(cityPkId,distName)values(	2	,'鶯歌區');
INSERT INTO dist(cityPkId,distName)values(	2	,'三重區');
INSERT INTO dist(cityPkId,distName)values(	2	,'蘆洲區');
INSERT INTO dist(cityPkId,distName)values(	2	,'五股區');
INSERT INTO dist(cityPkId,distName)values(	2	,'泰山區');
INSERT INTO dist(cityPkId,distName)values(	2	,'林口區');
INSERT INTO dist(cityPkId,distName)values(	2	,'八里區');
INSERT INTO dist(cityPkId,distName)values(	2	,'淡水區');
INSERT INTO dist(cityPkId,distName)values(	2	,'三芝區');
INSERT INTO dist(cityPkId,distName)values(	2	,'石門區');
INSERT INTO dist(cityPkId,distName)values(	2	,'金山區');
INSERT INTO dist(cityPkId,distName)values(	2	,'萬里區');
INSERT INTO dist(cityPkId,distName)values(	2	,'汐止區');
INSERT INTO dist(cityPkId,distName)values(	2	,'瑞芳區');
INSERT INTO dist(cityPkId,distName)values(	2	,'貢寮區');
INSERT INTO dist(cityPkId,distName)values(	2	,'平溪區');
INSERT INTO dist(cityPkId,distName)values(	2	,'雙溪區');
INSERT INTO dist(cityPkId,distName)values(	2	,'新店區');
INSERT INTO dist(cityPkId,distName)values(	2	,'深坑區');
INSERT INTO dist(cityPkId,distName)values(	2	,'石碇區');
INSERT INTO dist(cityPkId,distName)values(	2	,'坪林區');
INSERT INTO dist(cityPkId,distName)values(	2	,'烏來區');
INSERT INTO dist(cityPkId,distName)values(	3	,'桃園區');
INSERT INTO dist(cityPkId,distName)values(	3	,'中壢區');
INSERT INTO dist(cityPkId,distName)values(	3	,'平鎮區');
INSERT INTO dist(cityPkId,distName)values(	3	,'八德區');
INSERT INTO dist(cityPkId,distName)values(	3	,'楊梅區');
INSERT INTO dist(cityPkId,distName)values(	3	,'蘆竹區');
INSERT INTO dist(cityPkId,distName)values(	3	,'大溪區');
INSERT INTO dist(cityPkId,distName)values(	3	,'龍潭區');
INSERT INTO dist(cityPkId,distName)values(	3	,'龜山區');
INSERT INTO dist(cityPkId,distName)values(	3	,'大園區');
INSERT INTO dist(cityPkId,distName)values(	3	,'觀音區');
INSERT INTO dist(cityPkId,distName)values(	3	,'新屋區');
INSERT INTO dist(cityPkId,distName)values(	3	,'復興區');
INSERT INTO dist(cityPkId,distName)values(	4	,'中區');
INSERT INTO dist(cityPkId,distName)values(	4	,'東區');
INSERT INTO dist(cityPkId,distName)values(	4	,'南區');
INSERT INTO dist(cityPkId,distName)values(	4	,'西區');
INSERT INTO dist(cityPkId,distName)values(	4	,'北區');
INSERT INTO dist(cityPkId,distName)values(	4	,'北屯區');
INSERT INTO dist(cityPkId,distName)values(	4	,'西屯區');
INSERT INTO dist(cityPkId,distName)values(	4	,'南屯區');
INSERT INTO dist(cityPkId,distName)values(	4	,'太平區');
INSERT INTO dist(cityPkId,distName)values(	4	,'大里區');
INSERT INTO dist(cityPkId,distName)values(	4	,'霧峰區');
INSERT INTO dist(cityPkId,distName)values(	4	,'烏日區');
INSERT INTO dist(cityPkId,distName)values(	4	,'豐原區');
INSERT INTO dist(cityPkId,distName)values(	4	,'后里區');
INSERT INTO dist(cityPkId,distName)values(	4	,'石岡區');
INSERT INTO dist(cityPkId,distName)values(	4	,'東勢區');
INSERT INTO dist(cityPkId,distName)values(	4	,'新社區');
INSERT INTO dist(cityPkId,distName)values(	4	,'潭子區');
INSERT INTO dist(cityPkId,distName)values(	4	,'大雅區');
INSERT INTO dist(cityPkId,distName)values(	4	,'神岡區');
INSERT INTO dist(cityPkId,distName)values(	4	,'大肚區');
INSERT INTO dist(cityPkId,distName)values(	4	,'沙鹿區');
INSERT INTO dist(cityPkId,distName)values(	4	,'龍井區');
INSERT INTO dist(cityPkId,distName)values(	4	,'梧棲區');
INSERT INTO dist(cityPkId,distName)values(	4	,'清水區');
INSERT INTO dist(cityPkId,distName)values(	4	,'大甲區');
INSERT INTO dist(cityPkId,distName)values(	4	,'外埔區');
INSERT INTO dist(cityPkId,distName)values(	4	,'大安區');
INSERT INTO dist(cityPkId,distName)values(	4	,'和平區');
INSERT INTO dist(cityPkId,distName)values(	5	,'中西區');
INSERT INTO dist(cityPkId,distName)values(	5	,'東區');
INSERT INTO dist(cityPkId,distName)values(	5	,'南區');
INSERT INTO dist(cityPkId,distName)values(	5	,'北區');
INSERT INTO dist(cityPkId,distName)values(	5	,'安平區');
INSERT INTO dist(cityPkId,distName)values(	5	,'安南區');
INSERT INTO dist(cityPkId,distName)values(	5	,'永康區');
INSERT INTO dist(cityPkId,distName)values(	5	,'歸仁區');
INSERT INTO dist(cityPkId,distName)values(	5	,'新化區');
INSERT INTO dist(cityPkId,distName)values(	5	,'左鎮區');
INSERT INTO dist(cityPkId,distName)values(	5	,'玉井區');
INSERT INTO dist(cityPkId,distName)values(	5	,'楠西區');
INSERT INTO dist(cityPkId,distName)values(	5	,'南化區');
INSERT INTO dist(cityPkId,distName)values(	5	,'仁德區');
INSERT INTO dist(cityPkId,distName)values(	5	,'關廟區');
INSERT INTO dist(cityPkId,distName)values(	5	,'龍崎區');
INSERT INTO dist(cityPkId,distName)values(	5	,'官田區');
INSERT INTO dist(cityPkId,distName)values(	5	,'麻豆區');
INSERT INTO dist(cityPkId,distName)values(	5	,'佳里區');
INSERT INTO dist(cityPkId,distName)values(	5	,'西港區');
INSERT INTO dist(cityPkId,distName)values(	5	,'七股區');
INSERT INTO dist(cityPkId,distName)values(	5	,'將軍區');
INSERT INTO dist(cityPkId,distName)values(	5	,'學甲區');
INSERT INTO dist(cityPkId,distName)values(	5	,'北門區');
INSERT INTO dist(cityPkId,distName)values(	5	,'新營區');
INSERT INTO dist(cityPkId,distName)values(	5	,'後壁區');
INSERT INTO dist(cityPkId,distName)values(	5	,'白河區');
INSERT INTO dist(cityPkId,distName)values(	5	,'東山區');
INSERT INTO dist(cityPkId,distName)values(	5	,'六甲區');
INSERT INTO dist(cityPkId,distName)values(	5	,'下營區');
INSERT INTO dist(cityPkId,distName)values(	5	,'柳營區');
INSERT INTO dist(cityPkId,distName)values(	5	,'鹽水區');
INSERT INTO dist(cityPkId,distName)values(	5	,'善化區');
INSERT INTO dist(cityPkId,distName)values(	5	,'大內區');
INSERT INTO dist(cityPkId,distName)values(	5	,'山上區');
INSERT INTO dist(cityPkId,distName)values(	5	,'新市區');
INSERT INTO dist(cityPkId,distName)values(	5	,'安定區');
INSERT INTO dist(cityPkId,distName)values(	6	,'楠梓區');
INSERT INTO dist(cityPkId,distName)values(	6	,'左營區');
INSERT INTO dist(cityPkId,distName)values(	6	,'鼓山區');
INSERT INTO dist(cityPkId,distName)values(	6	,'三民區');
INSERT INTO dist(cityPkId,distName)values(	6	,'鹽埕區');
INSERT INTO dist(cityPkId,distName)values(	6	,'前金區');
INSERT INTO dist(cityPkId,distName)values(	6	,'新興區');
INSERT INTO dist(cityPkId,distName)values(	6	,'苓雅區');
INSERT INTO dist(cityPkId,distName)values(	6	,'前鎮區');
INSERT INTO dist(cityPkId,distName)values(	6	,'旗津區');
INSERT INTO dist(cityPkId,distName)values(	6	,'小港區');
INSERT INTO dist(cityPkId,distName)values(	6	,'鳳山區');
INSERT INTO dist(cityPkId,distName)values(	6	,'大寮區');
INSERT INTO dist(cityPkId,distName)values(	6	,'鳥松區');
INSERT INTO dist(cityPkId,distName)values(	6	,'林園區');
INSERT INTO dist(cityPkId,distName)values(	6	,'仁武區');
INSERT INTO dist(cityPkId,distName)values(	6	,'大樹區');
INSERT INTO dist(cityPkId,distName)values(	6	,'大社區');
INSERT INTO dist(cityPkId,distName)values(	6	,'岡山區');
INSERT INTO dist(cityPkId,distName)values(	6	,'路竹區');
INSERT INTO dist(cityPkId,distName)values(	6	,'橋頭區');
INSERT INTO dist(cityPkId,distName)values(	6	,'梓官區');
INSERT INTO dist(cityPkId,distName)values(	6	,'彌陀區');
INSERT INTO dist(cityPkId,distName)values(	6	,'永安區');
INSERT INTO dist(cityPkId,distName)values(	6	,'燕巢區');
INSERT INTO dist(cityPkId,distName)values(	6	,'田寮區');
INSERT INTO dist(cityPkId,distName)values(	6	,'阿蓮區');
INSERT INTO dist(cityPkId,distName)values(	6	,'茄萣區');
INSERT INTO dist(cityPkId,distName)values(	6	,'湖內區');
INSERT INTO dist(cityPkId,distName)values(	6	,'旗山區');
INSERT INTO dist(cityPkId,distName)values(	6	,'美濃區');
INSERT INTO dist(cityPkId,distName)values(	6	,'內門區');
INSERT INTO dist(cityPkId,distName)values(	6	,'杉林區');
INSERT INTO dist(cityPkId,distName)values(	6	,'甲仙區');
INSERT INTO dist(cityPkId,distName)values(	6	,'六龜區');
INSERT INTO dist(cityPkId,distName)values(	6	,'茂林區');
INSERT INTO dist(cityPkId,distName)values(	6	,'桃源區');
INSERT INTO dist(cityPkId,distName)values(	6	,'那瑪夏');
INSERT INTO dist(cityPkId,distName)values(	7	,'宜蘭市');
INSERT INTO dist(cityPkId,distName)values(	7	,'頭城鎮');
INSERT INTO dist(cityPkId,distName)values(	7	,'礁溪鄉');
INSERT INTO dist(cityPkId,distName)values(	7	,'壯圍鄉');
INSERT INTO dist(cityPkId,distName)values(	7	,'員山鄉');
INSERT INTO dist(cityPkId,distName)values(	7	,'羅東鎮');
INSERT INTO dist(cityPkId,distName)values(	7	,'蘇澳鎮');
INSERT INTO dist(cityPkId,distName)values(	7	,'五結鄉');
INSERT INTO dist(cityPkId,distName)values(	7	,'三星鄉');
INSERT INTO dist(cityPkId,distName)values(	7	,'冬山鄉');
INSERT INTO dist(cityPkId,distName)values(	7	,'大同鄉');
INSERT INTO dist(cityPkId,distName)values(	7	,'南澳鄉');
INSERT INTO dist(cityPkId,distName)values(	8	,'竹北市');
INSERT INTO dist(cityPkId,distName)values(	8	,'竹東鎮');
INSERT INTO dist(cityPkId,distName)values(	8	,'新埔鎮');
INSERT INTO dist(cityPkId,distName)values(	8	,'關西鎮');
INSERT INTO dist(cityPkId,distName)values(	8	,'湖口鄉');
INSERT INTO dist(cityPkId,distName)values(	8	,'新豐鄉');
INSERT INTO dist(cityPkId,distName)values(	8	,'峨眉鄉');
INSERT INTO dist(cityPkId,distName)values(	8	,'寶山鄉');
INSERT INTO dist(cityPkId,distName)values(	8	,'北埔鄉');
INSERT INTO dist(cityPkId,distName)values(	8	,'芎林鄉');
INSERT INTO dist(cityPkId,distName)values(	8	,'橫山鄉');
INSERT INTO dist(cityPkId,distName)values(	8	,'尖石鄉');
INSERT INTO dist(cityPkId,distName)values(	8	,'五峰鄉');
INSERT INTO dist(cityPkId,distName)values(	9	,'苗栗市');
INSERT INTO dist(cityPkId,distName)values(	9	,'頭份市');
INSERT INTO dist(cityPkId,distName)values(	9	,'竹南鎮');
INSERT INTO dist(cityPkId,distName)values(	9	,'後龍鎮');
INSERT INTO dist(cityPkId,distName)values(	9	,'通霄鎮');
INSERT INTO dist(cityPkId,distName)values(	9	,'苑裡鎮');
INSERT INTO dist(cityPkId,distName)values(	9	,'卓蘭鎮');
INSERT INTO dist(cityPkId,distName)values(	9	,'造橋鄉');
INSERT INTO dist(cityPkId,distName)values(	9	,'西湖鄉');
INSERT INTO dist(cityPkId,distName)values(	9	,'頭屋鄉');
INSERT INTO dist(cityPkId,distName)values(	9	,'公館鄉');
INSERT INTO dist(cityPkId,distName)values(	9	,'銅鑼鄉');
INSERT INTO dist(cityPkId,distName)values(	9	,'三義鄉');
INSERT INTO dist(cityPkId,distName)values(	9	,'大湖鄉');
INSERT INTO dist(cityPkId,distName)values(	9	,'獅潭鄉');
INSERT INTO dist(cityPkId,distName)values(	9	,'三灣鄉');
INSERT INTO dist(cityPkId,distName)values(	9	,'南庄鄉');
INSERT INTO dist(cityPkId,distName)values(	9	,'泰安鄉');
INSERT INTO dist(cityPkId,distName)values(	10,'彰化市');
INSERT INTO dist(cityPkId,distName)values(	10	,'員林市');
INSERT INTO dist(cityPkId,distName)values(	10	,'和美鎮');
INSERT INTO dist(cityPkId,distName)values(	10	,'鹿港鎮');
INSERT INTO dist(cityPkId,distName)values(	10	,'溪湖鎮');
INSERT INTO dist(cityPkId,distName)values(	10	,'二林鎮');
INSERT INTO dist(cityPkId,distName)values(	10	,'田中鎮');
INSERT INTO dist(cityPkId,distName)values(	10	,'北斗鎮');
INSERT INTO dist(cityPkId,distName)values(	10	,'花壇鄉');
INSERT INTO dist(cityPkId,distName)values(	10	,'芬園鄉');
INSERT INTO dist(cityPkId,distName)values(	10	,'大村鄉');
INSERT INTO dist(cityPkId,distName)values(	10	,'永靖鄉');
INSERT INTO dist(cityPkId,distName)values(	10	,'伸港鄉');
INSERT INTO dist(cityPkId,distName)values(	10	,'線西鄉');
INSERT INTO dist(cityPkId,distName)values(	10	,'福興鄉');
INSERT INTO dist(cityPkId,distName)values(	10	,'秀水鄉');
INSERT INTO dist(cityPkId,distName)values(	10	,'埔心鄉');
INSERT INTO dist(cityPkId,distName)values(	10	,'埔鹽鄉');
INSERT INTO dist(cityPkId,distName)values(	10	,'大城鄉');
INSERT INTO dist(cityPkId,distName)values(	10	,'芳苑鄉');
INSERT INTO dist(cityPkId,distName)values(	10	,'竹塘鄉');
INSERT INTO dist(cityPkId,distName)values(	10	,'社頭鄉');
INSERT INTO dist(cityPkId,distName)values(	10	,'二水鄉');
INSERT INTO dist(cityPkId,distName)values(	10	,'田尾鄉');
INSERT INTO dist(cityPkId,distName)values(	10	,'埤頭鄉');
INSERT INTO dist(cityPkId,distName)values(	10	,'溪州鄉');
INSERT INTO dist(cityPkId,distName)values(	11	,'南投市');
INSERT INTO dist(cityPkId,distName)values(	11	,'埔里鎮');
INSERT INTO dist(cityPkId,distName)values(	11	,'草屯鎮');
INSERT INTO dist(cityPkId,distName)values(	11	,'竹山鎮');
INSERT INTO dist(cityPkId,distName)values(	11	,'集集鎮');
INSERT INTO dist(cityPkId,distName)values(	11	,'名間鄉');
INSERT INTO dist(cityPkId,distName)values(	11	,'鹿谷鄉');
INSERT INTO dist(cityPkId,distName)values(	11	,'中寮鄉');
INSERT INTO dist(cityPkId,distName)values(	11	,'魚池鄉');
INSERT INTO dist(cityPkId,distName)values(	11	,'國姓鄉');
INSERT INTO dist(cityPkId,distName)values(	11	,'水里鄉');
INSERT INTO dist(cityPkId,distName)values(	11	,'信義鄉');
INSERT INTO dist(cityPkId,distName)values(	11	,'仁愛鄉');
INSERT INTO dist(cityPkId,distName)values(	12	,'斗六市');
INSERT INTO dist(cityPkId,distName)values(	12	,'斗南鎮');
INSERT INTO dist(cityPkId,distName)values(	12	,'林內鄉');
INSERT INTO dist(cityPkId,distName)values(	12	,'古坑鄉');
INSERT INTO dist(cityPkId,distName)values(	12	,'大埤鄉');
INSERT INTO dist(cityPkId,distName)values(	12	,'莿桐鄉');
INSERT INTO dist(cityPkId,distName)values(	12	,'虎尾鎮');
INSERT INTO dist(cityPkId,distName)values(	12	,'西螺鎮');
INSERT INTO dist(cityPkId,distName)values(	12	,'土庫鎮');
INSERT INTO dist(cityPkId,distName)values(	12	,'褒忠鄉');
INSERT INTO dist(cityPkId,distName)values(	12	,'二崙鄉');
INSERT INTO dist(cityPkId,distName)values(	12	,'崙背鄉');
INSERT INTO dist(cityPkId,distName)values(	12	,'麥寮鄉');
INSERT INTO dist(cityPkId,distName)values(	12	,'臺西鄉');
INSERT INTO dist(cityPkId,distName)values(	12	,'東勢鄉');
INSERT INTO dist(cityPkId,distName)values(	12	,'北港鎮');
INSERT INTO dist(cityPkId,distName)values(	12	,'元長鄉');
INSERT INTO dist(cityPkId,distName)values(	12	,'四湖鄉');
INSERT INTO dist(cityPkId,distName)values(	12	,'口湖鄉');
INSERT INTO dist(cityPkId,distName)values(	12	,'水林鄉');
INSERT INTO dist(cityPkId,distName)values(	13	,'東區');
INSERT INTO dist(cityPkId,distName)values(	13	,'西區');
INSERT INTO dist(cityPkId,distName)values(	14	,'太保市');
INSERT INTO dist(cityPkId,distName)values(	14	,'朴子市');
INSERT INTO dist(cityPkId,distName)values(	14	,'布袋鎮');
INSERT INTO dist(cityPkId,distName)values(	14	,'大林鎮');
INSERT INTO dist(cityPkId,distName)values(	14	,'民雄鄉');
INSERT INTO dist(cityPkId,distName)values(	14	,'溪口鄉');
INSERT INTO dist(cityPkId,distName)values(	14	,'新港鄉');
INSERT INTO dist(cityPkId,distName)values(	14	,'六腳鄉');
INSERT INTO dist(cityPkId,distName)values(	14	,'東石鄉');
INSERT INTO dist(cityPkId,distName)values(	14	,'義竹鄉');
INSERT INTO dist(cityPkId,distName)values(	14	,'鹿草鄉');
INSERT INTO dist(cityPkId,distName)values(	14	,'水上鄉');
INSERT INTO dist(cityPkId,distName)values(	14	,'中埔鄉');
INSERT INTO dist(cityPkId,distName)values(	14	,'竹崎鄉');
INSERT INTO dist(cityPkId,distName)values(	14	,'梅山鄉');
INSERT INTO dist(cityPkId,distName)values(	14	,'番路鄉');
INSERT INTO dist(cityPkId,distName)values(	14	,'大埔鄉');
INSERT INTO dist(cityPkId,distName)values(	14	,'阿里山鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'屏東市');
INSERT INTO dist(cityPkId,distName)values(	15	,'潮州鎮');
INSERT INTO dist(cityPkId,distName)values(	15	,'東港鎮');
INSERT INTO dist(cityPkId,distName)values(	15	,'恆春鎮');
INSERT INTO dist(cityPkId,distName)values(	15	,'萬丹鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'崁頂鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'新園鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'林邊鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'南州鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'琉球鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'枋寮鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'枋山鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'車城鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'滿州鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'高樹鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'九如鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'鹽埔鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'里港鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'內埔鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'竹田鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'長治鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'麟洛鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'萬巒鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'新埤鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'佳冬鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'霧臺鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'泰武鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'瑪家鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'來義鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'春日鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'獅子鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'牡丹鄉');
INSERT INTO dist(cityPkId,distName)values(	15	,'三地門鄉');
INSERT INTO dist(cityPkId,distName)values(	16	,'臺東市');
INSERT INTO dist(cityPkId,distName)values(	16	,'成功鎮');
INSERT INTO dist(cityPkId,distName)values(	16	,'關山鎮');
INSERT INTO dist(cityPkId,distName)values(	16	,'長濱鄉');
INSERT INTO dist(cityPkId,distName)values(	16	,'池上鄉');
INSERT INTO dist(cityPkId,distName)values(	16	,'東河鄉');
INSERT INTO dist(cityPkId,distName)values(	16	,'鹿野鄉');
INSERT INTO dist(cityPkId,distName)values(	16	,'卑南鄉');
INSERT INTO dist(cityPkId,distName)values(	16	,'大武鄉');
INSERT INTO dist(cityPkId,distName)values(	16	,'綠島鄉');
INSERT INTO dist(cityPkId,distName)values(	16	,'太麻里鄉');
INSERT INTO dist(cityPkId,distName)values(	16	,'海端鄉');
INSERT INTO dist(cityPkId,distName)values(	16	,'延平鄉');
INSERT INTO dist(cityPkId,distName)values(	16	,'金峰鄉');
INSERT INTO dist(cityPkId,distName)values(	16	,'達仁鄉');
INSERT INTO dist(cityPkId,distName)values(	16	,'蘭嶼鄉');
INSERT INTO dist(cityPkId,distName)values(	17	,'花蓮市');
INSERT INTO dist(cityPkId,distName)values(	17	,'吉安鄉');
INSERT INTO dist(cityPkId,distName)values(	17	,'壽豐鄉');
INSERT INTO dist(cityPkId,distName)values(	17	,'新城鄉');
INSERT INTO dist(cityPkId,distName)values(	17	,'鳳林鎮');
INSERT INTO dist(cityPkId,distName)values(	17	,'光復鄉');
INSERT INTO dist(cityPkId,distName)values(	17	,'玉里鎮');
INSERT INTO dist(cityPkId,distName)values(	17	,'豐濱鄉');
INSERT INTO dist(cityPkId,distName)values(	17	,'瑞穗鄉');
INSERT INTO dist(cityPkId,distName)values(	17	,'富里鄉');
INSERT INTO dist(cityPkId,distName)values(	17	,'秀林鄉');
INSERT INTO dist(cityPkId,distName)values(	17	,'萬榮鄉');
INSERT INTO dist(cityPkId,distName)values(	17	,'卓溪鄉');
INSERT INTO dist(cityPkId,distName)values(	18	,'馬公市');
INSERT INTO dist(cityPkId,distName)values(	18	,'湖西鄉');
INSERT INTO dist(cityPkId,distName)values(	18	,'白沙鄉');
INSERT INTO dist(cityPkId,distName)values(	18	,'西嶼鄉');
INSERT INTO dist(cityPkId,distName)values(	18	,'望安鄉');
INSERT INTO dist(cityPkId,distName)values(	18	,'七美鄉');
INSERT INTO dist(cityPkId,distName)values(	19	,'仁愛區');
INSERT INTO dist(cityPkId,distName)values(	19	,'中正區');
INSERT INTO dist(cityPkId,distName)values(	19	,'信義區');
INSERT INTO dist(cityPkId,distName)values(	19	,'中山區');
INSERT INTO dist(cityPkId,distName)values(	19	,'安樂區');
INSERT INTO dist(cityPkId,distName)values(	19	,'暖暖區');
INSERT INTO dist(cityPkId,distName)values(	19	,'七堵區');
INSERT INTO dist(cityPkId,distName)values(	20	,'東區');
INSERT INTO dist(cityPkId,distName)values(	20	,'北區');
INSERT INTO dist(cityPkId,distName)values(	20	,'香山區');
INSERT INTO dist(cityPkId,distName)values(	21	,'金城鎮');
INSERT INTO dist(cityPkId,distName)values(	21	,'金湖鎮');
INSERT INTO dist(cityPkId,distName)values(	21	,'金沙鎮');
INSERT INTO dist(cityPkId,distName)values(	21	,'金寧鄉');
INSERT INTO dist(cityPkId,distName)values(	21	,'烈嶼鄉');
INSERT INTO dist(cityPkId,distName)values(	21	,'烏坵鄉');
INSERT INTO dist(cityPkId,distName)values(	22	,'南竿鄉');
INSERT INTO dist(cityPkId,distName)values(	22	,'北竿鄉');
INSERT INTO dist(cityPkId,distName)values(	22	,'莒光鄉');
INSERT INTO dist(cityPkId,distName)values(	22	,'東引鄉');
--會員基本資料--
create table member(
memberPkId int primary key identity(1,1) not null,
memberAccount nvarchar(50)  not null,			--會員信箱當帳號--
memberPwd nvarchar(30) not null,             --會員密碼--
memberIdNumber nvarchar(15) not null,  --會員身分證號--
memberName nvarchar(30) not null,			--會員姓名--
memberAddress nvarchar(200)  not null,	--會員通訊地址--
memberPhone nvarchar(15)  not null,			--會員電話--
memberStatus nvarchar(20)  not null			--會員狀態(是否被鎖權限)--
);


insert into member(memberAccount,memberPwd,memberIdNumber,memberName,memberIdNumber,memberAddress,memberPhone,memberStatus) values('Tanjirou@gmail.com.tw','P@ssw0rd123','F123456789','炭治郎','F111111001','台北市信義區信義路一段1號','0911111111','true');
insert into member(memberAccount,memberPwd,memberIdNumber,memberName,memberIdNumber,memberAddress,memberPhone,memberStatus) values('Nezuko@gmail.com.tw','P@ssw0rd123','A123456789','彌豆子','F222222002','新北市板橋區板橋路一段2號','0922222222','true');
insert into member(memberAccount,memberPwd,memberIdNumber,memberName,memberIdNumber,memberAddress,memberPhone,memberStatus) values('Zenitsu@gmail.com.tw','P@ssw0rd123','B123456789','善逸','F111111003','桃園市桃園區桃園路一段3號','0933333333','true');
insert into member(memberAccount,memberPwd,memberIdNumber,memberName,memberIdNumber,memberAddress,memberPhone,memberStatus) values('Inosuke@gmail.com.tw','P@ssw0rd123','C123456789','伊之助','F111111004','新竹市香山區香山路一段4號','0944444444','false');
insert into member(memberAccount,memberPwd,memberIdNumber,memberName,memberIdNumber,memberAddress,memberPhone,memberStatus) values('Kyoujurou@gmail.com.tw','P@ssw0rd123','D123456789','杏壽郎','F111111005','苗栗縣後龍鎮後龍路一段5號','0955555555','true');
insert into member(memberAccount,memberPwd,memberIdNumber,memberName,memberIdNumber,memberAddress,memberPhone,memberStatus) values('Shinobu@gmail.com.tw','P@ssw0rd123','E123456789','蝴蝶忍','F222222006','台中市西屯區西屯路一段6號','0966666666','false');


--會員初診相關資料--
create table memberDetails(
memeberPkId int references member(memberPkId) not null,		--一對一關聯到會員基本資料ID--
emergercyContact nvarchar(30) not null,							--緊急聯絡人--
emergercyNumber nvarchar(15) not null,							--	緊急連絡電話--
emergercyRelationship nvarchar(10) not null,					--關係欄--
smoke nvarchar(5) not null,													--抽菸史--
betelNut nvarchar(5) not null,												--檳榔史--
diseases nvarchar(100) not null,												--重大疾病--
allergy nvarchar(30) not null,													--過敏原--
surgery nvarchar(50) not null,												--手術史--
);

insert into memberDetails(memeberPkId,emergercyContact,emergercyNumber,emergercyRelationship,smoke,betelNut,diseases,allergy,surgery) values(1,'治郎爸','0911001001','父','true','false','聖母病','','多處骨折手術');
insert into memberDetails(memeberPkId,emergercyContact,emergercyNumber,emergercyRelationship,smoke,betelNut,diseases,allergy,surgery) values(2,'豆子媽','0922002002','母','false','false','','','咬合矯正');
insert into memberDetails(memeberPkId,emergercyContact,emergercyNumber,emergercyRelationship,smoke,betelNut,diseases,allergy,surgery) values(3,'善逸妻','0933003003','配偶','false','true','','','結紮');
insert into memberDetails(memeberPkId,emergercyContact,emergercyNumber,emergercyRelationship,smoke,betelNut,diseases,allergy,surgery) values(4,'之助狗','0944004004','寵物','true','true','神經病','','');
insert into memberDetails(memeberPkId,emergercyContact,emergercyNumber,emergercyRelationship,smoke,betelNut,diseases,allergy,surgery) values(5,'壽郎弟','0955005005','弟弟','true','false','','便當過敏','');
insert into memberDetails(memeberPkId,emergercyContact,emergercyNumber,emergercyRelationship,smoke,betelNut,diseases,allergy,surgery) values(6,'香奈乎','0966006006','徒弟','false','false','','硬幣過敏','');

--診所基本資料--
create table clinic(
clinicPkId int primary key identity(1,1) not null,
clinicAccount nvarchar(30) not null,						--診所帳號--
clinicPwd nvarchar(30) not null,							--診所密碼--
clinicName nvarchar(50) not null,							--診所名稱--
clinicPhone nvarchar(15) not null,						--診所電話--
clinicCity int references city(cityPkId),					--多對一關聯到縣市表--
clinicDist int references dist(distPkId),					--多對一關聯到行政區表--
clinicAddress nvarchar(max) not null,					--診所地址--
clinicLocation nvarchar(100) ,									--診所GPS位址--
clinicStartTime date not null,									--權限開始時間
clinicEndTime date not null,									--權限結束時間
clinicStatus nvarchar(20) not null							--診所權限(未付款/付款/付款但不開放查詢)--
);
insert into clinic(clinicAccount,clinicPwd,clinicName,clinicPhone,clinicCity,clinicDist,clinicAddress,clinicStartTime,clinicEndTime,clinicStatus) values('Shinra@hotmail.com.tw','P@ssw0rd456','神羅牙醫診所','00-000-001',1,1,'遠得要命1','2021/01/01','2021/12/31','false');
insert into clinic(clinicAccount,clinicPwd,clinicName,clinicPhone,clinicCity,clinicDist,clinicAddress,clinicStartTime,clinicEndTime,clinicStatus) values('Yorozuya@hotmail.com.tw','P@ssw0rd456','萬事屋牙醫診所','00-000-002',2,7,'遠得要命2','2021/01/01','2021/12/31','true');
insert into clinic(clinicAccount,clinicPwd,clinicName,clinicPhone,clinicCity,clinicDist,clinicAddress,clinicStartTime,clinicEndTime,clinicStatus) values('Konoha@hotmail.com.tw','P@ssw0rd456','木葉牙醫診所','00-000-003',3,20,'遠得要命3','2021/01/01','2021/12/31','true');


--時間表--
create table timeTable(
timeTablePkId int primary key identity(1,1) not null,
weekdays nvarchar(10),													--周一至周日--
times nvarchar(20),															--開放時間--
);

--醫師資料表--
create table dentist(
clinicPkId int references clinic(clinicPkId) not null,					--多對一關連到診所表--
dentistPkId int primary key identity(1,1) not null,
dentistName nvarchar(30) not null,								--醫師姓名--
dentistImage nvarchar(max) not null,									--醫師照片，無照片後端自動存入預設照片--!!!!!
dentistGender nvarchar(10) not null,							--醫師性別--
);

--醫生經歷表--

--診療項目表--
create table items(
itemPkId int primary key identity(1,1) not null,
itemName nvarchar(50) not null									--診療項目名稱--
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


--診所付費紀錄--只有一欄????
--create table clinicPayment(
--clinicPkId int references clinic(clinicPkId)					--多對一關連到診所--
--);

--醫師專長項目表--
create table dentistItem(
dentistPkId int references dentist(dentistPkId) not null,			--多對一關連到醫師--
itemPkId int references items(itemPkId) not null						--多對一關連到診療項目--
);

--醫師開放約診時間--
create table dentistTime(
dentistPkId int references dentist(dentistPkId) not null,						--多對一關連到醫師--
timeTablePkId int references timeTable(timeTablePkId) not null		--多對一關連到開放預約時間--
);

--預約資料表--
create table appointment(
memeberPkId int references member(memberPkId),								--多對一關連到會員--
clinicPkId int references clinic(clinicPkId) not null,									--多對一關連到診所--
dentistPkId int references dentist(dentistPkId) not null,							--多對一關連到醫師--
patientName nvarchar(20) ,																			--診所主動預約非會員姓名--
patientIdNumber nvarchar(10),																		--診所主動預約非會員身分證--
patientPhone nvarchar(15),																			--診所主動預約非會員電話--
appointDate Date not null,																				--預約日期--
timeTablePkId int references timeTable(timeTablePkId) not null,			--多對一關連到開放約診時間--
itemPkId int references items(itemPkId) not null,										----多對一關連到看診項目--
arrive nvarchar(10),																							--確認是否到診---
memberReply nvarchar(15)																			--是否有回覆會到診--
)


--商城商品--
create table products(
productPkId int primary key identity(1,1) not null,
productName nvarchar(50) not null,									--商品名稱--
productUpdateDate date not null,										--商品新增時間--
productPrice int not null,														--商品價格--
productQuantity int not null,													--商品剩餘數量--
productStatus nvarchar(10) not null,									--商品上架於否--
productImage nvarchar(max) not null,									--圖片路徑/API
productProfile nvarchar not null,											--商品介紹--
productSpec nvarchar(100) not null										--商品規格--
);

insert into products(productName,productUpdateDate,productPrice,productQuantity,productStatus,productImage,productProfile,productSpec) values('【德國百靈Oral-B】iO9微震科技電動牙刷',GETDATE(),12990,30,'上架中','???','【德國百靈Oral-B】iO9微震科技電動牙刷-黑色(微磁電動牙刷)','品牌：歐樂B|品名：ORAL-B iO9 微震科技電動牙刷|顏色:黑|本體尺寸(cm)：18*10*26cm|商品重量(g)：900g|產地：本體-德國');
insert into products(productName,productUpdateDate,productPrice,productQuantity,productStatus,productImage,productProfile,productSpec) values('【國際牌】音波電動牙刷',GETDATE(),7290,30,'上架中','???','【國際牌】年度新品音波電動牙刷(EW-DP54-S/A)+櫸木柄、矽膠餐具五件組','本體尺寸：高23.5 x 寬2.9 x 深3.5cm|重量：110g|電壓：100-240V|充電/使用時間：充電1小時，約可連續使用90分鐘 (水平震動下)/45分鐘(W音波震動下)|附件：攜帶盒*1、刷頭放置架*1|產地: 日本(充電座產地：中國)');
insert into products(productName,productUpdateDate,productPrice,productQuantity,productStatus,productImage,productProfile,productSpec) values('【Philips飛利浦】高效空氣動能牙線機/沖牙機',GETDATE(),3880,30,'上架中','???','【Philips 飛利浦】高效空氣動能牙線機/沖牙機(HX8401/03)','型號：HX8401/03|尺寸：24D x14W x9H (cm)|重量：430g|產地：中國');
insert into products(productName,productUpdateDate,productPrice,productQuantity,productStatus,productImage,productProfile,productSpec) values('【Ora2愛樂齒】微觸感牙刷',GETDATE(),299,30,'上架中','???','【Ora2愛樂齒】me微觸感牙刷6支/盒(超軟毛，顏色隨機出貨)','材質:刷毛:尼龍。刷柄:聚乙烯塑膠。耐熱溫度:60度C|包裝入數:6支/盒|產地:日本');
insert into products(productName,productUpdateDate,productPrice,productQuantity,productStatus,productImage,productProfile,productSpec) values('【舒酸定】多元護理+深層潔淨牙膏',GETDATE(),499,30,'上架中','???','【舒酸定】爆殺8入組牙膏-多元護理120g*6+深層潔淨100g*2','品名:舒酸定長效抗敏-多元護理|規格:120g x6入|用途:幫助保護牙齦健康|保存期限:三年|原產地:泰國');

--折價券歷史紀錄--
create table coupon(
couponPkId int primary key identity(1,1) not null,
couponName nvarchar(20) not null,										--折扣名稱--
couponContext nvarchar(50) not null,									--折扣趴數--
couponCode nvarchar(20) not null,										--折扣碼--
couponStartTime date not null,												--折扣起始時間--
couponEndTime date not null,												--折扣結束時間--
couponStatus nvarchar(15) not null,									--開放權限--
);

--訂單表--
create table orders(
orderPkId int primary key identity(1,1) not null,
memeberPkId int references member(memberPkId),		--多對一關聯到會員
couponPkId int references coupon(couponPkId),				--多對一關連到折價券，一張訂單只許用一種折扣--
totalPayment int,																		--總金額--	
orderStatus nvarchar(30) not null,										--訂單狀態--
shipAddress nvarchar(max) not null										--收件地址--

)

--訂單詳細資料--
create table orderDetails(
orderPkId int references orders(orderPkId),						--多對一關聯到訂單--
productPkId int references products(productPkId),			--多對一關聯到產品--
orderQuantity int,																	--訂購數量--

);




--縣市表資料--

--行政區資料--
