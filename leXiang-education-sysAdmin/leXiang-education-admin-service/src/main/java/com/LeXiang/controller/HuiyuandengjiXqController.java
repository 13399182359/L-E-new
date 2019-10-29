package com.jk.controller;

import com.LeXiang.education.sysAdmin.common.interfaces.HuiyuandengjiXqServiceApi;
import com.LeXiang.education.sysAdmin.common.model.HuiyuandengjiXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.jk.service.HuiyuandengjiXqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

/**
 * @类名: HuiyuandengjiXqController
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-25 14:13
 **/
@RestController
public class HuiyuandengjiXqController implements HuiyuandengjiXqServiceApi {

    @Autowired
    private HuiyuandengjiXqService huiyuandengjiXqService;

    @Override
    public PageBean<HuiyuandengjiXq> findXqHuiyuandengji(Integer page, Integer rows, HuiyuandengjiXq huiyuandengjiXq) {
        return huiyuandengjiXqService.findXqHuiyuandengji(page,rows,huiyuandengjiXq);
    }

    @Override
    public void updStatus(Integer id, Integer status) {
        huiyuandengjiXqService.updStatus(id,status);
    }

    @Override
    public void addXqHuiyuandengji(HuiyuandengjiXq huiyuandengjiXq) {
        huiyuandengjiXqService.addXqHuiyuandengji(huiyuandengjiXq);
    }

    @Override
    public HuiyuandengjiXq toupdHuiyuanXq(Integer id) {
        return huiyuandengjiXqService.toupdHuiyuanXq(id);
    }

    @Override
    public void updXqHuiyuandengji(HuiyuandengjiXq huiyuandengjiXq) {
        huiyuandengjiXqService.updXqHuiyuandengji(huiyuandengjiXq);
    }

    @Override
    public void delHuiyuanXqs(Integer[] ids) {
        huiyuandengjiXqService.delHuiyuanXqs(ids);
    }

}