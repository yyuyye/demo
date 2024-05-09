package com.example.demo.dao;

import com.example.demo.entity.UserAnswers;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserAnswersRepository extends JpaRepository<UserAnswers, Long> {
    // 自定义查询方法可以放在这里
        List<UserAnswers> findByUserId(Integer userId);
    }

