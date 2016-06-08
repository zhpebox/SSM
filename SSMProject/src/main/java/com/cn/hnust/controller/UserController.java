package com.cn.hnust.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.POST;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.hnust.pojo.JsonUser;
import com.cn.hnust.pojo.User;
import com.cn.hnust.service.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {
  @Resource
  private IUserService userService;
  
  @RequestMapping("/showUser")
  public String toIndex(HttpServletRequest request,Model model){
    int userId = Integer.parseInt(request.getParameter("id"));
    User user = this.userService.getUserById(userId);
    model.addAttribute("user", user);
    return "showUser";
  }
  
//  @RequestMapping(value="/saveUser",method={RequestMethod.POST})
  @RequestMapping("/saveUser")
  @POST
  @ResponseBody
  public String saveUser(@RequestBody List<JsonUser> users){
	  System.out.println(users.size());
	  return "{trr:'www'}";
  }
}