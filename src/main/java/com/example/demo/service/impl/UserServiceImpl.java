package com.example.demo.service.impl;

import com.example.demo.entity.User;
import com.example.demo.dao.UserDao;
import com.example.demo.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.ErrorManager;

/**
 * (User)表服务实现类
 *
 * @author makejava
 * @since 2023-12-15 15:27:29
 */
@Service("userService")
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao userDao;
    @Resource
    private User user;
     @Override
     public Map login(String username, String password){
        user=userDao.login(username,password);
         HashMap map = new HashMap();
        if (user == null){
            return map;
        }
        map.put("username",user.getUsername());
        map.put("email",user.getEmail());
        return map;
    }

    @Override
    public Map save(User user) {
        String uid = user.getUid();
        String password = user.getPassword();
        String email = user.getEmail();
        String username = user.getUsername();
        Map map = new HashMap();
        if (userDao.query(uid) != null) {
            map.put("msg", "该用户已存在");
        } else {
            userDao.save(uid, username, email, password);
            map.put("msg", "注册成功");
        }

        return map;
    }

}
