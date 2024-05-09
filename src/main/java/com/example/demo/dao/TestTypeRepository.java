package com.example.demo.dao;

import com.example.demo.entity.TestTypes;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TestTypeRepository extends JpaRepository<TestTypes, Integer> {
}