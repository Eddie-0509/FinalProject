// 首頁文字自動跳轉動畫
$(document).ready(function(){
    var time=setInterval(autoplay,4000);
    let text=["U YA YI","隨時預約你的牙醫","ユヤイ","歯医者さんをすぐに見つける","U YA YI","Find your dentist"];

    var x=0;
    var y=1;
    function autoplay(){
     $("#fh5co-header h1").eq(0).text(text[x+=2]);
     $("#fh5co-header h1").eq(1).text(text[y+=2]);
     if(x==4&&y==5){
         x=-2;
         y=-1;
     }
    }
 
  //登入modal上方文字動畫
 $(".sign").hover(function(){
     $(this).css("border-bottom"," 2px solid rgba(0, 0, 0, 0.7)");
     $(this).siblings().css("border-bottom","none");
 },function(){
     $(this).css("border-bottom"," 2px solid rgba(196, 189, 189, 0.7)");
     $(this).siblings().css("border-bottom","2px solid rgba(0, 0, 0, 0.7)");
 });

});