package com.LeXiang.mapper;

import com.LeXiang.education.order.common.model.Userb;

public interface UserbMapper {
    int deleteByPrimaryKey(Long userid);

    int insert(Userb record);

    int insertSelective(Userb record);

    Userb selectByPrimaryKey(Long userid);

    int updateByPrimaryKeySelective(Userb record);

    int updateByPrimaryKey(Userb record);
}