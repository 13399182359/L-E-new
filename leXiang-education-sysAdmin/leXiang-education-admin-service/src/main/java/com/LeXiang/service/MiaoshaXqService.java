package com.LeXiang.service;

import com.LeXiang.education.sysAdmin.common.model.MiaoshaXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;

public interface MiaoshaXqService {
    PageBean<MiaoshaXq> findXqMiaosha(Integer page, Integer rows, MiaoshaXq miaoshaXq);

    void addXqMiaosha(MiaoshaXq miaoshaXq);

    void delMiaoshaXq(Integer id);

    void delMiaoshaXqs(Integer[] ids);

    MiaoshaXq findXqMiaoshaOne(Integer id);

    void updMiaoShaXq(MiaoshaXq miaoshaXq);
}
