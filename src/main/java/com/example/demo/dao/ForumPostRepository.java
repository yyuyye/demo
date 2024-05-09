package com.example.demo.dao;

import com.example.demo.entity.ForumPost;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ForumPostRepository extends JpaRepository<ForumPost, Long> {

}
