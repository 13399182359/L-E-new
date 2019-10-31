package com.lexiang.education.user.service.controller;

import com.LeXiang.education.admin.service.OrderService;
import com.LeXiang.education.sysAdmin.common.model.OrderBean;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/25 19:57
 * @Param
 * @return
 **/
@RequestMapping("zhangOrder")
@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;

    @RequestMapping("findAllOrder")
    public String findAllOrder (Model model, @RequestParam(defaultValue = "1") Long page, @RequestParam(defaultValue = "5") Long rows, OrderBean orderBean) {
        PageBean pageBean = orderService.findAllOrder(orderBean,page,rows);
        model.addAttribute("page",pageBean);
        return "admin/order/index";
    }
}
