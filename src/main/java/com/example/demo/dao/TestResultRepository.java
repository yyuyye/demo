package com.example.demo.dao;

import com.example.demo.entity.TestResult;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;


public interface TestResultRepository extends JpaRepository<TestResult, Long> {
    Optional<TestResult> findFirstByScoreBetweenAndTestTypeIdOrderByScoreDesc(Integer minScore, Integer maxScore, Integer testTypeId);

}

