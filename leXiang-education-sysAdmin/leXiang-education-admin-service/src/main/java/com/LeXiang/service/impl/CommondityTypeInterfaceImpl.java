package com.jk.service.impl;

import com.LeXiang.education.sysAdmin.common.model.CommondityTypeBean;
import com.jk.mapper.CommondityTypeMapper;
import com.jk.service.CommondityTypeInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/17 22:16
 * @Param
 * @return
 **/
@Service
public class CommondityTypeInterfaceImpl implements CommondityTypeInterface {
    @Autowired
    private CommondityTypeMapper commondityTypeMapper;
    @Override
    public List<CommondityTypeBean> findAll(Long id) {
        return commondityTypeMapper.findAll(id);
    }
}
