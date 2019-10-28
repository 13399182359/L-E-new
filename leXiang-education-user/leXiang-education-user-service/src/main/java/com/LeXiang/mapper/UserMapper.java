package com.LeXiang.mapper;

import com.LeXiang.education.user.common.model.*;
import org.springframework.data.repository.CrudRepository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface UserMapper {



    void insertUser(User user);

    User getUserName(User user);

    List<Shop> queryShouye();

    List<PlayClassgtj> queryPlay();
}