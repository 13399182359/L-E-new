package com.LeXiang.education.sysAdmin.common.interfaces;

import com.LeXiang.education.sysAdmin.common.model.CommondityTypeBean;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/17 22:07
 * @Param
 * @return
 **/
public interface CommondityTypeServiceApi {

    @RequestMapping("findAllCommondityType")
    List<CommondityTypeBean> findAllCommondityType(@RequestParam Long id);
}
