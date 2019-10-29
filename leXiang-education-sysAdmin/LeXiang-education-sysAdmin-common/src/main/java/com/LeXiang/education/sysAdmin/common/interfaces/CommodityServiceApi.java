package com.LeXiang.education.sysAdmin.common.interfaces;

import com.LeXiang.education.sysAdmin.common.model.*;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/16 16:28
 * @Param
 * @return
 **/

public interface CommodityServiceApi {

    @RequestMapping("addOrUpdate")
    void addOrUpdate(@RequestBody CommodityBean commodityBean);

    @RequestMapping("updateStatus")
    void updateStatus(@RequestParam Long[] ids,@RequestParam Long where);

    @RequestMapping("deleteCommodity")
    void deleteCommodity(@RequestBody Long[] ids);

    @RequestMapping("findAll")
    PageBean findAll(@RequestBody CommodityBean commodityBean ,@RequestParam Integer page,@RequestParam Integer rows);

    @RequestMapping("findById")
    CommodityBean findById(@RequestParam  Long id);
    /**
     * @Author 张俊荣 15835910851
     * @Description //TODO
     * @Date 2019/10/19 10:20
     * @info @RequestMapping("findById")  内部调用 不对外开放
     * @return
     **/
    @RequestMapping("commondityShowCount")
    Long commondityShowCount(@RequestParam  Long id);
    /**
     * @Author 张俊荣 15835910851
     * @Description //TODO
     * @Date 2019/10/19 10:20
     *  @info @RequestMapping("findById")  内部调用 不对外开放
     * @return
     **/
    @RequestMapping("findAllCommondityShow")
    List<CommondityShowBean> findAllCommondityShow(@RequestParam Long id);
    @RequestMapping("findAllArea")
    List<AreaBean> findAllArea(@RequestParam Long id);
    @RequestMapping("addAddressUser")
    void addAddressUser(@RequestBody AddressBean address);
    @RequestMapping("findAllAddress")
    List findAllAddress(@RequestParam  Long id);
    @RequestMapping("wuliu")
    LogisticsBean wuliu();
    @RequestMapping("updateLog")
    void updateLog(@RequestBody LogisticsBean logisticsBean);
}
