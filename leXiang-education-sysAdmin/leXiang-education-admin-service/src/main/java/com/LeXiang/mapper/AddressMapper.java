package com.jk.mapper;

import com.LeXiang.education.sysAdmin.common.model.AddressBean;
import com.LeXiang.education.sysAdmin.common.model.CommondityShowBean;
import com.LeXiang.education.sysAdmin.common.model.OrderBean;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/23 20:05
 * @Param
 * @return
 **/
public interface AddressMapper {
    List findAllAddress(@Param("a") Integer page,@Param("b") Integer rows,@Param("ress") AddressBean addressBean);

    Integer findAllAddressCount(@Param("ress") AddressBean addressBean);

    void updateS1(@Param("id")Long id,@Param("s1") Long s1);

    void delAddress(Long[] ids);

    Long selectUserJifen(Long id);

    List poiDown( Long[] ids);

    AddressBean addressMapper(long uid);

    void addOrder(@Param("orderBean") OrderBean orderBean);

    void updateUserJifen(@Param("price") Double price_money,@Param("uid") Long uid);

    void updateCommondityRepertory(@Param("id") Long comId,@Param("count") Long ceil);

    void addCommondityShow(CommondityShowBean commondityShowBean);
}
