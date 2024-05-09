package com.example.demo.service;

import com.example.demo.dao.QuestionRepository;
import com.example.demo.entity.Options;
import com.example.demo.entity.Questions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class QuestionService {

    @Autowired
    private QuestionRepository questionRepository;

    public List<Questions> findAll() {
        return questionRepository.findAll();
    }

    public List<Questions> getAllQuestions(int testTypeId) {
//        return questionRepository.findByTestTypeId(questionId);

        List<Questions> questionsList = questionRepository.findByTestTypeId(testTypeId);
//        List<Questions> questionsList = new ArrayList<>();

//        for (Object[] row : result) {
//            Questions question = new Questions();
//            question.setId((Integer) row[0]); // Assuming ID is at index 0
//            question.setQuestionText((String) row[1]); // Assuming question text is at index 1
//            // Set other properties similarly
//            questionsList.add(question);
//        }
        return questionsList;
    }
}
