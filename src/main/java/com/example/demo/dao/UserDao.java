package com.example.demo.dao;

import com.example.demo.entity.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.Map;

/**
 * (User)表数据库访问层
 *
 * @author makejava
 * @since 2023-12-15 15:27:29
 */
public interface UserDao {

    @Select("select * from mentaltest.user t where t.uid = #{uid} AND t.password = #{password}")
    public User login(String uid, String password);

    @Insert("insert into mentaltest.user (uid,username,email,password,avatar) values (#{uid},#{username},#{email},#{password},#{avatar})")
    public void save(String uid, String username, String email, String password, String avatar);

    @Select("select * from mentaltest.user t where t.uid = #{uid}")
    User query(String uid);

    @Update("update mentaltest.user t set t.avatar = #{avatar} where t.uid = #{uid}")
    public void updateavatar(String avatar, String uid);

    @Update("update mentaltest.user t set t.username = #{usernmae} where t.uid = #{uid}")
    public void updateusername(String usernmae, String uid);

    @Update("update mentaltest.user t set t.password = #{pwd} where t.uid = #{udi}")
    public void changePassword(String pwd, String udi);

    @Update("update mentaltest.user t set t.email = #{email} where t.uid = #{uid}")
    public void changeEmail(String email, String uid);
}

