package com.lexiang.education.user.service.controller;

import com.LeXiang.education.admin.service.InformationService;
import com.LeXiang.education.sysAdmin.common.model.Information;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @类名: InformationXqController
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-16 20:32
 **/
@Controller
public class InformationXqController {

    @Autowired
    private InformationService informationService;

    @RequestMapping("/toAdd")
    public String toAdd(){
        return "admin/zixungaunli/add";
    }

    @RequestMapping("/findInformation")
    public String findInformation(Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows, Information information) {
        PageBean<Information> list= informationService.findInformation(page,rows,information);
        model.addAttribute("list",list);
        return "admin/zixungaunli/list";
    }

    @RequestMapping("/toupd")
    public String toupd(Integer id,Model model){
        Information information = informationService.toupd(id);
        model.addAttribute("information",information);
        return "admin/zixungaunli/edit";
    }

    @RequestMapping("/addInformation")
    public String addInformation(Information information){
        informationService.addInformation(information);
        return "redirect:/findInformation";
    }

    @RequestMapping("/delById")
    @ResponseBody
    public Result delById(Integer[] ids){
        try {
            informationService.delById(ids);
            return new Result(true,"删除成功");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false,"删除失败");
        }
    }

    @RequestMapping("/updInformation")
    public String updInformation(Information information){
        informationService.updInformation(information);
        return "redirect:/findInformation";
    }

}