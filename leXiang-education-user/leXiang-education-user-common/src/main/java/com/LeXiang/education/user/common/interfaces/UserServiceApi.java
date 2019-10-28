package com.LeXiang.education.user.common.interfaces;


import com.LeXiang.education.user.common.model.PageBean;
import com.LeXiang.education.user.common.model.User;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface UserServiceApi {

    /**
     * 用户列表查询
     * @param user
     * @return
     */



    @RequestMapping("regist")
    void regist(@RequestBody User user);

    @RequestMapping("getUserByName")
    User getUserByName(@RequestParam String username);



}
