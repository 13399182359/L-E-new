package com.lexiang.education.user.service.controller;

import com.LeXiang.education.admin.service.MiaoshaXqService;
import com.LeXiang.education.sysAdmin.common.model.MiaoshaXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @类名: MiaoshaXqController
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-24 20:50
 **/
@Controller
@RequestMapping("/miaosha")
public class MiaoshaXqController {

    @Autowired
    private MiaoshaXqService miaoshaXqService;

    @RequestMapping("/findXqMiaosha")
    public String findXqMiaosha(Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows, MiaoshaXq miaoshaXq){
        PageBean<MiaoshaXq> list = miaoshaXqService.findXqMiaosha(page,rows,miaoshaXq);
        System.out.println(list);
        model.addAttribute("list",list);
        return "admin/miaosha/list";
    }

    @RequestMapping("/toadd")
    public String toadd(){
        return "admin/miaosha/add";
    }

    @RequestMapping("/addXqMiaosha")
    public String addXqMiaosha(MiaoshaXq miaoshaXq){
        miaoshaXqService.addXqMiaosha(miaoshaXq);
        return "redirect:/miaosha/findXqMiaosha";
    }

    @RequestMapping("/delMiaoshaXq")
    @ResponseBody
    public Result delMiaoshaXq(Integer id){
        try{
            miaoshaXqService.delMiaoshaXq(id);
            return new Result(true,"删除成功");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false,"删除失败");
        }
    }

    @RequestMapping("/delMiaoshaXqs")
    @ResponseBody
    public Result delMiaoshaXqs(Integer[] ids){
        try{
            miaoshaXqService.delMiaoshaXqs(ids);
            return new Result(true,"删除成功");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false,"删除失败");
        }
    }

    @RequestMapping("/findXqMiaoshaOne")
    public String findXqMiaoshaOne(Integer id,Model model){
        MiaoshaXq miaoshaXq = miaoshaXqService.findXqMiaoshaOne(id);
        System.out.println(miaoshaXq);
        model.addAttribute("miaosha",miaoshaXq);
        return "admin/miaosha/edit";
    }

    @RequestMapping("/updMiaoShaXq")
    public String updMiaoShaXq(MiaoshaXq miaoshaXq){
        miaoshaXqService.updMiaoShaXq(miaoshaXq);
        return "redirect:/miaosha/findXqMiaosha";
    }

}