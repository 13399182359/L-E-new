package com.lexiang.education.user.service.controller;

import com.LeXiang.education.admin.service.CommondityTypeService;
import com.LeXiang.education.sysAdmin.common.model.CommondityTypeBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/17 22:05
 * @Param
 * @return
 **/
@RequestMapping("commondityType")
@RestController
public class CommondityTypeController {
    @Autowired
    private CommondityTypeService commondityTypeService;
    @RequestMapping("findAll")
    public List<CommondityTypeBean> findAll (Long id){
        return commondityTypeService.findAllCommondityType(id);
    }
}
