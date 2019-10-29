package com.LeXiang.mapper;

import com.LeXiang.education.sysAdmin.common.model.HuiyuandengjiXq;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;

public interface HuiyuandengjiXqMapper {
    int count(HuiyuandengjiXq huiyuandengjiXq);

    List<HuiyuandengjiXq> findXqHuiyuandengji(HashMap<String, Object> m);

    void updStatus(@Param("id") Integer id,@Param("status") Integer status);

    void addXqHuiyuandengji(HuiyuandengjiXq huiyuandengjiXq);

    HuiyuandengjiXq toupdHuiyuanXq(Integer id);

    void updXqHuiyuandengji(HuiyuandengjiXq huiyuandengjiXq);

    void delHuiyuanXqs(Integer id);
}
