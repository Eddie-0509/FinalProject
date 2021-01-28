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
		      			 let title="";
		      			 if(result[appnum].memberReply!="取消"){
			      			 if(result[appnum].memberBean!=null){
			      			 	title=result[appnum].memberBean.memberName;
			      			
		   			 			if(result[appnum].memberReply=="未回覆"){
		   			 				backgroundColor='#81C0C0'
		   						}
		   						if(result[appnum].memberReply=="確定前往"){
		   							backgroundColor='#408080'
		   						}
		   					 }
		   					 if(result[appnum].memberBean==null){
		   						title=result[appnum].patientName;	   						
		   				
		   						if(result[appnum].memberReply=="未回覆"){
		   			 				backgroundColor='#FFD1A4'
		   						}
		   						if(result[appnum].memberReply=="確定前往"){
		   							backgroundColor='#EA7500'
		   						}
		   					  }
			            	 hisevent.push({id:result[appnum].appointmentPkId,
			            		 			title:title,
			      			 			    start: formatDate(result[appnum].appointDate)+"T"+
			      			 			           (result[appnum].timeTableBean.times).substring(0,(result[appnum].timeTableBean.times).length-6)+":00",
			      			 			    backgroundColor:backgroundColor
			            	 				})
		             	}
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
					 
					 $("#AppointmentModal > div > div > div.modal-footer").html('<button type="button" class="btn btn-default " data-toggle="modal" data-target="#AppointmentUpdateModal" data-dismiss="modal" onclick="appointmentUpdate()">修改預約</button><button type="button" class="btn btn-default contactMember" data-toggle="modal" data-target="#ContactModal" data-dismiss="modal" onclick="contactMember()">連絡病患</button>'
	        	+'<button type="button" class="btn btn-default" onclick="openConfirmModal()">未到診回報</button><button type="button" class="btn btn-default" data-dismiss="modal">Close</button>')
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
							  	if(result.memberID == null){
				             		$("#patientName").text(result.patientName);
				             	}
				             	else{
				             		$("#patientName").html('<a onclick="medicalRecordOpen()">'+result.patientName+'</a>');
								}
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
							 if(memberEmail==null){
							 	$("#AppointmentModal > div > div > div.modal-footer > button").eq(1).remove();
								$("#AppointmentModal > div > div > div.modal-footer > button").eq(1).remove();
			             	 	$("#AppointmentModal > div > div > div.modal-footer > button").eq(1).before('<button type="button" class="btn btn-default" onclick="openDeleteConfirmModal()">刪除預約</button>');
							 }
							 $('#AppointmentModal').modal();
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
				  $("#AppointmentModal > div > div > div.modal-footer").html('<button type="button" class="btn btn-default " data-toggle="modal" data-target="#AppointmentUpdateModal" data-dismiss="modal" onclick="appointmentUpdate()">修改預約</button><button type="button" class="btn btn-default contactMember" data-toggle="modal" data-target="#ContactModal" data-dismiss="modal" onclick="contactMember()">連絡病患</button>'
	        	+'<button type="button" class="btn btn-default" onclick="openConfirmModal()">未到診回報</button><button type="button" class="btn btn-default" data-dismiss="modal">Close</button>')						 
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
		             	console.log(result.memberID)
		             	if(result.memberID == null){
		             		$("#patientName").text(result.patientName);
		             	}
		             	else{
		             		$("#patientName").html('<a onclick="medicalRecordOpen()">'+result.patientName+'</a>');
						}
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
		             	 if(memberEmail==null){
							 $("#AppointmentModal > div > div > div.modal-footer > button").eq(1).remove();
							 $("#AppointmentModal > div > div > div.modal-footer > button").eq(1).remove();
		             	 	 $("#AppointmentModal > div > div > div.modal-footer > button").eq(1).before('<button type="button" class="btn btn-default" onclick="openDeleteConfirmModal()">刪除預約</button>');
		             	}
		             }
		        })
			}		             
		});
	
	console.log("298="+memberEmail+",APPID:"+appointmentID+",memberID"+memberID+",patientName:"+patientName);
	
	
	$("#queryBut").on("click",function(){
//			   $("#qmodalTitle").text("查詢預約紀錄");
//	 		   $("#qmodalBody").html("請輸入電話號碼："+'<input type="text" id="PhoneToQuery" autofocus></input>')
//			   $("#QueryModal > div > div > div.modal-footer").html('<button type="button" class="btn btn-default" id="queryAppointment" onclick="queryAppointment()">查詢</button><button type="button" class="btn btn-default"  data-dismiss="modal">Close</button>')
			   $("#PhoneToQuery").val("");
			   $("#qmodalTitle").css("display","block")
			   $("#qmodalBody").css("display","block")
			   $("#qmodalTitle2").css("display","none")
			   $("#qmodalBody2").css("display","none")
			   $(".modal-footer span a").css("display","inline")
			   $("#queryAppointment").css("display","inline");
	})		   
	
