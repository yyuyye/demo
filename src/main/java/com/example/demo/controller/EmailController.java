package com.example.demo.controller;
import org.springframework.web.bind.annotation.*;
import com.example.demo.service.EmailService;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
@CrossOrigin(origins = "http://localhost:8080")
@RestController
public class EmailController {
    public static class EmailVerificationRequest {
        private String code;

        public String getCode() {
            return code;
        }

        public void setCode(String code) {
            this.code = code;
        }

        public String getHttpSessionId() {
            return httpSessionId;
        }

        public void setHttpSessionId(String httpSessionId) {
            this.httpSessionId = httpSessionId;
        }

        private String httpSessionId;

        // getters and setters
    }
    @Resource
    private EmailService emailService;

    @RequestMapping("getEmailCode")
    //通过httpsession来存入验证码值
    public Map<String, String> getEmail(@RequestParam String toEmail, HttpSession httpSession) {
        Random random = new Random();
        //生成随机验证码
        int code = 1000 + random.nextInt(8999);
        //把验证码存入session中
        httpSession.setAttribute("code", code);
        System.out.println(httpSession.getAttribute("code"));
        System.out.println(httpSession.getId());
        Map<String,String> response = new HashMap<>();
        //执行发送验证码
        if (emailService.sendEmail(toEmail, "验证码", "欢迎注册，您的验证码为：" + code)) {
            response.put("status","获取成功");
            response.put("sessionId", httpSession.getId());
        }else {
            response.put("status","获取失败");
        }
        return response ;
    }

    @RequestMapping("checkEmailCode")
    public String checkEamilCode(@RequestBody EmailVerificationRequest request  , HttpSession httpSession) {
        //从session中取出验证码

        if (httpSession.getAttribute("code")==null){
            System.out.println(httpSession.getId());
            System.out.println(httpSession.getAttribute("code"));
            System.out.println("验证码为空");
        }
        String code1 = httpSession.getAttribute("code").toString();
        if (request.code.equals(code1)) {
            return "验证码正确";
        }

        return "验证码错误";
    }




}
