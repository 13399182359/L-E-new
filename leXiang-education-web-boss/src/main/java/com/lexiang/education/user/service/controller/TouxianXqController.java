package com.lexiang.education.user.service.controller;

import com.LeXiang.education.admin.service.TouxianXqService;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.Result;
import com.LeXiang.education.sysAdmin.common.model.TouxianXq;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @类名: TouxianXqController
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-25 18:33
 **/
@Controller
@RequestMapping("/touxian")
public class TouxianXqController {

    @Autowired
    private TouxianXqService touxianXqService;

    @RequestMapping("/findXqTouxian")
    public String findXqTouxian(Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows, TouxianXq touxianXq){
        PageBean<TouxianXq> list = touxianXqService.findXqTouxian(page,rows,touxianXq);
        System.out.println(list);
        model.addAttribute("list",list);
        return "admin/jiangshitouxian/list";
    }

    @RequestMapping("/toadd")
    public String toadd(){
        return "admin/jiangshitouxian/add";
    }

    @RequestMapping("/addXqTouxian")
    public String addXqTouxian(TouxianXq touxianXq){
        touxianXqService.addXqTouxian(touxianXq);
        return "redirect:/touxian/findXqTouxian";
    }

    @RequestMapping("/updTouxianStatus")
    @ResponseBody
    public Result updTouxianStatus(Integer id, Integer status){
        try{
            touxianXqService.updTouxianStatus(id,status);
            return new Result(true,"操作成功");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false,"操作失败");
        }
    }

    @RequestMapping("/findXqTouxianOne")
    public String findXqTouxianOne(Integer id,Model model){
        TouxianXq touxianXq = touxianXqService.findXqTouxianOne(id);
        model.addAttribute("touxian",touxianXq);
        return "admin/jiangshitouxian/edit";
    }

    @RequestMapping("/updXqTouxian")
    public String updXqTouxian(TouxianXq touxianXq){
        touxianXqService.updXqTouxian(touxianXq);
        return "redirect:/touxian/findXqTouxian";
    }

    @RequestMapping("/delXqTouxians")
    @ResponseBody
    public Result delXqTouxians(Integer[] ids){
        try{
            touxianXqService.delXqTouxians(ids);
            return new Result(true,"操作成功");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false,"操作失败");
        }
    }

}