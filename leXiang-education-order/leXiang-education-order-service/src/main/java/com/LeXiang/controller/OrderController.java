package com.LeXiang.controller;

import com.LeXiang.education.order.common.interfaces.OrderServiceApi;
import com.LeXiang.education.order.common.model.*;
import com.LeXiang.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @类名: OrderController
 * @描述:
 * @作者: 王葛瑞
 * @时间: 2019-10-16 19:43
 **/
@RestController
public class OrderController implements OrderServiceApi {

    @Autowired
    private OrderService orderService;

    @Override
    public List<With> queryFinList() {
        return orderService.queryFinList();
    }

    @Override
    public PageResult queryFin(@RequestBody With with, @RequestParam Integer page,@RequestParam Integer rows) {
        return orderService.queryFin(with,page,rows);
    }

    @Override
    public void delWithById(@RequestParam("ids") Long[] ids) {
        orderService.delWithById(ids);
    }

    @Override
    public void updWithById(@RequestParam("ids") Long[] ids) {
        orderService.updWithById(ids);
    }

    @Override
    public List<WBank> queryBank(@RequestBody WBank wbank) {
        return orderService.queryBank(wbank);
    }

    @Override
    public void delBankById(@RequestParam("ids") Long[] ids) {
        orderService.delBankById(ids);
    }

    @Override
    public List<WBank> findAll(Long[] ids) {
        return orderService.findAll(ids);
    }

    @Override
    public PageResult queryPay(@RequestBody WPay wpay,@RequestParam Integer page,@RequestParam Integer rows) {
        return orderService.queryPay(wpay,page,rows);
    }

    /*@Override
    public void queryUserByName(@RequestParam String username) {
        orderService.queryUserByName(username);
    }
*/

    @Override
    public PageResult queryOrder(@RequestBody PlayClassgtj playClassgtj,@RequestParam Integer page,@RequestParam Integer rows) {
        return orderService.queryOrder(playClassgtj,page,rows);
    }

    @Override
    public void delOrderById(@RequestParam("ids") Long[] ids) {
        orderService.delOrderById(ids);
    }

    @Override
    public List<PlayClassgtj> toeditOrderById(@RequestParam("id") Long id) {

        return orderService.toeditOrderById(id);
    }

    @Override
    public PageResult queryRefund(@RequestBody PlayClassgtj playClassgtj,@RequestParam Integer page,@RequestParam Integer rows) {
        return orderService.queryOrder(playClassgtj,page,rows);
    }

    @Override
    public List<Organization> queryOrg() {
        return orderService.queryOrg();
    }

    @Override
    public List<PlayClassgtj> exportOrderList(@RequestBody PlayClassgtj playClassgtj) {
        return orderService.queryOrderAll(playClassgtj);
    }

}
