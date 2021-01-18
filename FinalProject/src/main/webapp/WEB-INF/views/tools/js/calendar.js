var memberEmail="";
var appointmentID="";
var memberID="";
var patientName="";

//格式化奇怪的日期
	function formatDate(NewDtime) {
	    var dt = new Date(parseInt(NewDtime));
	    var year = dt.getFullYear();
	    var month = dt.getMonth() + 1;
	    month=("0"+month);
	    month=month.substring(month.length-2);
	    var date = dt.getDate();
	    date=("0"+date);
		date=date.substring(date.length-2);
	    return year + "-" + month + "-" + date ;
	}

$(document).ready(function(){
//	var dnl="${DentistNameList}"
	var afterdnl=dnl.substring(1,dnl.length-1);
	var Doctor=afterdnl.split(", ");
	var DocNum = Doctor.length;
//	var dil="${DentistIdList}";
	var afterdil=dil.substring(1,dil.length-1);
	var DoctorId=afterdil.split(", ");
//	let id=[]
//	let title=[]
//	let start=[]
//	let backgroundColor=[]
	let JandayTotal=new Map()
	let FebdayTotal=new Map()
	let d=0
	for (let i=1;i<=31;i++){
		JandayTotal.set(i,0)
	};
//		<c:forEach var="allapplist" items="${AllAppointmentList}" varStatus="vs">
//			id.push("${allapplist.appointmentPkId}")
//			title.push("${allapplist.memberBean.memberName}"+"("+"${allapplist.dentistBean.dentistName}"+")")
//			start.push("${allapplist.appointDate}"+"T"+
//		 			   ("${allapplist.timeTableBean.times}".substring(0,"${allapplist.timeTableBean.times}".length-6))+":00")		
//			if("${allapplist.memberReply}"=="未回覆"){
//		 		backgroundColor.push('#95CACA')
//			}
//			if("${allapplist.memberReply}"=="確定前往"){
//		 		backgroundColor.push('#408080')
//			}
//			d="${allapplist.appointDate}".substring(8);
//			//if()
//			JandayTotal.set(parseInt(d),JandayTotal.get(parseInt(d))+1);
//			
//			//console.log(d+" "+dayTotal.get(parseInt(d)))		
//		</c:forEach>

	for(let i=0;i<title.length;i++){
		allevents.push({id:id[i],title:title[i],start:start[i],backgroundColor:backgroundColor[i]})
	}
	console.log(allevents)
	


	for (let dn=0;dn<DocNum;dn++){
		let DocName=Doctor[dn];
		//迴圈新增行事曆div
		$(".tab-content").append('<div id="tab-'+dn+'"class="tab-pane"><div id="doctor'+dn+'"></div></div>');
		//迴圈新增上面標籤
		$(".nav-tabs").append('<li class=""><a data-toggle="tab" href="#tab-'+dn+'" class="tab'+dn+'">'+Doctor[dn]+'</a></li>');

	}
	//寫不出來QQ 醫師別預設第一個顯示
	// $(".nav-tabs").children("li").eq(0).addClass("active");	
	// $(".nav-tabs").children("li").eq(0).attr("aria-expanded","true")
	// // $("#tab-0").attr("aria-expanded","true");
	// $("#tab-0").addClass("active");
	// $("#tab-0").addClass("tab-pane")
	// $("#doctor0").addClass("fc")
	// $("#doctor0").addClass("fc-unthemed")
	// $("#doctor0").addClass("fc-ltr")
	
	
	
	
	//綁定TAB動態事件，點選TAB抓取該醫生預約資料
	for (let dn=0;dn<DocNum;dn++){
		$('.tab'+dn).on("click",function (e) {
			let hisevent=[];
			e.preventDefault();
			$(this).tab('show');
			$.ajax({
	             url: 'getAppointment',    //url位置
	             type: 'get',
	             async:false,
	             contentType: "application/json",
	             dataType : "JSON",
	             data:{
	            	 dentistId : DoctorId[dn]
	      
	             },//請求方式
	             success: function getresult(result) { 
					 for(let appnum=0;appnum<result.length;appnum++){ 			
	            	 //console.log("data="+result);
	      			 let backgroundColor="";
   			 			if(result[appnum].memberReply=="未回覆"){
   			 				backgroundColor='#81C0C0'
   						}
   						if(result[appnum].memberReply=="確定前往"){
   							backgroundColor='#408080'
   						}
		            	 hisevent.push({id:result[appnum].appointmentPkId,
		            		 			title:result[appnum].memberBean.memberName,
		      			 			    start: formatDate(result[appnum].appointDate)+"T"+
		      			 			           (result[appnum].timeTableBean.times).substring(0,(result[appnum].timeTableBean.times).length-6)+":00",
		      			 			    backgroundColor:backgroundColor
		            	 				})
	             	}
	      				 console.log(hisevent)
	             }
	        });

			$("#doctor"+dn).fullCalendar({
				header: {
					left: 'prev,next today',
					center: 'title',
					right: 'none'
				},
				contentHeight: 500,
				defaultDate: $('#calendar').fullCalendar('today'), // 起始日期
				weekends: true, // 顯示星期六跟星期日
				defaultTimedEventDuration: '00:30:00',
				forceEventDuration: true,
				defaultView: "agendaWeek", 
				minTime: '08:00:00', 
				maxTime: '22:00:00', 
				events: hisevent,
				eventClick:function(event){
					 $('#AppointmentModal').modal();
					 //if (event.id) {
				            console.log(event.id);
				      //}
					 $.ajax({
			             url: 'getAppointmentDetail',    //url位置
			             type: 'get',
			             //async:false,
			             contentType: "application/json",
			             dataType : "JSON",
			             data:{
			            	 appointmentId : event.id
			             },//請求方式
			             success: function (result) { 
							 $("#patientName").text(result.patientName);
							 $("#patientPhone").text(result.patientPhone);
							 $("#dentistName").text(result.dentistName);
							 $("#item").text(result.item);
							 $("#date").text(result.date);
							 $("#time").text(result.time);
							 $("#reply").text(result.reply);
							 appointmentID=event.id;
							 memberEmail=result.email;
							 memberID=result.memberID;
							 patientName=result.patientName;
							 console.log("159="+memberEmail+",APPID:"+appointmentID+",memberID"+memberID+",patientName:"+patientName);
							 
			             }
			        })
			}
		});
	})
	}

	//點選行事曆種類BUTTON，隱藏其他
	$("#monthBut").on("click",function(){
		$("#monthcalendar").css("display","block");
		$("#weekcalendar").css("display","none");
		$("#listcalendar").css("display","none");
		$("#doctorcalendar").css("display","none");
	});
	$("#weekBut").on("click",function(){
		$("#monthcalendar").css("display","none");
		$("#weekcalendar").css("display","inline-block");
		$("#listcalendar").css("display","none");
		$("#doctorcalendar").css("display","none");

	});
	$("#listBut").on("click",function(){
		$("#monthcalendar").css("display","none");
		$("#weekcalendar").css("display","none");
		$("#listcalendar").css("display","block");
		$("#doctorcalendar").css("display","none");
	});
	$("#doctorBut").on("click",function(){
		$("#monthcalendar").css("display","none");
		$("#weekcalendar").css("display","none");
		$("#listcalendar").css("display","none");
		$("#doctorcalendar").css("display","block");
		
	});
	

		//月行事曆
		$( "#monthcalendar" ).fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'none'
			},
			contentHeight: 500,
			defaultDate: $('#calendar').fullCalendar('today'), // 起始日期
			weekends: true, // 顯示星期六跟星期日
			editable: true,  // 啟動拖曳調整日期
			defaultView: "month", 
			minTime: '08:00:00', 
    		maxTime: '22:00:00',
    		dayClick: function(date, jsEvent, view) {
    			  $("#monthcalendar").css("display","none");
    			  $("#listcalendar").css("display","block");
    			  $("#listcalendar").fullCalendar('gotoDate', date);
    			},
			events: [ 
				{
					title: "5",
					start: "2021-01-06",
				},	
			]
		});

		//周行事曆
		$("#weekcalendar").fullCalendar({
			
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'none'
			},
			contentHeight: 500,
			defaultDate: $('#calendar').fullCalendar('today'), // 起始日期
			weekends: true, // 顯示星期六跟星期日
			editable: true,  // 啟動拖曳調整日期
			defaultView: "agendaWeek",
			defaultTimedEventDuration: '00:30:00',
			forceEventDuration: true,
			minTime: '08:00:00', 
    		maxTime: '22:00:00', 
			events: [ 
// 				for(let d=1;d<=31;d++){
// 					{title:dayTotal.get(parseInt(d))
// 					 start:
// 					}
// 				}
			]
		});

		//日清單
		$("#listcalendar").fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'none'
			},
			contentHeight: 500,
			defaultDate: $('#calendar').fullCalendar('today'), // 起始日期
			weekends: true, // 顯示星期六跟星期日
			editable: true,  // 啟動拖曳調整日期
			defaultView: "listDay", 
			defaultTimedEventDuration: '00:30:00',
			forceEventDuration: true,
			minTime: '08:00:00', 
    		maxTime: '22:00:00', 
			events: allevents,
			eventClick:function(event){
				 $('#AppointmentModal').modal();						 
				 $.ajax({
		             url: 'getAppointmentDetail',    //url位置
		             type: 'get',
		             async:false,
		             contentType: "application/json",
		             dataType : "JSON",
		             data:{
		            	 appointmentId : event.id
		             },//請求方式
		             success: function (result) {
		             	 $("#patientName").text(result.patientName);
						 $("#patientPhone").text(result.patientPhone);
						 $("#dentistName").text(result.dentistName);
						 $("#item").text(result.item);
						 $("#date").text(result.date);
						 $("#time").text(result.time);
						 $("#reply").text(result.reply);
						 memberEmail=result.email;
						 appointmentID=event.id;
						 memberID=result.memberID;
						 patientName=result.patientName;
						 console.log("292="+memberEmail+",APPID:"+appointmentID+",memberID"+memberID+",patientName:"+patientName);
		             }
		        })
			}		             
		});
	
	console.log("298="+memberEmail+",APPID:"+appointmentID+",memberID"+memberID+",patientName:"+patientName);
	
