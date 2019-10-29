package com.jk.controller;

import com.LeXiang.education.sysAdmin.common.interfaces.LiuyanXqServiceApi;
import com.LeXiang.education.sysAdmin.common.model.LiuyanXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.jk.service.LiuyanXqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

/**
 * @类名: LiuyanXqController
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-24 13:34
 **/
@RestController
public class LiuyanXqController implements LiuyanXqServiceApi {

    @Autowired
    private LiuyanXqService liuyanXqService;

    @Override
    public PageBean<LiuyanXq> findXqLiuyan(Integer page, Integer rows, LiuyanXq liuyanXq) {
        return liuyanXqService.findXqLiuyan(page,rows,liuyanXq);
    }

    @Override
    public void huishouLiuyanXq(Integer id) {
        liuyanXqService.huishouLiuyanXq(id);
    }

    @Override
    public void huishouLiuyanXqs(Integer[] ids) {
        liuyanXqService.huishouLiuyanXqs(ids);
    }

    @Override
    public PageBean<LiuyanXq> findXqLiuyanHS(Integer page, Integer rows, LiuyanXq liuyanXq) {
        return liuyanXqService.findXqLiuyanHS(page,rows,liuyanXq);
    }

    @Override
    public void delLiuyanXqs(Integer[] ids) {
        liuyanXqService.delLiuyanXqs(ids);
    }

    @Override
    public void huifuLiuyanXq(Integer id) {
        liuyanXqService.huifuLiuyanXq(id);
    }
}