package com.lexiang.education.user.service.controller;

import com.LeXiang.education.admin.service.LiuyanXqService;
import com.LeXiang.education.sysAdmin.common.model.LiuyanXq;
import com.LeXiang.education.sysAdmin.common.model.NewsXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

/**
 * @类名: LiuyanXqController
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-24 10:06
 **/
@Controller
@RequestMapping("/liuyan")
public class LiuyanXqController {

    @Autowired
    private LiuyanXqService liuyanXqService;

    @RequestMapping("/findXqLiuyan")
    public String findXqLiuyan(Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows, LiuyanXq liuyanXq){
        PageBean<LiuyanXq> list = liuyanXqService.findXqLiuyan(page,rows,liuyanXq);
        System.out.println(list);
        model.addAttribute("list",list);
        return "admin/liuyanban/list";
    }

    @RequestMapping("/findXqLiuyanHS")
    public String findXqLiuyanHS(Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows, LiuyanXq liuyanXq){
        PageBean<LiuyanXq> list = liuyanXqService.findXqLiuyanHS(page,rows,liuyanXq);
        System.out.println(list);
        model.addAttribute("list",list);
        return "admin/liuyanban/huishou";
    }

    @RequestMapping("/huishouLiuyanXq")
    @ResponseBody
    public Result huishouLiuyanXq(Integer id){
        try{
            liuyanXqService.huishouLiuyanXq(id);
            return new Result(true,"已放入回收站");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false,"操作失败");
        }
    }

    @RequestMapping("/huishouLiuyanXqs")
    @ResponseBody
    public Result huishouLiuyanXqs(Integer[] ids){
        try{
            liuyanXqService.huishouLiuyanXqs(ids);
            return new Result(true,"已放入回收站");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false,"操作失败");
        }
    }

    @RequestMapping("/huifuLiuyanXq")
    @ResponseBody
    public Result huifuLiuyanXq(Integer id){
        try{
            liuyanXqService.huifuLiuyanXq(id);
            return new Result(true,"已恢复正常");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false,"操作失败");
        }
    }

    @RequestMapping("/delLiuyanXqs")
    @ResponseBody
    public Result delLiuyanXqs(Integer[] ids){
        try{
            liuyanXqService.delLiuyanXqs(ids);
            return new Result(true,"删除成功");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false,"操作失败");
        }
    }

}