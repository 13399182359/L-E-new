package com.LeXiang.service;

import com.LeXiang.education.sysAdmin.common.model.Admin;


import java.util.Map;

public interface UserSerivce {
    /**
     * 用户列表信息
     * @param
     * @return
     */
    public Map<String,Object> adminLogin(Admin admin);


    Admin getUserByName(String userName);
}
