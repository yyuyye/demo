package com.example.demo.controller;

import com.example.demo.entity.UserAnswers;
import com.example.demo.service.UserAnswerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("answer")
public class UserAnswersController {

    @Autowired
    private UserAnswerService userAnswersService;

    @GetMapping("userAnswer")
    public ResponseEntity<?> getTestResultsByUserId(@RequestParam("userId") Integer userId) {
        try {
            // 调用服务层方法获取用户的测试结果
            List<UserAnswers> testResults = userAnswersService.getTestResultsByUserId(userId);
            return ResponseEntity.ok(testResults);
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to get test results: " + e.getMessage());
        }
    }
}