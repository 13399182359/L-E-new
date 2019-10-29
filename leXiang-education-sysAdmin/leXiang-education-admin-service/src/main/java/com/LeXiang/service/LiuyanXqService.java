package com.jk.service;

import com.LeXiang.education.sysAdmin.common.model.LiuyanXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;

public interface LiuyanXqService {
    PageBean<LiuyanXq> findXqLiuyan(Integer page, Integer rows, LiuyanXq liuyanXq);

    void huishouLiuyanXq(Integer id);

    void huishouLiuyanXqs(Integer[] ids);

    PageBean<LiuyanXq> findXqLiuyanHS(Integer page, Integer rows, LiuyanXq liuyanXq);

    void huifuLiuyanXq(Integer id);

    void delLiuyanXqs(Integer[] ids);
}
