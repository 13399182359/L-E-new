package com.jk.service;

import com.LeXiang.education.sysAdmin.common.model.*;

import java.util.List;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/16 16:45
 * @Param
 * @return
 **/
public interface CommodityInterface {
    void addOrUpdate(CommodityBean commodityBean);

    void updateStatus(Long[] id,Long where);

    void deleteCommodity(Long[] ids);

    PageBean findAll(Integer page, Integer rows, CommodityBean commodityBean);

    CommodityBean findById(Long id);

    Long commondityShowCount(Long id);

    List<CommondityShowBean> findAllCommondityShow(Long id);

    List<AreaBean> findAllArea(Long id);

    void addAddressUser(AddressBean address);

    List findAllAddress(Long id);

    LogisticsBean wuliu();

    void updateLog(LogisticsBean logisticsBean);
}
