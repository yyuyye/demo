package com.example.demo.service;

import com.example.demo.dao.ForumPostRepository;
import com.example.demo.entity.ForumPost;
import com.example.demo.entity.PostImage;
import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ForumPostService {

    @Autowired
    private ForumPostRepository forumPostRepository;

    public List<ForumPost> getAllPosts() {
        List<ForumPost> posts = forumPostRepository.findAll();
        posts.forEach(post -> Hibernate.initialize(post.getImages()));  // 初始化图片信息
        return posts;
    }


    public ForumPost createPost(ForumPost post, List<String> imageUrls) {
        List<PostImage> images = imageUrls.stream().map(url -> {
            PostImage img = new PostImage();
            img.setImageUrl(url);
            img.setForumPost(post);  // 设置反向引用
            return img;
        }).collect(Collectors.toList());

        post.setImages(images);  // 设置图片到帖子
        return forumPostRepository.save(post);  // 保存帖子和图片
    }

    // 其他业务逻辑方法...

}