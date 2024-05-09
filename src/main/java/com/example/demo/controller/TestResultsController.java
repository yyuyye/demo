package com.example.demo.controller;

import com.example.demo.service.TestResultService;
import com.example.demo.service.UserAnswerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("test-results")
public class TestResultsController {
    @Autowired
    private TestResultService testResultService;

    @Autowired
    private UserAnswerService userAnswerService;

    @PostMapping
    public ResponseEntity<?> evaluateTest(@RequestBody Map<String, Object> requestBody) {
        Integer testTypeId = (Integer) requestBody.get("testTypeId");
        Integer totalScore = (Integer) requestBody.get("totalScore");
        Integer uid = Integer.parseInt(String.valueOf(requestBody.get("uid")));

        if (testTypeId == null || totalScore == null) {
            return ResponseEntity.badRequest().body("Missing 'testTypeId' or 'totalScore' in request body");
        }

        String resultDescription = testResultService.findResultDescriptionByScoreRangeAndTypeId(totalScore, testTypeId);
        System.out.println(resultDescription);
        userAnswerService.saveUserAnswer(uid,testTypeId,resultDescription);
        return ResponseEntity.ok(Map.of("resultDescription", resultDescription));
    }
}
