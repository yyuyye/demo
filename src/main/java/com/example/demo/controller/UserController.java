package com.example.demo.controller;

import com.alibaba.druid.util.StringUtils;
import com.alibaba.fastjson.JSONObject;
import com.example.demo.entity.User;
import com.example.demo.result.R;
import com.example.demo.service.UserService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.rmi.MarshalledObject;
import java.util.HashMap;
import java.util.Map;

/**
 * (User)表控制层
 *
 * @author makejava
 * @since 2023-12-15 15:27:28
 */
@RestController
@RequestMapping("user")
public class UserController {
    @RequestMapping(value = "/hello")
    public String sayHello() {
        return "hello,world!";
    }

    @Resource
    private UserService userService;


    @RequestMapping("/login")
    public R save( @RequestBody Map<String, String> requestBody ) {
        String username = requestBody.get("username");
        String password = requestBody.get("password");
        Map map;
        map = userService.login(username, password);
        if (map.size() > 0) {
            return new R(map);
        } else {
            return new R("201", "error", "用户名或者密码错误");
        }
    }
    @RequestMapping("/register")
    public R register(@RequestBody Map<String, String> requestBody) {
        User user = new User();
        user.setUid(requestBody.get("billId"));
        user.setUsername(requestBody.get("username"));
        user.setPassword(requestBody.get("password"));
        user.setEmail(requestBody.get("email"));
        user.setAvatar("/static/1.jpg");
        Map map = userService.save(user);
        if (map.get("msg").equals("注册成功")){
            return new R("200", "success", "注册成功");
        } else if (map.get("msg").equals("该用户已存在")){
            return new R("201", "error", "该用户已存在");
        } else {
            return new R("201", "error", "注册失败");
        }
    }

    @RequestMapping("/avatar")
    public R avatar( @RequestBody Map<String, String> requestBody ) {
        String avatar = requestBody.get("avatar");
        String uid = requestBody.get("uid");
        Map map;
        map = userService.updateavatar(avatar, uid);
        if (map.size() > 0) {
            return new R(map);
        } else {
            return new R("201", "error", "修改头像失败！");
        }
    }

    @RequestMapping("/username")
    public R username( @RequestBody Map<String, String> requestBody ) {
        String username = requestBody.get("username");
        String uid = requestBody.get("uid");
        Map map;
        map = userService.updateusername(username, uid);
        if (map.size() > 0) {
            return new R(map);
        } else {
            return new R("201", "error", "修改名字失败！");
        }
    }


    @PostMapping("/password")
    public R changePassword(@RequestBody Map<String, String> requestBody) {
        String oldpwd = requestBody.get("oldPassword");
        String newpwd = requestBody.get("newPassword");
        String uid = requestBody.get("uid");
        Map map = new HashMap();
        map = userService.changePassword(oldpwd, newpwd,uid);
        if (map.get("msg").equals("success")){
            return new R("200", "success", "修改成功");
        } else if (map.get("msg").equals("旧密码错误")){
            return new R("201", "error", "旧密码错误");
        } else {
            return new R("201", "error", "新密码不能与旧密码相同");
        }
    }

}

