package com.LeXiang.education.admin.service;

import com.LeXiang.education.sysAdmin.common.interfaces.CommodityServiceApi;
import com.LeXiang.education.sysAdmin.common.model.CommodityBean;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Service;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/16 16:26
 * @Param
 * @return
 **/
@FeignClient(value = "leXiang-education-admin-service")
public interface CommodityService  extends CommodityServiceApi {
}
