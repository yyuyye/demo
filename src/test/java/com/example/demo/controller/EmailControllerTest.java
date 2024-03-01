package com.example.demo.controller;

import com.example.demo.service.EmailService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import javax.servlet.http.HttpSession;

import static org.mockito.Mockito.*;
import static org.junit.jupiter.api.Assertions.*;

@ExtendWith(MockitoExtension.class)
public class EmailControllerTest {

    @Mock
    private EmailService emailService;

    @Mock
    private HttpSession httpSession;

    @InjectMocks
    private EmailController emailController;

    @BeforeEach
    public void setUp() {
        // 初始化测试环境
    }

    @Test
    public void testGetEmailSuccess() {
        // Arrange
        String toEmail = "176230045044@163.com";
        when(emailService.sendEmail(eq(toEmail), anyString(), anyString())).thenReturn(true);

        // Act
        String result = emailController.getEmail(toEmail, httpSession);

        // Assert
        assertEquals("获取成功", result, "The email should be sent successfully.");
        verify(emailService, times(1)).sendEmail(eq(toEmail), anyString(), anyString());
        verify(httpSession, times(1)).setAttribute(eq("code"), anyInt());
    }

    @Test
    public void testGetEmailFailure() {
        // Arrange
        String toEmail = "176230045044@163.com";
        when(emailService.sendEmail(eq(toEmail), anyString(), anyString())).thenReturn(false);

        // Act
        String result = emailController.getEmail(toEmail, httpSession);

        // Assert
        assertEquals("获取失败", result, "The email should not be sent successfully.");
        verify(emailService, times(1)).sendEmail(eq(toEmail), anyString(), anyString());
        verify(httpSession, never()).setAttribute(eq("code"), anyInt());
    }
}
