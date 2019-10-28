package com.LeXiang.education.user.service;

import com.LeXiang.education.user.common.interfaces.UserServiceApi;
import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(value = "leXiang-education-user-service")
public interface  UserService extends UserServiceApi {



}
