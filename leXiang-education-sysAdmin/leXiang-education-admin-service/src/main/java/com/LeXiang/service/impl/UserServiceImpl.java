package com.LeXiang.service.impl;


import com.LeXiang.education.sysAdmin.common.model.Admin;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.Permissions;
import com.LeXiang.education.sysAdmin.common.model.Role;
import com.LeXiang.mapper.AdminMapper;
import com.LeXiang.service.UserSerivce;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class UserServiceImpl implements UserSerivce {

    @Autowired
    private AdminMapper userMapper;

    @Override
    public Map<String,Object> adminLogin(Admin user) {

        HashMap<String, Object> map = new HashMap<>();
        map.put("code",1);
        map.put("msg","无敌");

        return map;
    }

    @Override
    public Admin getUserByName(String userName) {
        Permissions permissions1 = new Permissions("1","query");
        Permissions permissions2 = new Permissions("2","add");
        Set<Permissions> permissionsSet = new HashSet<>();
        permissionsSet.add(permissions1);
        permissionsSet.add(permissions2);
        Role role = new Role("1","admin",permissionsSet);
        Set<Role> roleSet = new HashSet<>();
        roleSet.add(role);
        Admin user = new Admin(1l,"wsl","123456",roleSet);
        Md5Hash md5Hash= new Md5Hash(user.getEncodedPassword(),user.getUsername(),1);
        String s = md5Hash.toString();
        user.setEncodedPassword(s);
        userMapper.insert(user);
        Map<String ,Admin> map = new HashMap<>();
        map.put(user.getUsername(), user);

        Permissions permissions3 = new Permissions("3","query");
        Set<Permissions> permissionsSet1 = new HashSet<>();
        permissionsSet1.add(permissions3);
        Role role1 = new Role("2","user",permissionsSet1);
        Set<Role> roleSet1 = new HashSet<>();
        roleSet1.add(role1);
        Admin user1 = new Admin(2l,"zhangsan","123456",roleSet1);
        Md5Hash md5Hash2= new Md5Hash(user1.getEncodedPassword(),user1.getUsername(),1);
        String s2 = md5Hash.toString();
        user.setEncodedPassword(s2);
        userMapper.insert(user1);
        map.put(user1.getUsername(), user1);

        System.out.println(map.get(userName)+"66666666666666666");
        return map.get(userName);
    }


}
