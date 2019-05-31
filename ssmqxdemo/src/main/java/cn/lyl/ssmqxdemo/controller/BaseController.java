package cn.lyl.ssmqxdemo.controller;


import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authz.UnauthenticatedException;
import org.springframework.web.bind.annotation.ExceptionHandler;

public class BaseController {

	@ExceptionHandler(value={UnauthenticatedException.class, AuthenticationException.class})  
	public String authenticationException() {
		return "redirect:/login";
	}
}
