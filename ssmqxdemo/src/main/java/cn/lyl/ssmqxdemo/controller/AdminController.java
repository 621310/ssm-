package cn.lyl.ssmqxdemo.controller;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;

import cn.lyl.ssmqxdemo.model.Role;
import cn.lyl.ssmqxdemo.model.User;
import cn.lyl.ssmqxdemo.service.RoleService;
import cn.lyl.ssmqxdemo.service.UserService;

@Controller
public class AdminController {
	@Autowired
	private RoleService roleService;
	@Autowired
	private UserService userService;

	@GetMapping("/admin")
	public String admin(Model model) {
		Date date = new Date();
		int year = date.getYear()+1900;
		int month = date.getMonth()+1;
		int day = date.getDate();
		model.addAttribute("year",year);
		model.addAttribute("month",month);
		model.addAttribute("day",day);
		return "admin/admin";
	}
	
	@RequestMapping(value="/admin/sysuser",method=RequestMethod.GET,produces="text/html;charset=UTF-8")
	public String usermanger(Model model,Integer pageNum,Integer pageSize,String info) {
		model.addAttribute("info",info);
		//将所有角色注入到添加用户的表单
		List<Role> rolelist = roleService.selectAll();
		model.addAttribute("addroles",rolelist);
		//关联查询注入所有用户信息
		//List<User> userlist = userService.selectAllUser();//关联查询，这里的用户包括用户的角色
		//model.addAttribute("userlist",userlist);
		if(pageNum == null || pageNum == 0) pageNum =1 ;
		if(pageSize == null || pageSize == 0 ) pageSize = 10;
		PageInfo<User> users = userService.selectUserByPager(pageNum, pageSize);
		model.addAttribute("users",users);
		return "admin/sysuser";
	}
	
	@PostMapping("/admin/adduser")
	public String adminaddUser(User user,Integer roleid) {
		int i = userService.addUser(user,roleid);
		String info;
		if(i>1) {
			info = "add user success!";
		}else {
			info = "add user fail!";
		}
		return "redirect:/admin/sysuser?info="+info;
	}
	
	@RequestMapping(value="/admin/updateUserView",method=RequestMethod.GET,produces="text/html;charset=UTF-8")
	public String updateUser(Model model,Integer id,Integer pageNum) {
		model.addAttribute("pageNum",pageNum);//点击取消后返回进来时的页码
		//将所有角色注入到修改用户的表单
		List<Role> rolelist = roleService.selectAll();
		model.addAttribute("addroles",rolelist);
		
		//将当前ID的角色信息注入到修改信息页面
		User user = userService.selectByPrimaryKey(id);
		model.addAttribute("user",user);
		return "admin/updateuser";
	}
	
	@PostMapping("/admin/updateuser")
	public String updateUser(User user,Integer roleid,Integer pageNum,Integer pageSize) {
			int i = userService.updateUserAndRole(user,roleid);
			String info;
			if(i>1) {
				info = "update user success!";
			}else {
				info = "update user fail!";
			}
		return "redirect:/admin/sysuser?pageNum="+pageNum+"&info="+info;
	
	}
	
	@PostMapping("/admin/deleteuser")
	public String deleteUser(Integer pageNum,Integer id) {
		int i = userService.deleteUserAndRole(id);
		String info;
		if(i>1) {
			info = "delete user success!";
		}else {
			info = "delete user fail!";
		}
		return "redirect:/admin/sysuser?pageNum="+pageNum+"&info="+info;
	}
	
	@ResponseBody
	@PostMapping("/admin/batchDeleteUser")
	public String batchdeleteUser(String id) {
		id = id.substring(1, id.length()-1);
		id = id.replaceAll("\"","");
		String[] idstr = id.split(",");
		Integer[] idInt = new Integer[idstr.length];
		for(int i = 0;i<idstr.length;i++) {
			idInt[i] = Integer.parseInt(idstr[i]);
		}
		userService.deleteBatchUser(idInt);
		return "success";
	}
	
	@PostMapping("/admin/searchUser")
	public String searchUserByusernameOrphone(String username,String phone,Model model) {
		int pageNum = 1;
		int pageSize = 10;
		PageInfo<User> users = userService.selectUserByusernameOrphone(pageNum,pageSize,username,phone);
		model.addAttribute("users",users);
		return "admin/sysuser";
	}
}
