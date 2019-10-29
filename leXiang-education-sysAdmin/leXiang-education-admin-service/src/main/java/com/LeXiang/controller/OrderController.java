package com.jk.controller;

import com.LeXiang.education.sysAdmin.common.interfaces.OrderServiceApi;
import com.LeXiang.education.sysAdmin.common.model.OrderBean;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.ResultBean;
import com.jk.service.OrderInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/21 13:35
 * @Param
 * @return
 **/
@RestController
public class OrderController implements OrderServiceApi {

    @Autowired
    private OrderInterface orderInterface;
    @Override
    public void addOrder(OrderBean orderBean) {
        orderInterface.addOrder(orderBean);
    }

    @Override
    public List<OrderBean> findOrderByMent(ResultBean resultBean) {
        return orderInterface.findOrderByMent(resultBean);
    }

    @Override
    public void updateOrderStatus5(Long comid) {
        orderInterface.updateOrderStatus5(comid);
    }

    @Override
    public PageBean findAllOrder(OrderBean orderBean, Long page, Long rows) {
        return orderInterface.findAllOrder(orderBean,page,rows);
    }


}
