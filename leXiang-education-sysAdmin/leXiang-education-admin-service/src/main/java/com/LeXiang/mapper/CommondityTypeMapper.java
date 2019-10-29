package com.jk.mapper;

import com.LeXiang.education.sysAdmin.common.model.CommondityTypeBean;

import java.util.List;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/17 22:16
 * @Param
 * @return
 **/
public interface CommondityTypeMapper {
    List<CommondityTypeBean> findAll(Long id);
}
