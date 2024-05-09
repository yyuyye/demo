package com.example.demo.dao;

import com.example.demo.entity.Questions;
import org.apache.ibatis.annotations.Select;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.test.context.jdbc.Sql;

import java.util.List;


public interface QuestionRepository extends JpaRepository<Questions, Long> {
//    @Query("SELECT q.id AS question_id, q.questionText, o.id AS option_id, so.optionText, so.score " +
//            "FROM Questions q " +
//            "JOIN Options o ON q.id = o.questionId " +
//            "JOIN StandardOptions  so ON o.standardOptionId = so.id " +
//            "WHERE q.testTypeId = ?1")
    List<Questions> findByTestTypeId(int testTypeId);
     //这里可以根据需要添加自定义查询方法
}
