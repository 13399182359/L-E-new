package com.LeXiang.controller;

import com.LeXiang.education.sysAdmin.common.interfaces.MiaoshaXqServiceApi;
import com.LeXiang.education.sysAdmin.common.model.MiaoshaXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.service.MiaoshaXqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

/**
 * @类名: MiaoshaXqController
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-24 20:52
 **/
@RestController
public class MiaoshaXqController implements MiaoshaXqServiceApi {

    @Autowired
    private MiaoshaXqService miaoshaXqService;

    @Override
    public PageBean<MiaoshaXq> findXqMiaosha(Integer page, Integer rows, MiaoshaXq miaoshaXq) {
        return miaoshaXqService.findXqMiaosha(page,rows,miaoshaXq);
    }

    @Override
    public void addXqMiaosha(MiaoshaXq miaoshaXq) {
        miaoshaXqService.addXqMiaosha(miaoshaXq);
    }

    @Override
    public void delMiaoshaXq(Integer id) {
        miaoshaXqService.delMiaoshaXq(id);
    }

    @Override
    public void delMiaoshaXqs(Integer[] ids) {
        miaoshaXqService.delMiaoshaXqs(ids);
    }

    @Override
    public MiaoshaXq findXqMiaoshaOne(Integer id) {
        return miaoshaXqService.findXqMiaoshaOne(id);
    }

    @Override
    public void updMiaoShaXq(MiaoshaXq miaoshaXq) {
        miaoshaXqService.updMiaoShaXq(miaoshaXq);
    }
}