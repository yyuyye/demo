package com.example.demo.controller;

import com.example.demo.entity.DTO.ForumPostDto;
import com.example.demo.entity.ForumPost;
import com.example.demo.service.ForumPostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("posts")
public class ForumPostController {

    @Autowired
    private ForumPostService forumPostService;

    @GetMapping("getAllPosts")
    public List<ForumPost> getAllPosts() {
        return forumPostService.getAllPosts();
    }
    @PostMapping("/createPost")
    public ResponseEntity<ForumPost> createPost(@RequestBody ForumPostDto postDto) {
        ForumPost post = convertToEntity(postDto);
        ForumPost savedPost = forumPostService.createPost(post, postDto.getImageUrls());
        return ResponseEntity.ok(savedPost);
    }
    private ForumPost convertToEntity(ForumPostDto postDto) {
        ForumPost post = new ForumPost();
        post.setTitle(postDto.getTitle());
        post.setSummary(postDto.getSummary());
        post.setDate(postDto.getDate());
        post.setUserAvatar(postDto.getUserAvatar());
        post.setAuthorId(postDto.getAuthorId());  // 确保你的 DTO 包含 authorId 字段

        // 对于图片 URL，我们在 Service 层处理，这里不需要设置
        return post;
    }


}