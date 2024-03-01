package com.example.demo.controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import com.example.demo.service.EmailService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.Random;
@CrossOrigin(origins = "http://localhost:8080")
@RestController
public class EmailController {
    @Resource
    private EmailService emailService;

    @RequestMapping("getEmailCode")
    //通过httpsession来存入验证码值
    public String getEmail(@RequestParam String toEmail, HttpSession httpSession) {
        Random random = new Random();
        //生成随机验证码
        int code = 1000 + random.nextInt(8999);
        //把验证码存入session中
        httpSession.setAttribute("code", code);
        //执行发送验证码
        if (emailService.sendEmail(toEmail, "验证码", "欢迎注册，您的验证码为：" + code)) {
            return "获取成功";
        }
        return "获取失败";
    }

    @RequestMapping("checkEmailCode")
    public String checkEamilCode(String code, HttpSession httpSession) {
        //从session中取出验证码
        String code1 = httpSession.getAttribute("code").toString();
        if (code.equals(code1)) {
            return "验证码正确";
        }

        return "验证码错误";
    }

}
