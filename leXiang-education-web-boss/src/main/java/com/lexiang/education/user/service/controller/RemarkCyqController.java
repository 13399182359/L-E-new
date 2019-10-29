package com.lexiang.education.user.service.controller;

import com.LeXiang.education.admin.service.RemarkCyqService;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.Remark;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @类名: RemarkCyqController
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-25 15:21
 **/
@Controller
@RequestMapping("/remarkCyq")
public class RemarkCyqController {

    @Autowired
    private RemarkCyqService remarkCyqService;

    @RequestMapping("/findRemark")
    public String findRemark(Remark remark, Model model, @RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10") Integer rows){
        PageBean<Remark> remark1 = remarkCyqService.findRemark(remark, page, rows);
        model.addAttribute("remark1",remark1);
        return "admin/content/dianping/list";
    }

    @RequestMapping("/deleteRemark")
    public String deleteRemark(Long id){
        remarkCyqService.deleteRemark(id);
        return "redirect:/remarkCyq/findRemark";
    }

    @RequestMapping("/deleteRemarkIds")
    public String deleteRemarkIds(Long[]ids){
        remarkCyqService.deleteRemarkIds(ids);
        return "redirect:/remarkCyq/findRemark";
    }

    @RequestMapping("/updRemarkShow")
    public String updRemarkShow(Long id){
        remarkCyqService.updRemarkShow(id);
        return "redirect:/remarkCyq/findRemark";
    }

    @RequestMapping("/remarkShowUpd")
    public String remarkShowUpd(Long id){
        remarkCyqService.remarkShowUpd(id);
        return "redirect:/remarkCyq/findRemark";
    }
}

