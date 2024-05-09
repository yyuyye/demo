package com.example.demo.entity;

import org.springframework.data.relational.core.sql.In;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "user_answers")
public class UserAnswers {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String testResult;

    private Integer userId;
    private Integer testTypesId;
    private String testName;

    public String getTestResult() {
        return testResult;
    }

    public void setTestResult(String testResult) {
        this.testResult = testResult;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getTestTypesId() {
        return testTypesId;
    }

    public void setTestTypesId(Integer testTypesId) {
        this.testTypesId = testTypesId;
    }

    public String getTestName() {
        return testName;
    }

    public void setTestName(String testName) {
        this.testName = testName;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    private Date createdAt;


    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }


}
