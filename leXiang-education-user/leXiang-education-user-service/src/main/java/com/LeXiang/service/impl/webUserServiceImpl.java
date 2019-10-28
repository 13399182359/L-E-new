package com.LeXiang.service.impl;

import com.LeXiang.education.user.common.model.PlayClassgtj;
import com.LeXiang.education.user.common.model.Shop;
import com.LeXiang.mapper.UserMapper;
import com.LeXiang.service.WebUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@CacheConfig(cacheNames = "list")
public class webUserServiceImpl implements WebUserService {

    @Autowired
    private UserMapper adminMapper;
    @Override
    public List<Shop> queryShouye() {
        return adminMapper.queryShouye();
    }

    @Override
    public List<PlayClassgtj> queryPlay() {
        return adminMapper.queryPlay();
    }

    @Override
    @Cacheable(value = "list",key = "#video")
    public List<PlayClassgtj> queryEsAll(String video) {
        System.out.println("调用了方法 缓存 失败");
        List<PlayClassgtj> list = adminMapper.queryPlay();
        return list;
    }
}
