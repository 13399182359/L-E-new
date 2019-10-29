package com.LeXiang.mapper;

import com.LeXiang.education.order.common.model.With;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface WithMapper {
    List<With> queryFinList();

    int getCount(@Param("with") With with);

    List<With> queryFin(@Param("with") With with,@Param("start") Integer start,@Param("rows") Integer rows);

    void delWithById(@Param("id") Long id);

    void updWithById(@Param("id") Long id);
}