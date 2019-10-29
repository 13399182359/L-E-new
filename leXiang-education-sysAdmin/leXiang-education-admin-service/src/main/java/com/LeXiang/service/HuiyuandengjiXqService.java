package com.LeXiang.service;

import com.LeXiang.education.sysAdmin.common.model.HuiyuandengjiXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;

public interface HuiyuandengjiXqService {
    PageBean<HuiyuandengjiXq> findXqHuiyuandengji(Integer page, Integer rows, HuiyuandengjiXq huiyuandengjiXq);

    void updStatus(Integer id, Integer status);

    void addXqHuiyuandengji(HuiyuandengjiXq huiyuandengjiXq);

    HuiyuandengjiXq toupdHuiyuanXq(Integer id);

    void updXqHuiyuandengji(HuiyuandengjiXq huiyuandengjiXq);

    void delHuiyuanXqs(Integer[] ids);
}
