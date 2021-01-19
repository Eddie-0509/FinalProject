package tw.com.uyayi.config;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import tw.com.uyayi.model.Clinic;

public class CheckLoginInterceptor extends HandlerInterceptorAdapter {

	List<String> url = Arrays.asList("/clinicCalendar*","/clinicAppoint*","/getDentist*","/getItemByDentist*");
	String servletPath;
	String contextPath;
	String requestURI;

	public CheckLoginInterceptor() {
	}

	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object handler) throws Exception {
		boolean byPass = true;
		boolean isRequestedSessionIdValid = false;
		servletPath = req.getServletPath();
		contextPath = req.getContextPath();
		requestURI = req.getRequestURI();
		isRequestedSessionIdValid = req.isRequestedSessionIdValid();

		if (mustLogin()) {
			if (checkLogin(req)) {
//System.out.println(servletPath + " 需要登入，但已經登入"); 
				byPass = true;
			} else {
//  需要登入，尚未登入，所以送回登入畫面
//System.out.println(servletPath + " 需要登入，尚未登入，所以送回登入畫面");
				HttpSession session = req.getSession();
				if (!isRequestedSessionIdValid) {
					session.setAttribute("timeOut", "使用逾時，請重新登入");
				} else {
					// 記住原本的"requestURI"，稍後如果登入成功，系統可以自動轉入
					// 原本要執行的程式。
					session.setAttribute("requestURI", requestURI);
				}
				resp.sendRedirect(contextPath + "/clinicIndex");
				byPass = false;
			}
		} else { // 不需要登入，直接去執行他要執行的程式
//System.out.println(servletPath + " 不需要登入，直接去執行他要執行的程式");
			byPass = true;
		}
		return byPass;
	}

// 判斷Session物件內是否含有識別字串為LoginOK的屬性物件，如果有，表示已經登入，否則尚未登入
	private boolean checkLogin(HttpServletRequest req) {
		HttpSession session = req.getSession();

		Clinic loginToken = (Clinic) session.getAttribute("loginOK");
		if (loginToken == null) {
			return false;
		} else {
			return true;
		}
	}

// 如果請求的ServletPath的前導字是以某個必須登入才能使用之資源的路徑，那就必須登入。
	private boolean mustLogin() {
		boolean login = false;
		for (String sURL : url) {
			if (sURL.endsWith("*")) {
				sURL = sURL.substring(0, sURL.length() - 1); // 除去掉最後一個字元的剩餘字串
				if (servletPath.startsWith(sURL)) {
					login = true;
					break;
				}
			} else {
				if (servletPath.equals(sURL)) {
					login = true;
					break;
				}
			}
		}
		return login;
	}

}
