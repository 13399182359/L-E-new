package com.LeXiang.education.sysAdmin.common.interfaces;

import com.LeXiang.education.sysAdmin.common.model.OrderBean;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.ResultBean;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/21 13:32
 * @Param
 * @return
 **/
public interface OrderServiceApi {

    @RequestMapping("addOrder")
    void addOrder(@RequestBody OrderBean orderBean);
    @RequestMapping("findOrderByMent")
    List<OrderBean> findOrderByMent(@RequestBody ResultBean resultBean);

    @RequestMapping("findOrderByMent3333")
    void updateOrderStatus5(@RequestParam Long comid);
    @RequestMapping("findAllOrder")
    PageBean findAllOrder(@RequestBody OrderBean orderBean,@RequestParam Long page,@RequestParam Long rows);
}
