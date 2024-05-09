package com.example.demo.dao;

import com.example.demo.entity.Questions;
import com.example.demo.entity.StandardOptions;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

@Mapper
public interface StandardOptionsDao {

    @Select("SELECT option_text FROM standard_options")
    List<String> getAllOptionTexts();
}
