package com.example.demo.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

import java.io.Serial;
import java.io.Serializable;

/**
 * (User)实体类
 *
 * @author makejava
 * @since 2023-12-15 15:27:29
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Component
public class User implements Serializable {
    @Serial
    private static final long serialVersionUID = 925348207891454661L;
    /**
     * 主键
     */
    private Integer id ;



    private String uid;

    private String username;

    private String password;

    private String email;



    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }


}

