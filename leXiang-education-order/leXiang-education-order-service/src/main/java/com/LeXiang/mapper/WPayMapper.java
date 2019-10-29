package com.LeXiang.mapper;

import com.LeXiang.education.order.common.model.WPay;
import com.LeXiang.education.order.common.model.WPayExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface WPayMapper {
    int countByExample(WPayExample example);

    int deleteByExample(WPayExample example);

    int deleteByPrimaryKey(Long payid);

    int insert(WPay record);

    int insertSelective(WPay record);

/*
    List<WPay> selectByExample(@Param("example") WPayExample example,@Param("start") Integer start,@Param("rows") Integer rows);
*/

    WPay selectByPrimaryKey(Long payid);

    int updateByExampleSelective(@Param("record") WPay record, @Param("example") WPayExample example);

    int updateByExample(@Param("record") WPay record, @Param("example") WPayExample example);

    int updateByPrimaryKeySelective(WPay record);

    int updateByPrimaryKey(WPay record);

    Integer getCount(@Param("wpay") WPay wpay);

    List<WPay> queryPay(@Param("wpay") WPay wpay,@Param("start") Integer start,@Param("rows") Integer rows);
}