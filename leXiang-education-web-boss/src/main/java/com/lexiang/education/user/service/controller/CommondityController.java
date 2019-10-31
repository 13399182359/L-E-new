package com.lexiang.education.user.service.controller;

import com.LeXiang.education.admin.service.CommodityService;
import com.LeXiang.education.sysAdmin.common.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/16 19:30
 * @Param
 * @return
 **/
@RequestMapping("commondity")
@Controller
public class CommondityController {
    @Autowired
    private CommodityService commodityService;

    @RequestMapping("addOrUpdate")
    public  String  addOrUpdate(CommodityBean commodityBean) {
        try {
            commodityService.addOrUpdate(commodityBean);
            return "redirect:/commondity/findAll";
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/commondity/findAll";
        }
    }

    @RequestMapping("updateStatus")
    public @ResponseBody
    ResultBean updateStatus(Long[] ids, Long where) {
        try {
            commodityService.updateStatus(ids,where);
            return new ResultBean(true,"修改成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new ResultBean(false,"修改失败");
        }
    }

    @RequestMapping("deleteCommodity")
    public @ResponseBody
    ResultBean deleteCommodity(Long[] ids) {
        try {
            commodityService.deleteCommodity(ids);
            return new ResultBean(true,"删除成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new ResultBean(true,"删除失败");
        }
    }

    @RequestMapping("findAll")
    public String findAll(@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "5") Integer rows, CommodityBean commodityBean, Model model) {
        PageBean all = commodityService.findAll(commodityBean, page, rows);
        model.addAttribute("page",all);
        if (commodityBean!=null&&commodityBean.getStatus()!=null&&commodityBean.getStatus()==3) {
            return "admin/commondity/hui";
        }
        return "admin/commondity/index";
    }
    @RequestMapping("findById")
    public String findById(Long id, Model model,Long count) {
        CommodityBean commodityBean = commodityService.findById(id);
        if (count == null) {
            model.addAttribute("com",commodityBean);
            return "admin/commondity/edit";
        }else {
            commodityBean.setCount(count);
            model.addAttribute("com",commodityBean);
            return "admin/commondity/order_commit";
        }
    }
    @RequestMapping("findAllArea")
    public @ResponseBody List<AreaBean> findAllArea(Long id) {
        return commodityService.findAllArea(id);
    }
    @RequestMapping("showById")
    public String showById(Long id, Model model) {
        CommodityBean commodityBean = commodityService.findById(id);
        List<CommondityShowBean>  comShowList = commodityService.findAllCommondityShow(id);
        Long sum = commodityService.commondityShowCount(id);
        model.addAttribute("sum",sum);
        model.addAttribute("com",commodityBean);
        model.addAttribute("comShowList",comShowList);
        return "admin/commondity/showById";
    }
    @RequestMapping("addAddressUser")
    public @ResponseBody Boolean addAddressUser (AddressBean address, HttpServletRequest request) {
        //获取 用户信息
       // User user = request.getSession().getAttribute(request.getSession().getId());
        //address.setUid(user.getId);
        address.setUid(1l);
        try {
            //默认正常
            address.setS1(1l);
            commodityService.addAddressUser(address);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    @RequestMapping("findAllAddress")
    public @ResponseBody List findAllAddress (HttpServletRequest request) {
        //获取 用户信息
        // User user = request.getSession().getAttribute(request.getSession().getId());
       // return commodityService.findAllAddress(user.getId);
        return commodityService.findAllAddress(1l);
    }
    @RequestMapping("selectUser")
    public @ResponseBody Boolean selectUser(HttpServletRequest request) {
      /* // 获取 用户信息
         User user = request.getSession().getAttribute(request.getSession().getId());
        if (user == null) {
            return false;
        }*/
        return true;
    }
    @RequestMapping("wuliu")
    public String wuliu (Model model){
        LogisticsBean logisticsBean =commodityService.wuliu();
        model.addAttribute("log",logisticsBean);
        return "admin/wuliu/index";
    }
    @RequestMapping("updateLog")
    public @ResponseBody Boolean updateLog (LogisticsBean logisticsBean){
        try {
            commodityService.updateLog(logisticsBean);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