//	$("#queryAppointment").on("click",function(){
//		$.ajax({
//             url: 'queryAppointment',    //url位置
//             type: 'get',
//             async:false,
//             contentType: "application/json",
//             dataType : "JSON",
//             data:{
//            	 IdNumber : $("#IdNumberToQuery").val()
//             },//請求方式
//             success: function (result) {
//             	 $("#qmodalTitle").text(result[0].memberBean.memberName+"的預約紀錄");
//             	 $("#qmodalBody").html('<table id="queryTable"><thead><tr><th>預約日期</th><th>預約時間</th><th>預約醫師</th><th>預約項目</th></tr></thead><tbody></tbody></table>')
//				 $("#queryTable tbody").append('<tr><td>'+formatDate(result[0].appointDate)+'</td><td>'+result[0].timeTableBean.times+'</td><td>'+result[0].dentistBean.dentistName+'</td><td>'+result[0].itemBean.itemName+'</td></tr>')
//				 for(let i=1;i<result.length;i++){
//				 	$("#queryTable tr:last").after('<tr><td>'+formatDate(result[i].appointDate)+'</td><td>'+result[i].timeTableBean.times+'</td><td>'+result[i].dentistBean.dentistName+'</td><td>'+result[i].itemBean.itemName+'</td></tr>')
//				 }
//				 $("#queryAppointment").remove();
//				 console.log(result)
//				 
//             },
//             error: function(){
//             	$("#qmodalBody").text("查無資料")
//             	$("#queryAppointment").remove();
//             }
//             
//        })
//	})
	
	$("#queryBut").on("click",function(){
			   $("#qmodalTitle").text("查詢預約紀錄");
	 		   $("#qmodalBody").html("請輸入電話號碼："+'<input type="text" id="PhoneToQuery"></input>')
			   $("#QueryModal > div > div > div.modal-footer").html('<button type="button" class="btn btn-default" id="queryAppointment" onclick="queryAppointment()">查詢</button><button type="button" class="btn btn-default"  data-dismiss="modal">Close</button>')
	})		   
	
	$("#queryClose").on("click",function(){
			   $("#qmodalTitle").text("查詢預約紀錄");
			   $("#qmodalBody").html("請輸入電話號碼："+'<input type="text" id="PhoneIdNumberToQuery"></input>')
			   $("#QueryModal > div > div > div.modal-footer").html('<button type="button" class="btn btn-default" id="queryAppointment" onclick="queryAppointment()">查詢</button><button type="button" class="btn btn-default"  data-dismiss="modal">Close</button>')
		
	})
	
	 $(".contactMember").on("click",function(){
 			   $("#ContactModalTitle").text("傳送郵件");	  
 			   $("#ContactModalBody").html('請輸入內容：<br><textarea name="text" rows=5 style="width:90%;resize:none" id="mailText"></textarea>');	  
 			   $("#ContactModal > div > div > div.modal-footer").html('<button type="button" class="btn btn-default mailMember" onclick="mailMember()">寄出</button><button type="button" class="btn btn-default"  data-dismiss="modal">Close</button>');
 		})
	

});

