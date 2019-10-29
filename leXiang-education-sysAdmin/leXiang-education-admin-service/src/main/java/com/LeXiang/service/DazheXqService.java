package com.jk.service;

import com.LeXiang.education.sysAdmin.common.model.DazheXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.PlayClassgtj;

import java.util.List;

public interface DazheXqService {
    PageBean<DazheXq> findXqDazhe(Integer page, Integer rows, DazheXq dazheXq);

    void delDazheXq(Integer id);

    void delDazheXqs(Integer[] ids);

    DazheXq findXqDazheOne(Integer id);

    void updDazheXq(DazheXq dazheXq);

    void addXqDazhe(DazheXq dazheXq);

    /*List<PlayClassgtj> findpalyclass();*/
}
