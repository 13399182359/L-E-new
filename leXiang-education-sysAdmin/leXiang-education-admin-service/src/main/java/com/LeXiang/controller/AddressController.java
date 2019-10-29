package com.jk.controller;

import com.LeXiang.education.sysAdmin.common.interfaces.AddressServiceApi;
import com.LeXiang.education.sysAdmin.common.model.*;
import com.jk.service.AddressInterface;
import com.jk.service.CommodityInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/23 17:23
 * @Param
 * @return
 **/
@RestController
public class AddressController implements AddressServiceApi {
    @Autowired
    private AddressInterface addressInterface;
    @Autowired
    private CommodityInterface commodityInterface;
    @Override
    public PageBean findAllAddress(Integer page, Integer rows, AddressBean addressBean) {
        return addressInterface.findAllAddress(page,rows,addressBean);
    }

    @Override
    public void updateS1(Long id, Long s1) {
        addressInterface.updateS1(id,s1);
    }

    @Override
    public void delAddress(Long[] ids) {
        addressInterface.delAddress(ids);
    }

    @Override
    public Long selectUserJifen(Long id) {
        return addressInterface.selectUserJifen(id);
    }

    @Override
    public List poiDown( Long[] ids) {
        return addressInterface.poiDown(ids);
    }

    @Override
    public void addOrder(Double price,long l, Long comId, long uid,String name, String s) {
        CommodityBean com = commodityInterface.findById(comId);
        SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd");
        Double s1 = price/com.getPrice();
        //获得 商品数量
        Long ceil =(long)Math.ceil(s1);
        //获取 收货地址信息
        AddressBean addressBean = addressInterface.findOneByUserId(uid);
        OrderBean orderBean = new OrderBean(uid,name,comId,l,com.getName(),s,com.getImg(),com.getPrice(),ceil,com.getFreight(),price,addressBean.getId(),sim.format(new Date()),1l,1l);
        //新增订单
        addressInterface.addOrder(orderBean);
        //新增订单成功后 需要 减少用户的积分
        addressInterface.updateUserJifen(orderBean.getPrice_money(),orderBean.getUid());
        //需要减少对应  商品  的  库存
        addressInterface.updateCommondityRepertory(comId,ceil);
        //添加 最近兑换人员信息
        CommondityShowBean commondityShowBean = new CommondityShowBean(uid,name,ceil,comId,sim.format(new Date()),s);
        addressInterface.addCommondityShow(commondityShowBean);
    }
}
