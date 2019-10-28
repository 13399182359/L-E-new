package com.LeXiang;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.data.elasticsearch.repository.config.EnableElasticsearchRepositories;

@SpringBootApplication
@EnableDiscoveryClient
@EnableEurekaClient
@RefreshScope
@MapperScan("com.LeXiang.mapper")
@EnableElasticsearchRepositories(basePackages = "com.LeXiang.userDao")
public class SysAdminServiceApplication {


    public static void main(String[] args) {
        SpringApplication.run(SysAdminServiceApplication.class, args);
    }

}
