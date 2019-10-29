package com.LeXiang.controller;

import com.LeXiang.education.sysAdmin.common.interfaces.InformationServiceApi;
import com.LeXiang.education.sysAdmin.common.model.Information;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.service.InformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * @类名: InformationXqController
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-16 20:17
 **/
@RestController
public class InformationXqController implements InformationServiceApi {

    @Autowired
    private InformationService informationService;

    @Override
    public PageBean<Information> findInformation(Integer page, Integer rows, Information information) {
        return informationService.findInformation(page,rows,information);
    }

    @Override
    public Information toupd(@RequestParam("id")Integer id) {
        return informationService.toupd(id);
    }

    @Override
    public void addInformation( Information information) {
        informationService.addInformation(information);
    }

    @Override
    public void delById(@RequestParam("ids")Integer[] ids) {
        informationService.delById(ids);
    }

    @Override
    public void updInformation(Information information) {
        informationService.updInformation(information);
    }

}