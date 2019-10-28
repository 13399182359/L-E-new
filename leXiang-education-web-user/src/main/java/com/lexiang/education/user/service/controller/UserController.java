package com.lexiang.education.user.service.controller;

import com.LeXiang.education.user.common.model.PlayClassgtj;
import com.LeXiang.education.user.common.model.Shop;
import com.LeXiang.education.user.common.model.User;
import com.LeXiang.education.user.service.ShopService;
import com.LeXiang.education.user.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller

public class UserController {
    @Resource
    private RedisTemplate<String,Object> redisTemplate;

    @Autowired
    private UserService userService;
    @Autowired
    private ShopService shopService;

    @RequestMapping("/userLogin")
    public String login(User user, HttpSession session, Model model) {
        redisTemplate.opsForValue().set("user",user);
        if(user!=null && user.getUsername()!=null){
            Md5Hash md5Hash= new Md5Hash(user.getEncodedpassword(),user.getUsername(),1);
            String s2 = md5Hash.toString();
            user.setEncodedpassword(s2);
        }
        String a="";
         //添加用户认证信息
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(
                user.getUsername(),
                user.getEncodedpassword()
        );
         try {
            //进行验证，这里可以捕获异常，然后返回对应信息
            subject.login(usernamePasswordToken);
//            subject.checkRole("admin");
//            subject.checkPermissions("query", "add");
        } catch (AuthenticationException e) {
            e.printStackTrace();
            return "账号或密码错误！";
        } catch (AuthorizationException e) {
            e.printStackTrace();
            return "没有权限";
        }
        System.out.println("登录成功");
        User userByName = userService.getUserByName(user.getUsername());
        session.setAttribute(session.getId(),userByName);
        model.addAttribute("user",userByName);
        return "login2";
    }
        @RequestMapping("queryEsAll")

         public List<PlayClassgtj> queryEsAll(Model model,String video) {
            video="W";
        List<PlayClassgtj> list = shopService.queryEsAll(video);
        model.addAttribute("videoAll",list);
         return list;
        }

        @RequestMapping("toVideoSource")
        public String toVideoSource(String search,Model model,HttpSession session,Integer page,Integer rows){
            User attribute = (User) session.getAttribute(session.getId());
           model.addAttribute("user",attribute);
            model.addAttribute("name",search);
            String playname=search;
            if(page==null || rows==null){
                page=1;
                rows=10;
            }

            List<PlayClassgtj> list = shopService.queryEsPlay(playname, page, rows);

            model.addAttribute("list",list);
            return  "videoSource";
        }


}
