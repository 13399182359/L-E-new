package com.jk.service.impl;

import com.LeXiang.education.sysAdmin.common.model.AddressBean;
import com.LeXiang.education.sysAdmin.common.model.CommondityShowBean;
import com.LeXiang.education.sysAdmin.common.model.OrderBean;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.jk.mapper.AddressMapper;
import com.jk.service.AddressInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/23 17:26
 * @Param
 * @return
 **/
@Service
public class AddressInterfaceImpl implements AddressInterface {
    @Autowired
    private AddressMapper addressMapper;
    @Override
    public PageBean findAllAddress(Integer page, Integer rows, AddressBean addressBean) {
        int pageNumber = (page -1) *rows ;
        List list = addressMapper.findAllAddress(pageNumber,rows,addressBean);
        Integer count = addressMapper.findAllAddressCount(addressBean);
        PageBean<AddressBean> userPageBean = new PageBean<AddressBean>(page, rows, count);
        userPageBean.setList(list);
        return userPageBean;
    }

    @Override
    public void updateS1(Long id, Long s1) {
        addressMapper.updateS1(id,s1);
    }

    @Override
    public void delAddress(Long[] ids) {
        addressMapper.delAddress(ids);
    }

    @Override
    public Long selectUserJifen(Long id) {
        return addressMapper.selectUserJifen(id);
    }

    @Override
    public List poiDown( Long[] ids) {
        List<AddressBean> list = addressMapper.poiDown(ids);
        return list;
    }

    @Override
    public AddressBean findOneByUserId(long uid) {
       return addressMapper.addressMapper(uid);
    }

    @Override
    public void addOrder(OrderBean orderBean) {
        addressMapper.addOrder(orderBean);
    }

    @Override
    public void updateUserJifen(Double price_money, Long uid) {
        addressMapper.updateUserJifen(price_money,uid);
    }

    @Override
    public void updateCommondityRepertory(Long comId, Long ceil) {
        addressMapper.updateCommondityRepertory(comId,ceil);
    }

    @Override
    public void addCommondityShow(CommondityShowBean commondityShowBean) {
        addressMapper.addCommondityShow(commondityShowBean);
    }
}
