package com.lexiang.education.user.service.controller;

import com.LeXiang.education.admin.service.MessageXqService;
import com.LeXiang.education.sysAdmin.common.model.MessageXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @类名: MessageXqConreoller
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-21 17:11
 **/
@Controller
@RequestMapping("/message")
public class MessageXqConreoller {

    @Autowired
    private MessageXqService messageXqService;

    @RequestMapping("/findXqMessage")
    public String findXqMessage(Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows, MessageXq messageXq){
        PageBean<MessageXq> list = messageXqService.findXqMessage(page,rows,messageXq);
        System.out.println(list);
        model.addAttribute("list",list);
        return "admin/sixinguanli/list";
    }

    @RequestMapping("/findXqMessageHuiShou")
    public String findXqMessageHuiShou(Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows, MessageXq messageXq){
        PageBean<MessageXq> list = messageXqService.findXqMessageHuiShou(page,rows,messageXq);
        model.addAttribute("list",list);
        return "admin/sixinguanli/huishou";
    }

    @RequestMapping("/huishouById")
    @ResponseBody
    public Result huishouById(Integer id){
        try{
            messageXqService.huishouById(id);
            return new Result(true,"已放入回收站");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false,"操作失败");
        }
    }

    @RequestMapping("/huishouByIds")
    @ResponseBody
    public Result huishouByIds(Integer[] ids){
        try{
            messageXqService.huishouByIds(ids);
            return new Result(true,"已放入回收站");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false,"操作失败");
        }
    }

    @RequestMapping("/huifuById")
    @ResponseBody
    public Result huifuById(Integer id){
        try{
            messageXqService.huifuById(id);
            return new Result(true,"已恢复正常");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false,"操作失败");
        }
    }

    @RequestMapping("/delMessageByIds")
    @ResponseBody
    public Result delMessageByIds(Integer[] ids){
        try{
            messageXqService.delMessageByIds(ids);
            return new Result(true,"删除成功");
        }catch (Exception e){
            e.printStackTrace();
            return new Result(false,"操作失败");
        }
    }


}