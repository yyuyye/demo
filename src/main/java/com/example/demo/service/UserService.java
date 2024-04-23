package com.example.demo.service;

import com.example.demo.entity.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

import java.util.Map;

/**
 * (User)表服务接口
 *
 * @author makejava
 * @since 2023-12-15 15:27:29
 */
public interface UserService {
    Map login(String username, String password);

    Map save(User user);

    Map update(String avatar,String uid);


}
