package com.LeXiang.service;

import com.LeXiang.education.user.common.model.PlayClassgtj;
import com.LeXiang.education.user.common.model.Shop;

import java.util.List;

public interface WebUserService {

    List<Shop> queryShouye();

    List<PlayClassgtj> queryPlay();
}
