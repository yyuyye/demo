package com.example.demo.controller;

import com.example.demo.entity.Options;
import com.example.demo.entity.Questions;
import com.example.demo.service.QuestionService;
import com.example.demo.service.StandardOptionsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("questions")
public class QuestionController {

    @Autowired
    private QuestionService questionService;
    @Autowired
    private StandardOptionsService standardOptionsService;


    @GetMapping
    public ResponseEntity<List<Questions>> getAllQuestions(@RequestParam("testTypeId") int testTypeId) {
        List<Questions> questions = questionService.getAllQuestions(testTypeId);
        List<String> options = standardOptionsService.findAllOptions();

        return ResponseEntity.ok(questions);
    }
}
