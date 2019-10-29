package com.jk.service.impl;

import com.LeXiang.education.sysAdmin.common.model.OrderBean;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.ResultBean;
import com.jk.mapper.OrderMapper;
import com.jk.service.OrderInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/21 13:37
 * @Param
 * @return
 **/
@Service
public class OrderInterfaceImpl implements OrderInterface {
    @Autowired
    private OrderMapper orderMapper;
    @Override
    public void addOrder(OrderBean orderBean) {
        orderMapper.addOrder(orderBean);
    }

    @Override
    public List<OrderBean> findOrderByMent(ResultBean resultBean) {
        return orderMapper.findOrderByMent(resultBean);
    }

    @Override
    public void updateOrderStatus5(Long comid) {
        orderMapper.updateOrderStatus5(comid);
    }

    @Override
    public PageBean findAllOrder(OrderBean orderBean, Long page, Long rows) {
        //计算 分页开始条数
        Long pageNumber = (page -1) *rows ;
        //查询 分页后的  数据
        List<OrderBean> list = orderMapper.findAllOrder(pageNumber,rows, orderBean);
        //查询总条数
        Integer count = orderMapper.findAllOrderCount(orderBean);
        //调用工具类
        // 第一个参数 当前页数 page
        // 第二个参数 当每页条数 rows
        // 第三个参数 总条数  后台查出来的 count
        PageBean<OrderBean> userPageBean = new PageBean<OrderBean>(page.intValue(),rows.intValue(), count);
        userPageBean.setList(list);
        return userPageBean;
    }
}
