package com.LeXiang.service.impl;

import com.LeXiang.education.user.common.model.*;
import com.LeXiang.mapper.UserMapper;
import com.LeXiang.service.UserSerivce;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.actuate.trace.http.HttpTrace;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.*;

@Service
public class UserServiceImpl implements UserSerivce {

    @Autowired
    private UserMapper userMapper;
    @Resource
    private RedisTemplate<String,Object>  redisTemplate;

    @Override
    public Map<String, Object> regist(User user) {
        Map<String, Object> result =new HashMap<>();
        userMapper.insertUser(user);
        return result;
    }

    @Override
    public User getUserByName(String username) {
         Map<String ,User> map = new HashMap<>();
        User user1=new User();
        user1.setUsername(username);
        User user=userMapper.getUserName(user1);
        User user2 = (User) redisTemplate.opsForValue().get("user");
        redisTemplate.delete("user");
        redisTemplate.opsForValue().set("user",user);




        return user;
    }




























































/*
    @Override
    public PageBean<User> userList(User user, Integer page, Integer rows) {
        int totalSize = userMapper.getCount();
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("user",user);
        PageBean<User> userPageBean = new PageBean<User>(page, rows, totalSize);
        List<User> userList = userMapper.userList(map);
        userPageBean.setList(userList);
        return userPageBean;
    }

    @Override
    public Boolean insert(User user) {
        return userMapper.insert(user);
    }

    @Override
    public Boolean delete(Long id) {
        return userMapper.delete(id);
    }

    @Override
    public User queryUserById(Long id) {
        System.out.println(id);
        return userMapper.queryUserById(id);
    }

    @Override
    public Boolean update(User id) {
        return userMapper.update(id);
    }*/
}
