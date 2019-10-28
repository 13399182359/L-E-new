package com.LeXiang.service;

import com.LeXiang.education.user.common.model.PageBean;
import com.LeXiang.education.user.common.model.User;
import com.LeXiang.education.user.common.model.UserEntity;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;
import java.util.Optional;

public interface UserSerivce {
    /**
     * 用户列表信息
     * @param user
     * @return
     */


    Map<String,Object> regist(User user);

    User getUserByName(String username);


}
