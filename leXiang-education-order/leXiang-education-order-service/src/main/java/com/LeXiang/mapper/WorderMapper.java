package com.LeXiang.mapper;

import com.LeXiang.education.order.common.model.PlayClassgtj;
import com.LeXiang.education.order.common.model.WPay;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface WorderMapper {


    Integer getCount(@Param("playClassgtj") PlayClassgtj playClassgtj);

    List<WPay> queryOrder( @Param("playClassgtj") PlayClassgtj playClassgtj,@Param("start") Integer start,@Param("rows") Integer rows);

    void delOrderById(@Param("id") Long id);

    List<PlayClassgtj> toeditOrderById(@Param("id") Long id);

    List<PlayClassgtj> queryOrderAll(@Param("playClassgtj") PlayClassgtj playClassgtj);
}
