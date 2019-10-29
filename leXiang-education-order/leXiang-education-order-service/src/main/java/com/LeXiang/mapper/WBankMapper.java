package com.LeXiang.mapper;

import com.LeXiang.education.order.common.model.WBank;
import com.LeXiang.education.order.common.model.WBankExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface WBankMapper {
    int countByExample(WBankExample example);

    int deleteByExample(WBankExample example);

    int deleteByPrimaryKey(Long bankid);

    int insert(WBank record);

    int insertSelective(WBank record);

    List<WBank> selectByExample(WBankExample example);

    WBank selectByPrimaryKey(@Param("bankid") Long bankid);

    int updateByExampleSelective(@Param("record") WBank record, @Param("example") WBankExample example);

    int updateByExample(@Param("record") WBank record, @Param("example") WBankExample example);

    int updateByPrimaryKeySelective(WBank record);

    int updateByPrimaryKey(WBank record);
}