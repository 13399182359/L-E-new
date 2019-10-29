package com.LeXiang.mapper;

import com.LeXiang.education.sysAdmin.common.model.MiaoshaXq;

import java.util.HashMap;
import java.util.List;

public interface MiaoshaXqMapper {
    int count(MiaoshaXq miaoshaXq);

    List<MiaoshaXq> findXqDazhe(HashMap<String, Object> m);

    void addXqMiaosha(MiaoshaXq miaoshaXq);

    void delMiaoshaXq(Integer id);

    MiaoshaXq findXqMiaoshaOne(Integer id);

    void updMiaoShaXq(MiaoshaXq miaoshaXq);
}
