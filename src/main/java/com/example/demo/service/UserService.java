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

    Map updateavatar(String avatar,String uid);

    Map updateusername(String username,String uid);

    Map changePassword(String old,String newpwd,String uid);

    Map changeEmail(String email,String uid);
}
