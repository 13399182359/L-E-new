package com.jk.controller;

import com.LeXiang.education.sysAdmin.common.interfaces.CommondityTypeServiceApi;
import com.LeXiang.education.sysAdmin.common.model.CommondityTypeBean;
import com.jk.service.CommondityTypeInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/17 22:14
 * @Param
 * @return
 **/
@RestController
public class CommondityTypeController implements CommondityTypeServiceApi {

    @Autowired
    private CommondityTypeInterface commondityTypeInterface;

    @Override
    public List<CommondityTypeBean> findAllCommondityType (Long id) {
        return commondityTypeInterface.findAll(id);
    }
}
