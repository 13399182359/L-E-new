package com.jk.service;

import com.LeXiang.education.sysAdmin.common.model.AddressBean;
import com.LeXiang.education.sysAdmin.common.model.CommondityShowBean;
import com.LeXiang.education.sysAdmin.common.model.OrderBean;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/23 17:26
 * @Param
 * @return
 **/
public interface AddressInterface {
    PageBean findAllAddress(Integer page, Integer rows, AddressBean addressBean);

    void updateS1(Long id, Long s1);

    void delAddress(Long[] ids);

    Long selectUserJifen(Long id);

    List poiDown( Long[] ids);

    AddressBean findOneByUserId(long uid);

    void addOrder(OrderBean orderBean);

    void updateUserJifen(Double price_money, Long uid);

    void updateCommondityRepertory(Long comId, Long ceil);

    void addCommondityShow(CommondityShowBean commondityShowBean);
}
