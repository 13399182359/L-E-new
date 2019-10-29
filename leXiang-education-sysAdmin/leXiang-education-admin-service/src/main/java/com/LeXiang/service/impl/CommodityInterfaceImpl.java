package com.jk.service.impl;

import com.LeXiang.education.sysAdmin.common.model.*;
import com.jk.mapper.CommodityMapper;
import com.jk.service.CommodityInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.LongPredicate;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/16 16:46
 * @Param
 * @return
 **/
@Service
public class CommodityInterfaceImpl implements CommodityInterface {

    @Autowired
    private  CommodityMapper commodityMapper;


    @Override
    public void addOrUpdate(CommodityBean commodityBean) {
        SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-ss HH:mm:ss");
        if (commodityBean!=null && commodityBean.getId()!=null) {
            commodityMapper.updateCommontidy(commodityBean);
        }else {
            commodityBean.setCreateddate(sim.format(new Date()));
            commodityMapper.addCommontidy(commodityBean);
        }
    }

    @Override
    public void updateStatus(Long[] ids,Long where) {
        Map m = new ConcurrentHashMap();
        m.put("ids",ids);
        m.put("where",where);
        commodityMapper.updateStatus(m);
    }

    @Override
    public void deleteCommodity(Long[] ids) {
        commodityMapper.deleteCommondity(ids);
    }

    @Override
    public PageBean findAll(Integer page, Integer rows, CommodityBean commodityBean) {
        /**
         * @Author 张俊荣 15835910851
         * @Description //TODO
         * @Date 2019/10/16 19:22
         * @info 调用es 全文搜索引擎  注意查询回收站  和 正常的信息
         * @return
         **/
        int pageNumber = (page -1) *rows ;
        List<CommodityBean> list = commodityMapper.findAll(pageNumber,rows, commodityBean);
        Integer count = commodityMapper.findCount(commodityBean);
        PageBean<CommodityBean> userPageBean = new PageBean<CommodityBean>(page, rows, count);
        userPageBean.setList(list);
        return userPageBean;
    }

    @Override
    public CommodityBean findById(Long id) {
        return commodityMapper.findById(id);
    }

    @Override
    public Long commondityShowCount(Long id) {
        return commodityMapper.commondityShowCount(id);
    }

    @Override
    public List<CommondityShowBean> findAllCommondityShow(Long id) {
        return commodityMapper.findAllCommondityShow(id);
    }

    @Override
    public List<AreaBean> findAllArea(Long id) {
        return commodityMapper.findAllArea(id);
    }

    @Override
    public void addAddressUser(AddressBean address) {
        AreaBean areaBean = commodityMapper.findOneArea(address.getAreaid());
        address.setSitename(areaBean.getFullName());
        commodityMapper.addAddressUser(address);
        commodityMapper.updateAddressUser(address);
    }

    @Override
    public List findAllAddress(Long id) {
        return commodityMapper.findAllAddress(id);
    }

    @Override
    public LogisticsBean wuliu() {
        return commodityMapper.wuliu();
    }

    @Override
    public void updateLog(LogisticsBean logisticsBean) {
        commodityMapper.updateLog(logisticsBean);
    }

}
