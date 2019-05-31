package cn.lyl.ssmqxdemo.controller;

import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.annotation.RequiresGuest;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import cn.lyl.ssmqxdemo.model.User;
import cn.lyl.ssmqxdemo.service.UserService;
import cn.lyl.ssmqxdemo.tools.AesEncryptUtil;

@Controller
public class UserController extends BaseController {
	
	@Autowired
	private UserService userService;
	
	//@RequiresGuest
	@GetMapping(value= {"/login","/"})
	public String login(Model model,HttpSession session,String info) {
		if(info !=null && info != "") {
			model.addAttribute("info",info);
		}
		int hashCodeV = UUID.randomUUID().hashCode();
		if(hashCodeV < 0) hashCodeV = -hashCodeV;
		String uuidSalt = 1+String.format("%015d", hashCodeV);
		model.addAttribute("uuidSalt",uuidSalt);
		session.setAttribute("uuidSalt", uuidSalt);
		return "login";
	}
	
	@PostMapping("/userLogin")
	public String userLogin(User user,HttpSession session,Integer rememberme) throws Exception {
		//对获取的前端aes加密后的密码进行解密
		String key = (String) session.getAttribute("uuidSalt");
		String password = AesEncryptUtil.desEncrypt(user.getPassword(), key, key);
		session.removeAttribute("uuidSalt");
		String password2 = password.trim();
		//System.out.println(password2.length());
		//使用shiro框架做登陆认证
		//1获取subject对象
		Subject subject = SecurityUtils.getSubject();
		//2将表单提交过来的用户用户名和密码封装到token中
		UsernamePasswordToken token = new UsernamePasswordToken(user.getUsername(),password2);
		//3调用subject中的login方法进行验证
		if(rememberme != null && rememberme ==1  ) {
			token.setRememberMe(true);
		}
		try {
			subject.login(token);
		} catch (Exception e) {
			e.printStackTrace();
			return "loginError";
		}
		return "redirect:/admin";
	}
	
	@GetMapping("/logout")
	public String logout() {
		SecurityUtils.getSubject().logout(); //实现登出，跳回登陆页面
		return "redirect:/login";
	}
	
	@PostMapping("/userRegist")
	public String userRegist(User user) {
		Integer roleid = 1;
		int i = userService.addUser(user, roleid);
		String info;
		if(i>1) {
			info = "regist success!";
		}else {
			info = "regist fail!";
		}
		return "redirect:/login?info="+info;
	}
}
