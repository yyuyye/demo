package com.example.demo.service;

import com.example.demo.dao.QuestionRepository;
import com.example.demo.entity.Questions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestionService {

    @Autowired
    private QuestionRepository questionRepository;

    public List<Questions> findAll() {
        return questionRepository.findAll();
    }

    public List<Questions> getAllQuestions(int questionId) {
        return questionRepository.findByTestTypeId(questionId);
    }
}
