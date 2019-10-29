package com.LeXiang.mapper;

import com.LeXiang.education.sysAdmin.common.model.TouxianXq;

import java.util.HashMap;
import java.util.List;

public interface TouxianXqMapper {
    int count(TouxianXq touxianXq);

    List<TouxianXq> findXqTouxian(HashMap<String, Object> m);

    void addXqTouxian(TouxianXq touxianXq);

    void updTouxianStatus(Integer id, Integer status);

    TouxianXq findXqTouxianOne(Integer id);

    void updXqTouxian(TouxianXq touxianXq);

    void delXqTouxian(Integer id);
}
