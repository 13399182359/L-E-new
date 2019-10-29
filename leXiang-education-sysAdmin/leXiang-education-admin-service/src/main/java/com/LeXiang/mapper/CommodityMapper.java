package com.jk.mapper;

import com.LeXiang.education.sysAdmin.common.model.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/16 16:46
 * @Param
 * @return
 **/
public interface CommodityMapper {

    void updateCommontidy(CommodityBean commodityBean);

    void addCommontidy(CommodityBean commodityBean);

    void updateStatus(@Param("m") Map m);

    void deleteCommondity(Long[] ids);

    List<CommodityBean> findAll(@Param("a") Integer page,@Param("b") Integer rows,@Param("commondity") CommodityBean commodityBean);

    Integer findCount(@Param("commondity") CommodityBean commodityBean);

    CommodityBean findById(Long id);

    Long commondityShowCount(Long id);

    List<CommondityShowBean> findAllCommondityShow(Long id);

    List<AreaBean> findAllArea(Long id);

    void addAddressUser(AddressBean address);

    List findAllAddress(Long id);

    AreaBean findOneArea(Long areaid);

    void updateAddressUser(AddressBean address);

    LogisticsBean wuliu();

    void updateLog(LogisticsBean logisticsBean);
}
