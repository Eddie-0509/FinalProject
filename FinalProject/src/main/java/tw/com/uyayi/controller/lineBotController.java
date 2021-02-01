package tw.com.uyayi.controller;

import java.io.DataOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.regex.Pattern;

import javax.net.ssl.HttpsURLConnection;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.linecorp.bot.client.LineMessagingClient;
import com.linecorp.bot.model.PushMessage;
import com.linecorp.bot.model.action.Action;
import com.linecorp.bot.model.action.PostbackAction;
import com.linecorp.bot.model.action.URIAction;
import com.linecorp.bot.model.action.URIAction.AltUri;
import com.linecorp.bot.model.message.StickerMessage;
import com.linecorp.bot.model.message.TemplateMessage;
import com.linecorp.bot.model.message.TemplateMessage.TemplateMessageBuilder;
import com.linecorp.bot.model.message.TextMessage;
import com.linecorp.bot.model.message.TextMessage.Emoji;
import com.linecorp.bot.model.message.TextMessage.Emoji.EmojiBuilder;
import com.linecorp.bot.model.message.TextMessage.TextMessageBuilder;
import com.linecorp.bot.model.message.quickreply.QuickReply;
import com.linecorp.bot.model.message.sender.Sender;
import com.linecorp.bot.model.message.template.ConfirmTemplate;
import com.linecorp.bot.model.message.template.Template;

import tw.com.uyayi.lineBOT.model.Event;
import tw.com.uyayi.lineBOT.model.EventWrapper;
import tw.com.uyayi.lineBOT.model.Message;
import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.service.LineBotService;

@Controller
@SessionAttributes({"loginOK"})
public class lineBotController {
	@Autowired
	LineBotService lineBotService; 
	
	private String accessToken="mYiOsS61JQABr4eeX39cye4hmfT8osRMNuuMlIcgEEwdYQcJWni8VujmzEFaIUULIpW9VxghM4Y0Rheon5n8z5B5Bx8fukGN297XpZuVSJddzC+jEF3yweFY0Jo7ejkq7+UTJmkEtx0CUlzbMz824gdB04t89/1O/w1cDnyilFU=";
	@RequestMapping(value = "lineBotCallBack")
	public void lineBotCallBack(@RequestBody EventWrapper eventWrap) {
		System.out.println(eventWrap.getEvents().get(0).getReplyToken());
		System.out.println(eventWrap.getEvents().get(0).getMessage().getText());
		String userId = eventWrap.getEvents().get(0).getSource().getUserId();
		String lineText = eventWrap.getEvents().get(0).getMessage().getText();
		String idRegex = "^[A-Za-z][12]\\d{8}$"; 
		if(lineBotService.checkUserId(userId)) {
			if(Pattern.matches(idRegex,lineText)) {
				sendResponseMessages(eventWrap.getEvents().get(0).getReplyToken(), "該帳號已綁定過LINE");
			}else {
				switch(lineText) {
				case "最近預約" : 
//					sendResponseMessages(eventWrap.getEvents().get(0).getReplyToken(), eventWrap.getEvents().get(0).getSource().getUserId());
					List<Appointment> appointList = lineBotService.getAppointment(userId);
					if(appointList.size()<1) {
						sendResponseMessages(eventWrap.getEvents().get(0).getReplyToken(), "尚未有任何預約紀錄");
					}else {
						
					String appString = "看診日期:"+appointList.get(0).getAppointDate().toString()+"\\n"+
							           "看診時間:"+appointList.get(0).getTimeTableBean().getTimes()+"\\n"+
							           "預約診所:"+appointList.get(0).getClinicBean().getClinicName()+"\\n"+
							           "預約醫師:"+appointList.get(0).getDentistBean().getDentistName()+"醫師\\n"+
							           "預約項目:"+appointList.get(0).getItemBean().getItemName();
					sendResponseMessages(eventWrap.getEvents().get(0).getReplyToken(), appString);
					}
					break;
				case "預約記錄" :
					List<Appointment> allList = lineBotService.getAppointment(userId);
					int count = 0;
					String appString ="";
					while(count<allList.size()) {
					   appString +="第"+(count+1)+"筆\\n"+
							       "看診日期:"+allList.get(count).getAppointDate().toString()+"\\n"+
						           "看診時間:"+allList.get(count).getTimeTableBean().getTimes()+"\\n"+
						           "預約診所:"+allList.get(count).getClinicBean().getClinicName()+"\\n"+
						           "預約醫師:"+allList.get(count).getDentistBean().getDentistName()+"醫師\\n"+
						           "預約項目:"+allList.get(count).getItemBean().getItemName()+"\\n"+
						           "=====================\\n";
					   count++;
					   if(count>=3) {
						   break;
					   }
					}
					sendResponseMessages(eventWrap.getEvents().get(0).getReplyToken(), appString);
					break;
				case "功能" :	
					String functionString = "可輸入以下指令:\\n"
							+ "最近預約:可以查詢最近的一筆預約\\n"
							+ "預約記錄:可以查詢最近的三筆預約";
					sendResponseMessages(eventWrap.getEvents().get(0).getReplyToken(), functionString);
					break;
					
				}
			}
		}else {
			if(Pattern.matches(idRegex,lineText)){
				boolean flag = lineBotService.updateMemberLineId(userId,lineText);
				if(flag) {
					sendResponseMessages(eventWrap.getEvents().get(0).getReplyToken(), "恭喜您，\\n身分綁定成功");
				}else {
					sendResponseMessages(eventWrap.getEvents().get(0).getReplyToken(), "抱歉，\\n找不到相符的身分證字號");
				}
			}else {
				sendResponseMessages(eventWrap.getEvents().get(0).getReplyToken(), "您好，\\n請先輸入身分證字號以綁定Line帳號");
				
			}
		}
		
		
		
		
	}
	
