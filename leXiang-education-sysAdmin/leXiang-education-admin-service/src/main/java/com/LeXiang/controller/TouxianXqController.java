package com.LeXiang.controller;

import com.LeXiang.education.sysAdmin.common.interfaces.TouxianXqServiceApi;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.TouxianXq;
import com.LeXiang.service.TouxianXqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

/**
 * @类名: TouxianXqController
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-25 18:38
 **/
@RestController
public class TouxianXqController implements TouxianXqServiceApi {

    @Autowired
    private TouxianXqService touxianXqService;


    @Override
    public PageBean<TouxianXq> findXqTouxian(Integer page, Integer rows, TouxianXq touxianXq) {
        return touxianXqService.findXqTouxian(page,rows,touxianXq);
    }

    @Override
    public void addXqTouxian(TouxianXq touxianXq) {
        touxianXqService.addXqTouxian(touxianXq);
    }

    @Override
    public void updTouxianStatus(Integer id, Integer status) {
        touxianXqService.updTouxianStatus(id,status);
    }

    @Override
    public TouxianXq findXqTouxianOne(Integer id) {
        return touxianXqService.findXqTouxianOne(id);
    }

    @Override
    public void updXqTouxian(TouxianXq touxianXq) {
        touxianXqService.updXqTouxian(touxianXq);
    }

    @Override
    public void delXqTouxians(Integer[] ids) {
        touxianXqService.delXqTouxians(ids);
    }
}