package tw.com.uyayi.config;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.orm.hibernate5.support.OpenSessionInViewInterceptor;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan("tw.com.uyayi")
public class WebAppConfig implements WebMvcConfigurer {
	@Autowired
	SessionFactory factory;
	@Bean
	public ViewResolver resolver() {
		InternalResourceViewResolver vr = new InternalResourceViewResolver();
		vr.setPrefix("/WEB-INF/views/"); // "/WEB-INF/views/"+ logicalName + ".jsp"
		vr.setSuffix(".jsp");
		return vr;
	}
	
	@Bean
	public MessageSource messageSource() {
		ResourceBundleMessageSource resource = new ResourceBundleMessageSource();
		resource.setBasename("messages");
		return resource;
	}
//	@Override 
//	// 應用系統必須透過ResourceHandlerRegistry的輔助，以便處理靜態檔案：
//	// 只要請求路徑是以/css/開頭的任何請求，都轉到/WEB-INF/views/css/去尋找
//	// 只要請求路徑是以/image/開頭的任何請求，都轉到/WEB-INF/views/images/去尋找
//	public void addResourceHandlers(ResourceHandlerRegistry registry) {
//	     registry.addResourceHandler("/css/**")
//	             .addResourceLocations("/WEB-INF/views/css/");
//	     registry.addResourceHandler("/image/**")
//	             .addResourceLocations("/WEB-INF/views/images/");
//	}
	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/css/**").addResourceLocations("/WEB-INF/views/tools/css/");
		registry.addResourceHandler("/images/**").addResourceLocations("/WEB-INF/views/tools/images/");
		registry.addResourceHandler("/fonts/**").addResourceLocations("/WEB-INF/views/tools/fonts/");
		registry.addResourceHandler("/js/**").addResourceLocations("/WEB-INF/views/tools/js/");
		registry.addResourceHandler("/sass/**").addResourceLocations("/WEB-INF/views/tools/sass/");
		registry.addResourceHandler("/tools/**").addResourceLocations("/WEB-INF/views/tools/");

	}
	
	@Override
    public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(new CheckLoginInterceptor());
		registry.addInterceptor(new MemberCheckLoginInterceptor());
		DisableCacheInterceptor  disableCacheInterceptor = new DisableCacheInterceptor();
        registry.addInterceptor(disableCacheInterceptor);
        
        OpenSessionInViewInterceptor openSessionInViewInterceptor = new OpenSessionInViewInterceptor();
	    openSessionInViewInterceptor.setSessionFactory(factory);
	    registry.addWebRequestInterceptor(openSessionInViewInterceptor).addPathPatterns("/_05_orderProcess/orderDetail");
    }
	
	
	@Bean
	public CommonsMultipartResolver multipartResolver() {
		CommonsMultipartResolver resolver = new CommonsMultipartResolver();
		resolver.setDefaultEncoding("UTF-8");
		resolver.setMaxUploadSize(81920000);
		return resolver;
	}
	
}
