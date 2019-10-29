package com.LeXiang.controller;

import com.LeXiang.education.sysAdmin.common.interfaces.DazheXqServiceApi;
import com.LeXiang.education.sysAdmin.common.model.DazheXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.service.DazheXqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

/**
 * @类名: DazheXqController
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-24 15:48
 **/
@RestController
public class DazheXqController implements DazheXqServiceApi {

    @Autowired
    private DazheXqService dazheXqService;

    @Override
    public PageBean<DazheXq> findXqDazhe(Integer page, Integer rows, DazheXq dazheXq) {
        return dazheXqService.findXqDazhe(page,rows,dazheXq);
    }

    @Override
    public void delDazheXq(Integer id) {
        dazheXqService.delDazheXq(id);
    }

    @Override
    public void delDazheXqs(Integer[] ids) {
        dazheXqService.delDazheXqs(ids);
    }

    @Override
    public DazheXq findXqDazheOne(Integer id) {
        return dazheXqService.findXqDazheOne(id);
    }

    @Override
    public void updDazheXq(DazheXq dazheXq) {
        dazheXqService.updDazheXq(dazheXq);
    }

    @Override
    public void addXqDazhe(DazheXq dazheXq) {
        dazheXqService.addXqDazhe(dazheXq);
    }

   /* @Override
    public List<PlayClassgtj> findpalyclass() {
        return dazheXqService.findpalyclass();
    }*/
}