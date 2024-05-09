package com.example.demo.service;

import com.example.demo.dao.TestResultRepository;
import com.example.demo.entity.TestResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TestResultService {
    @Autowired
    private TestResultRepository repository;

    public String findResultDescriptionByScoreRangeAndTypeId(int score, int testTypeId) {
        if (testTypeId == 1) {
            if (score <= 8) {
                return repository.findFirstByScoreBetweenAndTestTypeIdOrderByScoreDesc(0, 8, testTypeId)
                        .map(TestResult::getResultText)
                        .orElse("未找到相应的测试结果，请确保提供的得分和测试类型有效。");
            } else if (score <= 16) {
                return repository.findFirstByScoreBetweenAndTestTypeIdOrderByScoreDesc(9, 16, testTypeId)
                        .map(TestResult::getResultText)
                        .orElse("未找到相应的测试结果，请确保提供的得分和测试类型有效。");
            } else if (score <= 24) {
                return repository.findFirstByScoreBetweenAndTestTypeIdOrderByScoreDesc(17, 24, testTypeId)
                        .map(TestResult::getResultText)
                        .orElse("未找到相应的测试结果，请确保提供的得分和测试类型有效。");
            } else if (score <= 32) {
                return repository.findFirstByScoreBetweenAndTestTypeIdOrderByScoreDesc(25, 32, testTypeId)
                        .map(TestResult::getResultText)
                        .orElse("未找到相应的测试结果，请确保提供的得分和测试类型有效。");
            } else {
                return repository.findFirstByScoreBetweenAndTestTypeIdOrderByScoreDesc(33, 40, testTypeId)
                        .map(TestResult::getResultText)
                        .orElse("未找到相应的测试结果，请确保提供的得分和测试类型有效。");
            }
        } else if (testTypeId == 2){
            if (score <= 10) {
                return repository.findFirstByScoreBetweenAndTestTypeIdOrderByScoreDesc(0, 10, testTypeId)
                        .map(TestResult::getResultText)
                        .orElse("未找到相应的测试结果，请确保提供的得分和测试类型有效。");
            } else if (score <= 20) {
                return repository.findFirstByScoreBetweenAndTestTypeIdOrderByScoreDesc(11, 20, testTypeId)
                        .map(TestResult::getResultText)
                        .orElse("未找到相应的测试结果，请确保提供的得分和测试类型有效。");
            } else if (score <= 30) {
                return repository.findFirstByScoreBetweenAndTestTypeIdOrderByScoreDesc(21, 30, testTypeId)
                        .map(TestResult::getResultText)
                        .orElse("未找到相应的测试结果，请确保提供的得分和测试类型有效。");
            } else if (score <= 40) {
                return repository.findFirstByScoreBetweenAndTestTypeIdOrderByScoreDesc(31, 40, testTypeId)
                        .map(TestResult::getResultText)
                        .orElse("未找到相应的测试结果，请确保提供的得分和测试类型有效。");
            }else if (score <= 60) {
                return repository.findFirstByScoreBetweenAndTestTypeIdOrderByScoreDesc(41, 60, testTypeId)
                        .map(TestResult::getResultText)
                        .orElse("未找到相应的测试结果，请确保提供的得分和测试类型有效。");
            } else {
                return repository.findFirstByScoreBetweenAndTestTypeIdOrderByScoreDesc(61, 80, testTypeId)
                        .map(TestResult::getResultText)
                        .orElse("未找到相应的测试结果，请确保提供的得分和测试类型有效。");
            }
        } else if (testTypeId ==3 ) {
            if (score <= 9) {
                return repository.findFirstByScoreBetweenAndTestTypeIdOrderByScoreDesc(0, 9, testTypeId)
                        .map(TestResult::getResultText)
                        .orElse("未找到相应的测试结果，请确保提供的得分和测试类型有效。");
            } else if (score <= 19) {
                return repository.findFirstByScoreBetweenAndTestTypeIdOrderByScoreDesc(10, 19, testTypeId)
                        .map(TestResult::getResultText)
                        .orElse("未找到相应的测试结果，请确保提供的得分和测试类型有效。");
            } else if (score <= 29) {
                return repository.findFirstByScoreBetweenAndTestTypeIdOrderByScoreDesc(20, 29, testTypeId)
                        .map(TestResult::getResultText)
                        .orElse("未找到相应的测试结果，请确保提供的得分和测试类型有效。");
            } else if (score <= 48) {
                return repository.findFirstByScoreBetweenAndTestTypeIdOrderByScoreDesc(30, 48, testTypeId)
                        .map(TestResult::getResultText)
                        .orElse("未找到相应的测试结果，请确保提供的得分和测试类型有效。");
            }
        }
        return null;
    }
}
