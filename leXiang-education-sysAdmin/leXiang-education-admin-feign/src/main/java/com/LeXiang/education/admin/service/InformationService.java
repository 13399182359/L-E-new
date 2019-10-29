package com.LeXiang.education.admin.service;

import com.LeXiang.education.sysAdmin.common.interfaces.InformationServiceApi;
import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(value = "leXiang-education-admin-service")
public interface InformationService extends InformationServiceApi {





}
