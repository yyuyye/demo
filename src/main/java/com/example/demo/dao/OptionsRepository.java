package com.example.demo.dao;

import com.example.demo.entity.Options;
import com.example.demo.entity.Questions;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface OptionsRepository extends JpaRepository<Questions, Long> {


}
