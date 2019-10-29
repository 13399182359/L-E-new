package com.LeXiang.mapper;

import com.LeXiang.education.sysAdmin.common.model.Class;

import java.util.HashMap;
import java.util.List;

public interface ClassMapper {
    int getCount();

    List<Class> userList(HashMap<String, Object> map);

    Boolean insert(Class cls);

    Boolean delete(Long id);

    Class queryUserById(Long id);

    Boolean update(Class cls);

    int getCountStatus();

    List<Class> findStatus(HashMap<String, Object> map);

    Boolean updateStatus(Long id);

    Boolean updStatus(Long id);

    Boolean ismarketing(Long id);

    Boolean ismarketings(Long id);
}
