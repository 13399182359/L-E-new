package com.LeXiang.mapper;

import com.LeXiang.education.sysAdmin.common.model.DazheXq;

import java.util.HashMap;
import java.util.List;

/**
 * @类名: DazheXqMapper
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-24 15:50
 **/
public interface DazheXqMapper {
    int count(DazheXq dazheXq);

    List<DazheXq> findXqDazhe(HashMap<String, Object> m);

    void delDazheXq(Integer id);

    DazheXq findXqDazheOne(Integer id);

    void updDazheXq(DazheXq dazheXq);

    void addXqDazhe(DazheXq dazheXq);

    /*List<PlayClassgtj> findpalyclass();*/
}