package tw.com.uyayi.controller;

import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Base64;
import java.util.Date;
import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import tw.com.uyayi.model.City;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dist;
import tw.com.uyayi.service.ClinicReviseService;
import tw.com.uyayi.service.ClinicSignUpService;

@Controller
@SessionAttributes("loginOK")
public class ClinicReviseController {

	@Autowired
	ClinicReviseService clinicReviseService;
	@Autowired
	ClinicSignUpService clinicSignUpService;
	
	@GetMapping("/clinicDetail")
	public String clinicDetail(@ModelAttribute("loginOK") Clinic c, Model model) {
		List<City> cityList = clinicSignUpService.getAllCity();
		Clinic  cBean = clinicReviseService.getClinicById(c.getClinicPkId());
		model.addAttribute("clinicBean", cBean);
		model.addAttribute("cityList",cityList);
		return "clinic/clinicDetail";
	}
	
	@GetMapping(value = "/reviseClinic")
	public String getSignUp(Model model) {
		Clinic clinic = new Clinic();
		model.addAttribute("clinicBean", clinic);
		return "clinic/clinicDetail";
	}
	
	// 接收表單資料用 並寫入資料庫
	@PostMapping(value ="/reviseClinic")
	public String processSignUp(@ModelAttribute("loginOK") Clinic loginClinic,
			@ModelAttribute("clinicBean") Clinic clinic,
			@RequestParam(value = "image",required = false) MultipartFile file) throws IOException {
		System.out.println(clinic.getClinicCityId());
		clinic.setClinicPkId(loginClinic.getClinicPkId());
		City cityBean = clinicSignUpService.getCityBean(clinic.getClinicCityId());
		Dist distBean = clinicSignUpService.getDistBean(clinic.getClinicDistId());
		clinic.setCityBean(cityBean);
		clinic.setDistBean(distBean);
		if(!file.isEmpty()) {
			
			InputStream is = file.getInputStream();
			
			String base64 = Base64.getEncoder().encodeToString(is.readAllBytes());
			
			OkHttpClient client = new OkHttpClient().newBuilder()
					  .build();
			MediaType mediaType = MediaType.parse("text/plain");
			RequestBody body = new MultipartBody.Builder().setType(MultipartBody.FORM)
			  .addFormDataPart("image", base64)
			  .build();
			Request request = new Request.Builder()
			  .url("https://api.imgur.com/3/image")
			  .method("POST", body)
			  .addHeader("Authorization", "Bearer 83104ee9305c5df78a74dc0d479e208342f876ad")
			  .build();
			try {
				 String responseString = client.newCall(request).execute().body().string();
				JSONObject jsonObject = new JSONObject(responseString);
				clinic.setClinicImage((String) jsonObject.getJSONObject("data").getString("link"));

			} catch (IOException e) {
				e.printStackTrace();
			}
			}
		clinic.setClinicPwd(loginClinic.getClinicPwd());
		clinicReviseService.update(clinic);
		return "redirect:/clinicDetail";
	}
	
	@PostMapping("/clinicChangePwd")
	public String changeClinicPwd(@RequestParam("clinicOldPwd") String clinicOldPwd,
			@RequestParam("clinicNewPwd") String clinicNewPwd,
			@ModelAttribute("loginOK") Clinic c, RedirectAttributes redAttributes
) {
		
		if(!c.getClinicPwd().equals(clinicOldPwd)) {
			redAttributes.addFlashAttribute("error","原密碼錯誤");
			return "redirect:/clinicDetail";
		}else {
			c.setClinicPwd(clinicNewPwd);
			clinicReviseService.update(c);
			return "redirect:/clinicDetail";
		}
	}
}