//	$(".queryClose").on("click",function(){
//			   $("#qmodalTitle").text("查詢預約紀錄");
//			   $("#qmodalBody").html("請輸入電話號碼："+'<input type="text" id="PhoneIdNumberToQuery" autofocus ></input>')
//			   $("#QueryModal > div > div > div.modal-footer").html('<button type="button" class="btn btn-default" id="queryAppointment" onclick="queryAppointment()">查詢</button><button type="button" class="btn btn-default queryClose"  data-dismiss="modal">Close</button>')
//			   $("#QueryModal").modal('hide')
//	})
	
	

});
	function appointmentUpdate(){
		$("#upPatientName").text($("#patientName").text());
	    $("#upPatientPhone").text($("#patientPhone").text());
	    $("#upDentistName").text($("#dentistName").text());
	    $("#upItem").html("<select id='upitemcanchoose'></select>");
	    $("#upDate").text( $("#date").text());
	    $("#upTime").text($("#time").text());
	    if(memberID==null){
		    "<select id='upitemcanchoose'></select>"
		    if($("#reply").text()=="未回覆"){
		    	$("#upReply").html("<select><option value='未回覆' selected='selected'>未回覆</option><option value='確定前往' >確定前往</option></select>");
		    }if($("#reply").text()=="確定前往"){
		    	$("#upReply").html("<select><option value='未回覆' >未回覆</option><option value='確定前往' selected='selected'>確定前往</option></select>");
		    }
		}else{
			$("#upReply").text($("#reply").text());
		}
		$.ajax({
			url : 'getItemByDentist',
			type : 'POST',
//            contentType: "application/json",
            dataType : "JSON",
			data : {
				dentistName : $("#upDentistName").text(),
				method : "$.ajax()",
				doWhat : "POST"
			},
			success : function(data){
				for(let i=0;i<data.length;i++){				
					console.log(data[i])
					if($("#item").text()==data[i].itemName){
						$("#upItem select").append("<option value="+data[i].itemName+" selected='selected'>"+data[i].itemName+"</option>")
					}else{
						$("#upItem select").append("<option value="+data[i].itemName+">"+data[i].itemName+"</option>")
					}
				}
			}
		})
	}

	 function contactMember(){
 			   $("#ContactModalTitle").text("傳送郵件");	  
 			   $("#ContactModalBody").html('請輸入內容：<br><textarea name="text" rows=5 style="width:90%;resize:none" id="mailText">'+patientName+'您好：'+'\n\t'+'\n'+clinicName+'</textarea><br><a onclick="comeLatter()">看診延後通知</a>&nbsp;&nbsp;<a onclick="dotakyann()">臨時取消通知</a>');	  
 			   $("#ContactModal > div > div > div.modal-footer").html('<button type="button" class="btn btn-default mailMember" onclick="mailMember()">寄出</button><button type="button" class="btn btn-default"  data-dismiss="modal">Close</button>');
 		}

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
//             async:false,
             contentType: "application/json",
             dataType : "JSON",
             data:{
            	 Phone : $("#PhoneToQuery").val()
             },//請求方式
             success: function (result) {
             	if(result==''){
                 	$("#qmodalTitle2").text("查詢預約紀錄");
             		$("#qmodalBody2").text("查無資料")
             	}else if(result[0].memberBean==null){
             		$("#qmodalTitle2").text(result[0].patientName+"的預約紀錄");
             	    $("#qmodalBody2").html('<table id="queryTable"><thead><tr><th>預約日期</th><th>預約時間</th><th>預約醫師</th><th>預約項目</th><th>刪除預約</th></tr></thead><tbody></tbody></table>')
					 $("#queryTable tbody").append('<tr><td>'+formatDate(result[0].appointDate)+'</td><td>'+result[0].timeTableBean.times+'</td><td>'+result[0].dentistBean.dentistName+'</td><td>'+result[0].itemBean.itemName+'</td><td><button type="button" class="btn btn-danger" onclick="openDeleteConfirmModalInQ.call(this)">刪除</button></td><td hidden>'+result[0].appointmentPkId+'</td></tr>')
					 for(let i=1;i<result.length;i++){
					 	$("#queryTable tr:last").after('<tr><td>'+formatDate(result[i].appointDate)+'</td><td>'+result[i].timeTableBean.times+'</td><td>'+result[i].dentistBean.dentistName+'</td><td>'+result[i].itemBean.itemName+'</td><td><button type="button" class="btn btn-danger" onclick="openDeleteConfirmModalInQ.call(this)">刪除</button></td><td hidden>'+result[i].appointmentPkId+'</td></tr>')
					 }
             	}else{
             	 	$("#qmodalTitle2").text(result[0].memberBean.memberName+"的預約紀錄");
	             	 $("#qmodalBody2").html('<table id="queryTable"><thead><tr><th>預約日期</th><th>預約時間</th><th>預約醫師</th><th>預約項目</th></tr></thead><tbody></tbody></table>')
					 $("#queryTable tbody").append('<tr><td>'+formatDate(result[0].appointDate)+'</td><td>'+result[0].timeTableBean.times+'</td><td>'+result[0].dentistBean.dentistName+'</td><td>'+result[0].itemBean.itemName+'</td></tr>')
					 for(let i=1;i<result.length;i++){
					 	$("#queryTable tr:last").after('<tr><td>'+formatDate(result[i].appointDate)+'</td><td>'+result[i].timeTableBean.times+'</td><td>'+result[i].dentistBean.dentistName+'</td><td>'+result[i].itemBean.itemName+'</td><td></tr>')
					 }
             	}
             	 $("#qmodalTitle2").css("display","block")
			     $("#qmodalBody2").css("display","block")
			     $("#qmodalTitle").css("display","none")
			     $("#qmodalBody").css("display","none")
				 $("#queryAppointment").css("display","none");
				 $(".modal-footer span a").css("display","none")
				 console.log(result)
				 
             },
             error: function(){
                $("#qmodalTitle2").css("display","block")
			    $("#qmodalBody2").css("display","block")
			    $("#qmodalTitle").css("display","none")
			    $("#qmodalBody").css("display","none")
			    $("#qmodalTitle2").text("查詢預約紀錄");
             	$("#qmodalBody2").text("查無資料")
             	$("#queryAppointment").css("display","none");
             	$(".modal-footer span a").css("display","none")
             }            
        })
	}
	
	function medicalRecordOpen(){		
		console.log("458："+memberID)
		 $.ajax({
             url: 'getmedicalRecord',    //url位置
             type: 'post',
//             contentType: "application/json",
//             dataType : "JSON",
             data:{
            	 memberID : memberID,
            	 method : "$.ajax()",
			     doWhat : "POST"
             },//請求方式
             success: function (result) {
             	console.log()
				 $("#emergencyContact").text(result.EmergencyContact);
				 $("#emergencyNumber").text(result.EmergencyNumber);
				 $("#emergencyRelationship").text(result.EmergencyRelationship);
				 $("#smoke").text(result.Smoke);
				 $("#betelNut").text(result.BetelNut);
				 $("#diseases").text(result.Diseases);
				 $("#allergy").text(result.Allergy);
				 $("#surgery").text(result.Surgery);
				 $("#medicalRecordModal").modal("show");
             }
        })
	
	}
	
	
	
	function comeLatter(){
		$("#mailText").html(patientName+"您好："+'\n\t'+"由於先前患者的看診時間有所延誤，因此請您晚ＯＯ分鐘前來報到，謝謝。"+'\n'+clinicName)
	}
	function dotakyann(){
		$("#mailText").html(patientName+"您好："+'\n\t'+"由於今日醫師臨時有事，因此取消今日的看診，很抱歉造成您的不便，還請您多多見諒，謝謝。"+'\n'+clinicName)
	}
	