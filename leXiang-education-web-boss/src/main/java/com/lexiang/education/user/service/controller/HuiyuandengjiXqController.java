package com.lexiang.education.user.service.controller;

import com.LeXiang.education.admin.service.HuiyuandengjiXqService;
import com.LeXiang.education.sysAdmin.common.model.HuiyuandengjiXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @类名: HuiyuandengjiXqController
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-25 14:03
 **/
@Controller
@RequestMapping("/huiyuandengji")
public class HuiyuandengjiXqController {

    @Autowired
    private HuiyuandengjiXqService huiyuandengjiXqService;

    @RequestMapping("/findXqHuiyuandengji")
    public String findXqHuiyuandengji(Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows, HuiyuandengjiXq huiyuandengjiXq){
        PageBean<HuiyuandengjiXq> list = huiyuandengjiXqService.findXqHuiyuandengji(page,rows,huiyuandengjiXq);
        System.out.println(list);
        model.addAttribute("list",list);
        return "admin/huiyuandengji/list";
    }

    @RequestMapping("/updStatus")
    @ResponseBody
    private Result updStatus(Integer id, Integer status){
        try{
            huiyuandengjiXqService.updStatus(id,status);
            return new Result(true,"操作成功");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false,"操作失败");
        }
    }

    @RequestMapping("/toadd")
    public String toadd(){
        return "admin/huiyuandengji/add";
    }

    @RequestMapping("/addXqHuiyuandengji")
    public String addXqHuiyuandengji(HuiyuandengjiXq huiyuandengjiXq){
        huiyuandengjiXqService.addXqHuiyuandengji(huiyuandengjiXq);
        return "redirect:/huiyuandengji/findXqHuiyuandengji";
    }

    @RequestMapping("/toupdHuiyuanXq")
    public String toupdHuiyuanXq(Integer id,Model model){
        HuiyuandengjiXq memberlv = huiyuandengjiXqService.toupdHuiyuanXq(id);
        System.out.println(memberlv);
        model.addAttribute("memberlv",memberlv);
        return "admin/huiyuandengji/edit";
    }

    @RequestMapping("/updXqHuiyuandengji")
    public String updXqHuiyuandengji(HuiyuandengjiXq huiyuandengjiXq){
        huiyuandengjiXqService.updXqHuiyuandengji(huiyuandengjiXq);
        return "redirect:/huiyuandengji/findXqHuiyuandengji";
    }

    @RequestMapping("/delHuiyuanXqs")
    @ResponseBody
    public Result delHuiyuanXqs(Integer[] ids){
        try{
            huiyuandengjiXqService.delHuiyuanXqs(ids);
            return new Result(true,"删除成功");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false,"删除失败");
        }
    }

}