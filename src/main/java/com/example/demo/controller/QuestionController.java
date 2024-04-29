package com.example.demo.controller;

import com.example.demo.entity.Questions;
import com.example.demo.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("questions")
public class QuestionController {

    @Autowired
    private QuestionService questionService;

    @GetMapping
    public ResponseEntity<List<Questions>> getAllQuestions(@RequestParam("questionId") int questionId) {
        List<Questions> questions = questionService.getAllQuestions(questionId);
        return ResponseEntity.ok(questions);
    }
}
