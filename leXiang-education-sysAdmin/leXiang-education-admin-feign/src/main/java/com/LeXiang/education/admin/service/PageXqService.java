package com.LeXiang.education.admin.service;

import com.LeXiang.education.sysAdmin.common.interfaces.PageXqServiceApi;
import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(value = "leXiang-education-admin-service")
public interface PageXqService  extends PageXqServiceApi {
}
