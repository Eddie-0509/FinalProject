package tw.com.uyayi.controller;

import java.io.DataOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.net.ssl.HttpsURLConnection;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import tw.com.uyayi.lineBOT.model.Event;
import tw.com.uyayi.lineBOT.model.EventWrapper;
import tw.com.uyayi.lineBOT.model.Message;
import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.service.LineBotService;

@Controller
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
				case "預約紀錄" :
					List<Appointment> allList = lineBotService.getAppointment(userId);
					int count = 0;
					while(count<3) {
						
					}
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
