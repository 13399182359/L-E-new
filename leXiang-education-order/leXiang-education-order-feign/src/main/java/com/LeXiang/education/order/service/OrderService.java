package com.LeXiang.education.order.service;

import com.LeXiang.education.order.common.interfaces.OrderServiceApi;
import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(value = "leXiang-education-order-service")
public interface OrderService extends OrderServiceApi {



}
