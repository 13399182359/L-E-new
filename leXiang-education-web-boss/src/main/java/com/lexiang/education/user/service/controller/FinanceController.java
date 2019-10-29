package com.lexiang.education.user.service.controller;

import com.LeXiang.education.order.common.model.*;
import com.LeXiang.education.order.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @类名: Controller
 * @描述:
 * @作者: 王葛瑞
 * @时间: 2019-10-16 16:21
 **/
@Controller
public class FinanceController {

    @Autowired
    private OrderService orderService;

    @RequestMapping(value = "/queryFinList")
    @ResponseBody
    public String queryFinList(){
        List<With> withs = orderService.queryFinList();
        return "对了";
    }

    @RequestMapping("/topoi")
    public String topoi(){
        return "/admin/w-order/order-w/export";
    }

    @RequestMapping(value = "/toIndex")
    public String toIndex(){
        return "/admin/admin";
    }

    @RequestMapping(value = "/queryFin")
    public String queryFin(Model model,With with,@RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        if(with.getWithdrawstatus()==null){
            with.setWithdrawstatus(0);
        }
        PageResult pageResult = orderService.queryFin(with,page,rows);
        model.addAttribute("page",pageResult);
         if (with.getWithdrawstatus() == 1) {
            return "admin/w-order/with-w/index1";
        } else if (with.getWithdrawstatus() == 2) {
            return "admin/w-order/with-w/index2";
        } else if (with.getWithdrawstatus() == 3) {
            return "admin/w-order/with-w/index3";
        } else if (with.getWithdrawstatus() == 4) {
            return "admin/w-order/with-w/index4";
        };
        return "admin/w-order/with-w/index";
    }

    @RequestMapping("/delWithById")
    @ResponseBody
    public Result delWithById(Long[] ids){
        try {
            orderService.delWithById(ids);
            return new Result(true,"删除成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new Result(true,"删除失败");
        }
    }

    @RequestMapping("/updWithById")
    @ResponseBody
    public Result updWithById(Long[] ids){
        try {
            orderService.updWithById(ids);
            return new Result(true,"操作成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new Result(true,"操作失败");
        }
    }

    /*@RequestMapping("/queryUserByName")
    @ResponseBody
    public String queryUserByName(String username ){
            orderService.queryUserByName(username);
            return "admin/w-order/with/user";
    }*/

/*=================================卡号列表=====================================================*/
    @RequestMapping(value = "/queryBank")
    public String queryBank(Model model, WBank wbank){
        List<WBank> wBanks= orderService.queryBank(wbank);
        model.addAttribute("wbank",wBanks);
        return "admin/w-order/bank-w/index";
    }

    @RequestMapping("/delBankById")
    @ResponseBody
    public Result delBankById(Long[] ids){
        try {
            orderService.delBankById(ids);
            return new Result(true,"删除成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new Result(true,"删除失败");
        }
    }

    //==========================支付记录=================================================
    @RequestMapping("/queryPay")
    public String queryPay(Model model, WPay wpay, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageResult pageResult = orderService.queryPay(wpay,page,rows);
        model.addAttribute("page",pageResult);
        return "admin/w-order/pay-w/index";
    }

    //==========================订单管理=================================================

    @RequestMapping("/queryOrder")
    public String queryOrder(Model model, PlayClassgtj playClassgtj, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageResult pageResult = orderService.queryOrder(playClassgtj,page,rows);
        model.addAttribute("page",pageResult);
            if(playClassgtj.getLeixing()==1){
                return "admin/w-order/order-w/classindex";
            }else if(playClassgtj.getLeixing()==2){
                return "admin/w-order/order-w/liveclassindex";
            }else if(playClassgtj.getLeixing()==3){
                return "admin/w-order/order-w/lineclassindex";
            }
        return "admin/w-order/order-w/index";
    }

    @RequestMapping("/delOrderById")
    @ResponseBody
    public Result delOrderById(Long[] ids){
        try {
            orderService.delOrderById(ids);
            return new Result(true,"删除成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new Result(true,"删除失败");
        }
    }

    @RequestMapping("/toeditOrderById")
    public String toeditOrderById(Long id,Model model){
        List<PlayClassgtj> lists=orderService.toeditOrderById(id);
        model.addAttribute("order",lists);
        return "admin/w-order/order-w/edit";
    }

    //==========================退款订单管理=================================================

    @RequestMapping("/queryRefund")
    public String queryRefund(Model model, PlayClassgtj playClassgtj, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageResult pageResult = orderService.queryRefund(playClassgtj,page,rows);
        model.addAttribute("page",pageResult);
        if(playClassgtj.getLeixing()==1){
            return "admin/w-order/refund-w/classindex";
        }else if(playClassgtj.getLeixing()==2){
            return "admin/w-order/refund-w/liveclassindex";
        }else if(playClassgtj.getLeixing()==3){
            return "admin/w-order/refund-w/lineclassindex";
        }
        return "admin/w-order/refund-w/index";
    }

    //==========================机构的查询=================================================

    @RequestMapping("/queryOrg")
    @ResponseBody
    public List<Organization> queryOrg(){
        return orderService.queryOrg();
    }

}
