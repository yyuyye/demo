package com.example.demo.dao;

import com.example.demo.entity.Questions;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


public interface QuestionRepository extends JpaRepository<Questions, Long> {
    List<Questions> findByTestTypeId(int questionId);
    // 这里可以根据需要添加自定义查询方法
}