function mailMember(){
		$.ajax({
			url : 'sendEmail',
			type : 'GET',
			//async:false,
            contentType: "application/json",
            dataType : "JSON",
			data : {
				email : memberEmail,
				text : $("#mailText").val(),
				method : "$.ajax()",
				doWhat : "GET"
			},
			error:function(){
				console.log("HI")
			}
		})
			$("#ContactModalBody").html('成功');
			$(".mailMember").remove();
				console.log("?")
	}
	
	function queryAppointment(){
		$.ajax({
             url: 'queryAppointment',    //url位置
             type: 'get',
             async:false,
             contentType: "application/json",
             dataType : "JSON",
             data:{
            	 Phone : $("#PhoneToQuery").val()
             },//請求方式
             success: function (result) {
             	if(result[0].memberBean!=null){
             		$("#qmodalTitle").text(result[0].memberBean.memberName+"的預約紀錄");
             	}else{
             		$("#qmodalTitle").text(result[0].patientName+"的預約紀錄");
             	}
             	 $("#qmodalBody").html('<table id="queryTable"><thead><tr><th>預約日期</th><th>預約時間</th><th>預約醫師</th><th>預約項目</th></tr></thead><tbody></tbody></table>')
				 $("#queryTable tbody").append('<tr><td>'+formatDate(result[0].appointDate)+'</td><td>'+result[0].timeTableBean.times+'</td><td>'+result[0].dentistBean.dentistName+'</td><td>'+result[0].itemBean.itemName+'</td></tr>')
				 for(let i=1;i<result.length;i++){
				 	$("#queryTable tr:last").after('<tr><td>'+formatDate(result[i].appointDate)+'</td><td>'+result[i].timeTableBean.times+'</td><td>'+result[i].dentistBean.dentistName+'</td><td>'+result[i].itemBean.itemName+'</td></tr>')
				 }
				 $("#queryAppointment").remove();
				 console.log(result)
				 
             },
             error: function(){
             	$("#qmodalBody").text("查無資料")
             	$("#queryAppointment").remove();
             }
             
        })
	}
	
	