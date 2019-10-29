package com.lexiang.education.user.service.controller;

import com.LeXiang.education.admin.service.DazheXqService;
import com.LeXiang.education.sysAdmin.common.model.DazheXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.PlayClassgtj;
import com.LeXiang.education.sysAdmin.common.model.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @类名: DazheXqController
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-24 15:46
 **/
@Controller
@RequestMapping("/dazhe")
public class DazheXqController {

    @Autowired
    private DazheXqService dazheXqService;


    @RequestMapping("/findXqDazhe")
    public String findXqDazhe(Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows, DazheXq dazheXq){
        PageBean<DazheXq> list = dazheXqService.findXqDazhe(page,rows,dazheXq);
        System.out.println(list);
        model.addAttribute("list",list);
        return "admin/dazhe/list";
    }

    @RequestMapping("/findXqDazheOne")
    public String findXqDazheOne(Model model,Integer id){
        DazheXq dazheXq = dazheXqService.findXqDazheOne(id);
        System.out.println(dazheXq);
        model.addAttribute("dazheXq",dazheXq);
        return "admin/dazhe/edit";
    }


    @RequestMapping("/delDazheXq")
    @ResponseBody
    public Result delDazheXq(Integer id){
        try{
            dazheXqService.delDazheXq(id);
            return new Result(true,"删除成功");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false,"删除失败");
        }
    }

    @RequestMapping("/delDazheXqs")
    @ResponseBody
    public Result delDazheXqs(Integer[] ids){
        try{
            dazheXqService.delDazheXqs(ids);
            return new Result(true,"删除成功");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false,"删除失败");
        }
    }

    @RequestMapping("/updDazheXq")
    public String updDazheXq(DazheXq dazheXq){
        dazheXqService.updDazheXq(dazheXq);
        return "redirect:/dazhe/findXqDazhe";
    }

    @RequestMapping("/toaddDazhe")
    public String toaddDazhe(){
        return "admin/dazhe/add";
    }

    @RequestMapping("/addXqDazhe")
    public String addXqDazhe(DazheXq dazheXq){
        dazheXqService.addXqDazhe(dazheXq);
        return "redirect:/dazhe/findXqDazhe";
    }

    /*@RequestMapping("/findpalyclass")
    public String findpalyclass(Model model){
        List<PlayClassgtj> playClassgtj = dazheXqService.findpalyclass();
        model.addAttribute("p",playClassgtj);
        return "admin/dazhe/add";
    }*/

}