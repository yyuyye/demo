package com.example.demo.service;

public interface EmailService {
    /**
     * toEmail 接收验证码的邮箱
     * text 主题
     * message 主体信息
     */
    public boolean sendEmail(String toEmail, String text, String message);
}
