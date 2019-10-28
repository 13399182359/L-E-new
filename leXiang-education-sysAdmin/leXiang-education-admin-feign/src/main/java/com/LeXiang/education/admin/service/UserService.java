package com.LeXiang.education.admin.service;

import com.LeXiang.education.sysAdmin.common.interfaces.UserServiceApi;
import com.LeXiang.education.sysAdmin.common.model.Admin;
import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(value = "leXiang-education-admin-service")
public interface UserService extends UserServiceApi {



}
