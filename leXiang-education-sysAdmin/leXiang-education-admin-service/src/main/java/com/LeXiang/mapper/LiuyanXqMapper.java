package com.LeXiang.mapper;

import com.LeXiang.education.sysAdmin.common.model.LiuyanXq;

import java.util.HashMap;
import java.util.List;

public interface LiuyanXqMapper {
    int count(LiuyanXq liuyanXq);

    List<LiuyanXq> findXqLiuyan(HashMap<String, Object> m);

    void huishouLiuyanXq(Integer id);

    int countHS(LiuyanXq liuyanXq);

    List<LiuyanXq> findXqLiuyanHS(HashMap<String, Object> m);

    void huifuLiuyanXq(Integer id);

    void delLiuyanXqs(Integer id);
}
