package com.LeXiang.service.impl;

import com.LeXiang.education.user.common.model.PlayClassgtj;
import com.LeXiang.education.user.common.model.Shop;
import com.LeXiang.mapper.AdminMapper;
import com.LeXiang.service.WebUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class webUserServiceImpl implements WebUserService {
    @Autowired
    private AdminMapper adminMapper;
    @Override
    public List<Shop> queryShouye() {
        return adminMapper.queryShouye();
    }

    @Override
    public List<PlayClassgtj> queryPlay() {
        return adminMapper.queryPlay();
    }
}
