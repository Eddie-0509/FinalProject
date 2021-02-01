package tw.com.uyayi.controller;

import java.sql.Date;
import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Coupon;
import tw.com.uyayi.model.Member;
import tw.com.uyayi.model.Orders;
import tw.com.uyayi.model.Products;
import tw.com.uyayi.service.AdminService;

@Controller
public class AdminController {
	@Autowired
	AdminService service;
	
	//商品管理頁面(初始值為顯示全部商品資料)
	@GetMapping(value = "/productManage")
	public String getAllProduct(Model model) {
		List<Products> beans = service.getAllProducts();
		JSONObject json = new JSONObject();
		json.put("product", beans);
		model.addAttribute("products",json);
		return "admin/productManage";
	}
	//商品管理頁面(依產品類別顯示商品)
	@GetMapping(value  = "/getAllProductsByCategoryAndStatus", produces = "application/json")
	public @ResponseBody List<Products> getProductsByCategory(@RequestParam String h_productCategory,@RequestParam String h_status) {
		List<Products> beans= null;
		if((h_productCategory.equals("all"))&&(h_status.equals("all"))) {
			beans = service.getAllProducts();			
		}else if(h_status.equals("all")){
			beans = (List<Products>)service.getAllProductsByCategory(h_productCategory);	
		}else if(h_productCategory.equals("all")) {
			beans = (List<Products>)service.getAllProductsByStatus(h_status);
		}else {
			beans = (List<Products>)service.getAllProductsByCategoryAndStatus(h_productCategory,h_status);
		}
		return beans;
	}
	//商品管理頁面(模糊搜尋AutoComplete功能)-----尚未完成----------
	@PostMapping(value  = "/getProductName", produces = "application/json")
	public @ResponseBody List<String> getProductName(@RequestParam String keyName){
		List<String> beans = null;
		beans = service.getProdcutName(keyName);
		return null;
	}
	//商品管理頁面(模糊搜尋)
	@GetMapping(value  = "/getAllProductsByName", produces = "application/json")
	public @ResponseBody List<Products> getAllProductsByName(@RequestParam String keyName) {
		List<Products> beans= null;
		if(keyName.equals("")) {
			beans = service.getAllProducts();
		}else {
			beans = service.getAllProductsByName(keyName);
		}
		return beans;
	}
	//商品管理頁面(新增產品表單)
	@GetMapping("/addProduct")
	public String addProduct(Model model) {
		Products prodcut = new Products();
		model.addAttribute("addProduct",prodcut);
		return "admin/productManage";
	}
	//商品管理頁面(新增產品功能)
	@PostMapping(value = "/addProduct")
	public String addProduct(@ModelAttribute("addProduct") Products product) {
		Date sqldate = service.getToday();
		product.setProductUpdateDate(sqldate);
		service.insertProduct(product);	
		return "redirect:/productManage";
	}
	//商品管理頁面(更新產品表單)
	@GetMapping("/updateProduct")
	public String updateProduct(Model model) {
		Products prodcut = new Products();
		model.addAttribute("addProduct",prodcut);
		return "admin/productManage";
	}
	//商品管理頁面(更新產品功能)
	@PostMapping(value = "/updateProduct")
	public String updateProduct(@ModelAttribute("updateProduct") Products product) {
		Date sqldate = service.getToday();
		product.setProductUpdateDate(sqldate);
		service.updateProduct(product);	
		return "redirect:/productManage";
	}
	