	@RequestMapping(path = "/clinicPush", method = RequestMethod.GET)
	private @ResponseBody String clinicPushMessage(@ModelAttribute("loginOK") Clinic clinic) throws URISyntaxException, InterruptedException {
		LineMessagingClient client = LineMessagingClient
		        .builder("mYiOsS61JQABr4eeX39cye4hmfT8osRMNuuMlIcgEEwdYQcJWni8VujmzEFaIUULIpW9VxghM4Y0Rheon5n8z5B5Bx8fukGN297XpZuVSJddzC+jEF3yweFY0Jo7ejkq7+UTJmkEtx0CUlzbMz824gdB04t89/1O/w1cDnyilFU=")
		        .build();
//		Calendar rightNow = Calendar.getInstance();
//		rightNow.add(Calendar.DAY_OF_YEAR, 1);
//		java.util.Date tomorrow = rightNow.getTime();
//		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
//		Date sqlDate = Date.valueOf(sdf.format(tomorrow));
		List<Appointment> appointOfClinic = lineBotService.getClinicAppoint(clinic);
		String clinicName = clinic.getClinicName();
		for (int i = 0; i < appointOfClinic.size(); i++) {
			if(appointOfClinic.get(i).getMemberReply().equals("未回覆")) {
				if(appointOfClinic.get(i).getMemberBean()!=null) {
					
			String userId = appointOfClinic.get(i).getMemberBean().getMemberLineId();
//			String urlString = "<a herf='https://f13511948f9a.ngrok.io/FinalProject/checkArrive?fdewdewrgtjk78kt43vd&cid="+clinic.getClinicPkId()+"&vddveeew&mid="+appointOfClinic.get(i).getMemberBean().getMemberPkId()+"&qwerqewgfrhytjd'>請點擊連結來回覆診所是否到診</a>";
			String dentistName = appointOfClinic.get(i).getDentistBean().getDentistName();
			String appointTime = appointOfClinic.get(i).getTimeTableBean().getTimes();
			String preText = "$$"+appointOfClinic.get(i).getMemberBean().getMemberName()+"您好，\n"
					+"您明日"+appointOfClinic.get(i).getAppointDate().toString()+"有以下預約\n"
					+"診所:"+ clinicName+"\n"
					+"醫師:"+dentistName+"\n"
					+"時間:"+appointTime+"\n";
					
			
			URI uri1 = new URI("https://9689facef272.ngrok.io/FinalProject/appointmentYes?dfgergsd&ad="+appointOfClinic.get(i).getAppointmentPkId()+"&sefewtbaerv") ;
			URI uri2 = new URI("https://9689facef272.ngrok.io/FinalProject/appointmentNo?dfgergsd&ad="+appointOfClinic.get(i).getAppointmentPkId()+"&sefewtbaerv") ;
			AltUri altUri1 = new AltUri(uri1);
			AltUri altUri2 = new AltUri(uri2);
			Action a1 =new URIAction("是",uri1,altUri1);
			Action a2 =new URIAction("否",uri2,altUri2);
			
			List<Action> actionList = new LinkedList<Action>();
			actionList.add(a1);
			actionList.add(a2);
			Template t = new ConfirmTemplate("請確認明天是否會到診?", actionList);
//			TextMessage textMessage = new TextMessage(preText);
			
			List<Emoji> eList = new LinkedList<Emoji>();
			EmojiBuilder e = Emoji.builder();
			e.emojiId("044");
			e.index(0);
			e.productId("5ac21a18040ab15980c9b43e");
			Emoji emo = e.build();
			eList.add(emo);
			e.emojiId("151 ");
			e.index(1);
			e.productId("5ac21a18040ab15980c9b43e");
			emo = e.build();
			eList.add(emo);

			TextMessageBuilder tB = TextMessage.builder();
			tB.emojis(eList);
			tB.text(preText);
			
			
			
			com.linecorp.bot.model.message.Message m = new TemplateMessage("請確認您的預約", t);
//			StickerMessage sticker = new StickerMessage("1", "106");
		
//			PushMessage pushSticker = new PushMessage(userId, sticker);
			PushMessage pushText =  new PushMessage(userId, tB.build());
			PushMessage pushMessage = new PushMessage(userId, m);
			client.pushMessage(pushText);
			Thread.sleep(300);
			client.pushMessage(pushMessage);
				}
			}
		}
	return "OK";
	}
	
