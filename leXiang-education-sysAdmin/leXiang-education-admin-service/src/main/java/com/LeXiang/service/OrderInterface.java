package com.jk.service;

import com.LeXiang.education.sysAdmin.common.model.OrderBean;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.ResultBean;

import java.util.List;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/21 13:37
 * @Param
 * @return
 **/
public interface OrderInterface {
    void addOrder(OrderBean orderBean);

    List<OrderBean> findOrderByMent(ResultBean resultBean);

    void updateOrderStatus5(Long comid);

    PageBean findAllOrder(OrderBean orderBean, Long page, Long rows);
}
