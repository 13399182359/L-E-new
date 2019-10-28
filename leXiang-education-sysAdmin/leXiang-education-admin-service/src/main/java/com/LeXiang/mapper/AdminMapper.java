package com.LeXiang.mapper;

import com.LeXiang.education.sysAdmin.common.model.Admin;
import com.LeXiang.education.user.common.model.PlayClassgtj;
import com.LeXiang.education.user.common.model.Shop;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface AdminMapper {


    void insert(Admin user);

    List<Shop> queryShouye();

    List<PlayClassgtj> queryPlay();
}