	@RequestMapping(path="/appointmentYes")
	private @ResponseBody String lineMemberReply(@RequestParam("ad") String appointmentPkId) {
		LineMessagingClient client = LineMessagingClient
		        .builder("mYiOsS61JQABr4eeX39cye4hmfT8osRMNuuMlIcgEEwdYQcJWni8VujmzEFaIUULIpW9VxghM4Y0Rheon5n8z5B5Bx8fukGN297XpZuVSJddzC+jEF3yweFY0Jo7ejkq7+UTJmkEtx0CUlzbMz824gdB04t89/1O/w1cDnyilFU=")
		        .build();
		Appointment aBean = lineBotService.getAppointmentById(appointmentPkId);
		if(aBean.getMemberReply().equals("未回覆")) {
			lineBotService.confirm(appointmentPkId);
			List<Emoji> eList = new LinkedList<Emoji>();
			EmojiBuilder e = Emoji.builder();
			e.emojiId("231");
			e.index(12);
			e.productId("5ac1bfd5040ab15980c9b435");
			Emoji emo = e.build();
			eList.add(emo);
			TextMessageBuilder tB = TextMessage.builder();
			tB.emojis(eList);
			tB.text("已成功通知診所將如期到診$");
			
			PushMessage pushMessage = new PushMessage(aBean.getMemberBean().getMemberLineId(), tB.build());
			client.pushMessage(pushMessage);		
			
		}else {
			TextMessage textMessage = new TextMessage("已回覆過囉");
			PushMessage pushMessage = new PushMessage(aBean.getMemberBean().getMemberLineId(), textMessage);
			client.pushMessage(pushMessage);
		}
		return "Please Check On Your Line Message";
	}
	
	@RequestMapping(path="/appointmentNo")
	private @ResponseBody String lineMemberReplyNo(@RequestParam("ad") String appointmentPkId) {
		LineMessagingClient client = LineMessagingClient
		        .builder("mYiOsS61JQABr4eeX39cye4hmfT8osRMNuuMlIcgEEwdYQcJWni8VujmzEFaIUULIpW9VxghM4Y0Rheon5n8z5B5Bx8fukGN297XpZuVSJddzC+jEF3yweFY0Jo7ejkq7+UTJmkEtx0CUlzbMz824gdB04t89/1O/w1cDnyilFU=")
		        .build();
		Appointment aBean = lineBotService.getAppointmentById(appointmentPkId);
		if(aBean.getMemberReply().equals("未回覆")) {
		lineBotService.cancelAppoint(appointmentPkId);
//		TextMessage textMessage = new TextMessage("已將預約取消囉");
		
		List<Emoji> eList = new LinkedList<Emoji>();
		EmojiBuilder e = Emoji.builder();
		e.emojiId("096");
		e.index(7);
		e.productId("5ac21a18040ab15980c9b43e");
		Emoji emo = e.build();
		eList.add(emo);
		TextMessageBuilder tB = TextMessage.builder();
		tB.emojis(eList);
		tB.text("已將預約取消囉$");
		
		
		PushMessage pushMessage = new PushMessage(aBean.getMemberBean().getMemberLineId(), tB.build());
		client.pushMessage(pushMessage);		
		}else {
			TextMessage textMessage = new TextMessage("已回覆過囉");
			PushMessage pushMessage = new PushMessage(aBean.getMemberBean().getMemberLineId(), textMessage);
			client.pushMessage(pushMessage);
			
		}
		return "Please Check On Your Line Message";
	}
	
	
	 private void sendResponseMessages(String replyToken, String message) {
	        try {
	            message = "{\"replyToken\":\""+replyToken+"\",\"messages\":[{\"type\":\"text\",\"text\":\""+message+"\"}]}"; //回傳的json格式訊息
	            URL myurl = new URL("https://api.line.me/v2/bot/message/reply"); //回傳的網址
	            HttpsURLConnection con = (HttpsURLConnection)myurl.openConnection(); //使用HttpsURLConnection建立https連線
	            con.setRequestMethod("POST");//設定post方法
	            con.setRequestProperty("Content-Type", "application/json; charset=utf-8"); //設定Content-Type為json
	            con.setRequestProperty("Authorization", "Bearer "+this.accessToken); //設定Authorization
	            con.setDoOutput(true);
	            con.setDoInput(true);
	            DataOutputStream output = new DataOutputStream( con.getOutputStream() ); //開啟HttpsURLConnection的連線
	            output.write( message.getBytes(Charset.forName("utf-8")) );  //回傳訊息編碼為utf-8
	            output.close();
	            System.out.println("Resp Code:"+con .getResponseCode()+"; Resp Message:"+con .getResponseMessage()); //顯示回傳的結果，若code為200代表回傳成功
	        } catch (MalformedURLException e) {
	            System.out.println("Message: "+e.getMessage());
	            e.printStackTrace();
	        } catch (IOException e) {
	            System.out.println("Message: "+e.getMessage());
	            e.printStackTrace();
	        }
	    }
}
