package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.example.demo.service.EmailService;
import com.example.demo.dao.EmailVerificationCodeRepository;
import com.example.demo.entity.EmailVerificationCode;


import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;
import java.util.Random;


@CrossOrigin(origins = "http://localhost:8080")
@RestController
public class EmailController {
    @Autowired
    private EmailService emailService;

    @Autowired
    private EmailVerificationCodeRepository codeRepository;

    @RequestMapping("getEmailCode")
    public Map<String, String> getEmail(@RequestParam String toEmail) {
        Random random = new Random();
        String verificationCode = String.format("%06d", random.nextInt(999999));

        Map<String, String> response = new HashMap<>();

        if (emailService.sendEmail(toEmail, "验证码", "欢迎注册，您的验证码为：" + verificationCode)) {
            // 保存验证码到数据库
            LocalDateTime expiredAt = LocalDateTime.now().plusMinutes(5); // 验证码有效期为5分钟
            EmailVerificationCode EmailVerificationCode = new EmailVerificationCode();
            EmailVerificationCode.setEmail(toEmail);
            EmailVerificationCode.setVerificationCode(verificationCode);
            EmailVerificationCode.setCreatedAt(LocalDateTime.now());
            EmailVerificationCode.setExpiredAt(expiredAt);
            codeRepository.save(EmailVerificationCode);

            response.put("status", "获取成功");
        } else {
            response.put("status", "获取失败");
        }

        return response;
    }

    @RequestMapping("checkEmailCode")
    public String checkEmailCode(@RequestBody EmailVerificationCode request) {
        LocalDateTime currentTime = LocalDateTime.now();
        Optional<EmailVerificationCode> codeOptional = codeRepository.findByEmailAndVerificationCodeAndExpiredAtGreaterThan(
                request.getEmail(), request.getVerificationCode(),currentTime);

        if (codeOptional.isPresent()) {
            return "验证码正确";
        } else {
            return "验证码错误或已过期";
        }
    }
}

