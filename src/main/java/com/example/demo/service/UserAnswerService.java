package com.example.demo.service;

import com.example.demo.dao.TestResultRepository;
import com.example.demo.dao.TestTypeRepository;
import com.example.demo.dao.UserAnswersRepository;
import com.example.demo.entity.TestResult;
import com.example.demo.entity.TestTypes;
import com.example.demo.entity.UserAnswers;
import org.apache.ibatis.annotations.Insert;
import org.springframework.beans.NotWritablePropertyException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class UserAnswerService {
    @Autowired
    private UserAnswersRepository repository;
    @Autowired
    private TestTypeRepository testTypeRepository;

    public boolean saveUserAnswer(Integer uid, Integer testTypeId, String resultDescription) {

        // 从testtypes表中查询testTypeName
        TestTypes testTypes = testTypeRepository.findById(testTypeId).orElseThrow(() -> new RuntimeException("TestType not found"));
        String testTypeName = testTypes.getName();


        UserAnswers userAnswer = new UserAnswers(); // 假设UserAnswers是您的实体
        userAnswer.setUserId(uid);
        userAnswer.setTestTypesId(testTypeId);
//        String testTypeName =
        userAnswer.setTestName(testTypeName);
        userAnswer.setCreatedAt(new Date());
        userAnswer.setTestResult(resultDescription);

        repository.save(userAnswer);
        return true; // 或根据需要处理异常
    }

    @Autowired
    private UserAnswersRepository userAnswersRepository;

    public List<UserAnswers> getTestResultsByUserId(Integer userId) {
        // 调用Repository层的方法来获取数据
        return userAnswersRepository.findByUserId(userId);
    }
}

