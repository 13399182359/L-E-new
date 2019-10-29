package com.LeXiang.education.admin.service;

import com.LeXiang.education.sysAdmin.common.interfaces.AddressServiceApi;
import org.springframework.cloud.openfeign.FeignClient;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/23 17:23
 * @Param
 * @return
 **/
@FeignClient(value = "leXiang-education-admin-service")
public interface AddressService extends AddressServiceApi {
}
