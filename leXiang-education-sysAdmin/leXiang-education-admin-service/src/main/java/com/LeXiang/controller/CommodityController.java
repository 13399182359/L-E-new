package com.jk.controller;

import com.LeXiang.education.sysAdmin.common.interfaces.CommodityServiceApi;
import com.LeXiang.education.sysAdmin.common.model.*;
import com.jk.service.CommodityInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/16 16:41
 * @Param
 * @return
 **/
@RestController
public class CommodityController implements CommodityServiceApi {

    @Autowired
    private CommodityInterface commodityInterface;

    @Override
    public void addOrUpdate(CommodityBean commodityBean) {
        commodityInterface.addOrUpdate(commodityBean);
    }

    @Override
    public void updateStatus(Long[] ids,Long where) {
        commodityInterface.updateStatus(ids,where);
    }

    @Override
    public void deleteCommodity(Long[] ids) {
        commodityInterface.deleteCommodity(ids);
    }

    @Override
    public PageBean findAll(CommodityBean commodityBean, Integer page, Integer rows) {
        return commodityInterface.findAll(page,rows,commodityBean);
    }

    @Override
    public CommodityBean findById(Long id) {
        return commodityInterface.findById(id);
    }

    @Override
    public Long commondityShowCount(Long id) {
        return commodityInterface.commondityShowCount(id);
    }

    @Override
    public List<CommondityShowBean> findAllCommondityShow(Long id) {
        return commodityInterface.findAllCommondityShow(id);
    }

    @Override
    public List<AreaBean> findAllArea(Long id) {
        return commodityInterface.findAllArea(id);
    }

    @Override
    public void addAddressUser(AddressBean address) {
        commodityInterface.addAddressUser(address);
    }

    @Override
    public List findAllAddress(Long id) {
        return commodityInterface.findAllAddress(id);
    }

    @Override
    public LogisticsBean wuliu() {
        return commodityInterface.wuliu();
    }

    @Override
    public void updateLog(LogisticsBean logisticsBean) {
        commodityInterface.updateLog(logisticsBean);
    }


}