	//會員管理頁面(初始值為顯示所有會員資料)
	@GetMapping(value = "/memberManage")
	public String getAllMember(Model model) {
		List<Member> beans = service.getAllMember();
		JSONObject json = new JSONObject();
		json.put("member", beans);
		model.addAttribute("members",json);
		return "admin/memberManage";
	}
	//會員管理頁面(修改會員狀態)
	@PostMapping(value = "/updateMemberStatus")
	public String updateMemberStatus(String memberStatus,int memberPkId) {
		if(memberStatus.equals("停權")) {
			service.updateMemberStatus(memberPkId,"已填寫");
		}else {
			service.updateMemberStatus(memberPkId,"停權");
		}
		return "redirect:/memberManage";	
	}
	//會員管理頁面(依狀態顯示會員)
	@GetMapping(value  = "/getAllMemberByStatus", produces = "application/json")
	public @ResponseBody List<Member> getAllMemberByStatus(@RequestParam String h_memberStatus) {
		List<Member> beans= null;
		if(h_memberStatus.equals("狀態")) {
			beans = service.getAllMember();
		}else {
			beans = service.getAllMemberByStatus(h_memberStatus);
		}
		return beans;
	}
	//會員管理頁面(依會員名稱搜尋會員資料)
	@GetMapping(value  = "/getAllMemberByName", produces = "application/json")
	public @ResponseBody List<Member> getAllMemberByName(@RequestParam String keyName) {
		List<Member> beans= null;
		if(keyName.equals("")) {
			beans = service.getAllMember();
		}else if(keyName.equals("admin")) {
			beans= null;
		}else {
			beans = service.getAllMemberByName(keyName);
		}
		return beans;
	}
	//會員管理頁面(會員預約及訂單紀錄明細)
	@PostMapping(value = "/memberManage_Detail")
	public String getMemberDetailFromId(Model model,int memberPkId) {
		Member member = service.getMemberById(memberPkId);
		List<Appointment> appointment = service.getMemberAppointmentFromId(memberPkId);
		List<Orders> orders = service.getMemberOrderFromId(memberPkId);
		model.addAttribute("member",member);
		model.addAttribute("appointment",appointment);
		model.addAttribute("orders",orders);
		return "admin/memberManage_Detail";
	}
	//會員管理頁面(模糊搜尋訂單紀錄)
	@GetMapping(value ="/getMemberOrderFromIdAndOrderNo", produces = "application/json")
	public @ResponseBody List<Orders> getMemberOrderFromIdAndOrderNo(@RequestParam String keyName,
			@RequestParam int memberPkId) {
		List<Orders> beans= null;
		if(keyName.equals("")) {
			beans = service.getMemberOrderFromId(memberPkId);			
		}else {
			beans = service.getMemberOrderFromIdAndOrderNo(memberPkId,keyName);			
		}
		return beans;
	}
	//會員管理頁面(模糊搜尋訂單紀錄)
	@GetMapping(value ="/getMemberOrderFromIdAndOrderStatus", produces = "application/json")
	public @ResponseBody List<Orders> getMemberOrderFromIdAndOrderStatus(@RequestParam String orderStatus,
			@RequestParam int memberPkId) {
		List<Orders> beans= null;
		if(orderStatus.equals("訂單狀況")) {
			beans = service.getMemberOrderFromId(memberPkId);			
		}else {
			beans = service.getMemberOrderFromIdAndOrderStatus(memberPkId,orderStatus);			
		}
		return beans;
	}
	//會員管理頁面(模糊搜尋預約紀錄)
	@GetMapping(value ="/getMemberAppointmentFromIdAndName", produces = "application/json")
	public @ResponseBody List<Appointment> getMemberAppointmentFromIdAndName(@RequestParam String keyName,
			@RequestParam int memberPkId) {
		List<Appointment> beans= null;
		if(keyName.equals("")) {
			beans = service.getMemberAppointmentFromId(memberPkId);			
		}else {
			beans = service.getMemberAppointmentFromIdAndName(memberPkId,keyName);			
		}
		return beans;
	}
	//會員管理頁面(是否到診篩選預約紀錄)
	@GetMapping(value ="/getMemberAppointmentFromIdAndArrive", produces = "application/json")
	public @ResponseBody List<Appointment> getMemberAppointmentFromIdAndArrive(@RequestParam String Arrive,
			@RequestParam int memberPkId) {
		List<Appointment> beans= null;
		if(Arrive.equals("到診")) {
			beans = service.getMemberAppointmentFromId(memberPkId);			
		}else {
			beans = service.getMemberAppointmentFromIdAndArrive(memberPkId,Arrive);			
		}
		return beans;
	}
	//診所管理頁面(初始值為顯示所有診所資料)
	@GetMapping(value = "/clinicManage")
	public String getAllClinic(Model model) {
		List<Clinic> beans = service.getAllClinic();
		model.addAttribute("clinics",beans);
		return "admin/clinicManage";
	}
	//診所管理頁面(模糊搜尋)
	@GetMapping(value ="/getAllClinicByName", produces = "application/json")
	public @ResponseBody List<Clinic> getAllClinicByName(@RequestParam String keyName) {
		List<Clinic> beans= null;
		if(keyName.equals("")) {
			beans = service.getAllClinic();
			for (int i = 0; i < beans.size(); i++) {
				beans.get(i).setClinicCityName(beans.get(i).getCityBean().getCityName());
				beans.get(i).setClinicDistName(beans.get(i).getDistBean().getDistName());
			}
		}else {
			beans = service.getAllClinicByName(keyName);
			for (int i = 0; i < beans.size(); i++) {
				beans.get(i).setClinicCityName(beans.get(i).getCityBean().getCityName());
				beans.get(i).setClinicDistName(beans.get(i).getDistBean().getDistName());
			}
		}
		return beans;
	}
	//診所管理頁面(依城市篩選診所資料及取得區域)
	@GetMapping(value ="/getAllClinicByCityAndStatus", produces = "application/json")
	public @ResponseBody List<Clinic> getAllClinicByCityAndStatus(@RequestParam String h_clinicCity,
			@RequestParam String h_status) {
		List<Clinic> beans= null;
		if(h_clinicCity.equals("城市")&&h_status.equals("狀態")) {
			beans = service.getAllClinic();
			for (int i = 0; i < beans.size(); i++) {
				beans.get(i).setClinicCityName(beans.get(i).getCityBean().getCityName());
				beans.get(i).setClinicDistName(beans.get(i).getDistBean().getDistName());
			}
		}else if(h_status.equals("狀態")) {
			beans = service.getAllClinicByCity(h_clinicCity);
			for (int i = 0; i < beans.size(); i++) {
			beans.get(i).setClinicCityName(beans.get(i).getCityBean().getCityName());
			beans.get(i).setClinicDistName(beans.get(i).getDistBean().getDistName());
			}
		}else if(h_clinicCity.equals("城市")) {
			beans = service.getAllClinicByStatus(h_status);
			for (int i = 0; i < beans.size(); i++) {					
				beans.get(i).setClinicCityName(beans.get(i).getCityBean().getCityName());
				beans.get(i).setClinicDistName(beans.get(i).getDistBean().getDistName());
				}
		}else {
			beans = service.getAllClinicByCityAndStatus(h_clinicCity,h_status);
			for (int i = 0; i < beans.size(); i++) {
				beans.get(i).setClinicCityName(beans.get(i).getCityBean().getCityName());
				beans.get(i).setClinicDistName(beans.get(i).getDistBean().getDistName());
			}
		}
		return beans;
		}
	//診所管理頁面(診所預約紀錄明細)
		@PostMapping(value = "/clinicManage_Detail")
		public String getClinicMemberDetailFromId(Model model,int clinicPkId) {
			Clinic clinic = service.getClinicById(clinicPkId);
			List<Appointment> appointment = service.getClinicAppointmentFromId(clinicPkId);
			model.addAttribute("clinic",clinic);
			model.addAttribute("appointment",appointment);
			return "admin/clinicManage_Detail";
		}
	//診所明細頁面(By到診及會員狀態篩選預約資料)
	@GetMapping(value ="/getAllAppointByMemberAccountAndMemberArrive", produces = "application/json")
	public @ResponseBody List<Appointment> getAllAppointByMemberAccountAndMemberArrive(
			@RequestParam String memberAccount,
			@RequestParam String memberArrive,
			@RequestParam int clinicPkId) {
		List<Appointment> beans= null;
		if(memberAccount.equals("會員")&&memberArrive.equals("到診")) {
			beans = service.getClinicAppointmentFromId(clinicPkId);
		}else if(memberAccount.equals("會員")) {
			beans = service.getAllAppointmentByMemberArrive(memberArrive,clinicPkId);
		}else if(memberArrive.equals("到診")) {
			beans = service.getAllAppointmentByMemberAccount(memberAccount,clinicPkId);
		}else {
			beans = service.getAllAppointmentByMemberAccountAndMemberArrive(memberArrive,memberAccount,clinicPkId);
		}
		return beans;
		}
	//折扣碼管理頁面(初始值為顯示所有折扣碼資料)
	@GetMapping(value = "/couponManage")
	public String getAllCoupon(Model model) {
		List<Coupon> beans = service.getAllCoupon();
		model.addAttribute("coupon",beans);
		return "admin/couponManage";
	}
	//折扣碼管理頁面(新增折扣表單)
	@GetMapping("/addCoupon")
	public String addCoupon(Model model) {
		Coupon coupon = new Coupon();
		model.addAttribute("addCoupon",coupon);
		return "admin/couponManage";
	}
	//折扣碼管理頁面(新增折扣功能)
	@PostMapping(value = "/addCoupon")
	public String addCoupon(@ModelAttribute("addCouponForm") Coupon coupon) {
		service.insertCoupon(coupon);	
		return "redirect:/couponManage";
	}
	//折扣碼管理頁面(修改折扣表單)
	@GetMapping("/updateCoupon")
	public String updateCoupon(Model model) {
		Coupon coupon = new Coupon();
		model.addAttribute("addCoupon",coupon);
		return "admin/couponManage";
	}
	//折扣碼管理頁面(修改折扣功能)
	@PostMapping(value = "/updateCoupon")
	public String updateCoupon(@ModelAttribute("updateCouponForm") Coupon coupon) {
		System.out.println(coupon.getCouponContext());
		service.updateCoupon(coupon);	
		return "redirect:/couponManage";
	}
	//折扣碼管理頁面(模糊搜尋)
	@GetMapping(value ="/getAllCouponByName", produces = "application/json")
	public @ResponseBody List<Coupon> getAllCouponByName(@RequestParam String keyName) {
		List<Coupon> beans= null;
		if(keyName.equals("")) {
			beans = service.getAllCoupon();
		}else {
			beans = service.getAllCouponByName(keyName);
		}
		return beans;
	}
	//折扣碼管理頁面(依狀態篩選)
	@GetMapping(value ="/getAllCouponByStatus", produces = "application/json")
	public @ResponseBody List<Coupon> getAllCouponByStatus(@RequestParam String h_couponStatus) {
		List<Coupon> beans= null;
		if(h_couponStatus.equals("狀態")) {
			beans = service.getAllCoupon();
		}else {
			beans = service.getAllCouponByStatus(h_couponStatus);
		}
		return beans;
	}
}
