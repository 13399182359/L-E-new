package com.lexiang.education.user.service.controller;

import com.LeXiang.education.admin.service.PageXqService;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.PageXq;
import com.LeXiang.education.sysAdmin.common.model.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @类名: PageXqController
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-18 19:48
 **/
@Controller
@RequestMapping("/page")
public class PageXqController {

    @Autowired
    private PageXqService pageXqService;

    @RequestMapping("/toadd")
    public String toadd(){
        return "admin/danyeguanli/add";
    }

    @RequestMapping("/findPage")
    public String findPage(Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<PageXq> list= pageXqService.findPage(page,rows);
        model.addAttribute("page",list);
        return "admin/danyeguanli/list";
    }

    @RequestMapping("/delPageById")
    public Result delPageById(Integer id){
        try{
            pageXqService.delPageById(id);
            return new Result(true,"删除成功");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false,"删除失败");
        }
    }

    @RequestMapping("addxqpage")
    public String addxqpage(PageXq pageXq){
        pageXqService.addxqpage(pageXq);
        return "redirect:/page/findPage";
    }

    @RequestMapping("/delPageByIds")
    @ResponseBody
    public Result delPageByIds(Integer[] ids){
        try{
            pageXqService.delPageByIds(ids);
            return new Result(true,"删除成功");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false,"删除失败");
        }
    }

    @RequestMapping("/toupdXqPage")
    public String toupdXqPage(Integer id,Model model){
        PageXq pageXq = pageXqService.toupdXqPage(id);
        model.addAttribute("pageXq",pageXq);
        return "admin/danyeguanli/edit";
    }

    @RequestMapping("/updXqPage")
    public String updXqPage(PageXq pageXq){
        pageXqService.updXqPage(pageXq);
        return "redirect:/page/findPage";
    }


}