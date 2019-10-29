package com.jk.mapper;

import com.LeXiang.education.sysAdmin.common.model.OrderBean;
import com.LeXiang.education.sysAdmin.common.model.ResultBean;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/21 13:39
 * @Param
 * @return
 **/
public interface OrderMapper {
    void addOrder(OrderBean orderBean);

    List<OrderBean> findOrderByMent(ResultBean resultBean);

    void updateOrderStatus5(Long comid);

    Integer findAllOrderCount(@Param("orderBean") OrderBean orderBean);

    List<OrderBean> findAllOrder(@Param("a") Long pageNumber,@Param("b") Long rows,@Param("orderBean") OrderBean orderBean);
}
