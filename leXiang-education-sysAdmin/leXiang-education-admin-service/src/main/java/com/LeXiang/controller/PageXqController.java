package com.LeXiang.controller;

import com.LeXiang.education.sysAdmin.common.interfaces.PageXqServiceApi;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.PageXq;
import com.LeXiang.service.PageXqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

/**
 * @类名: PageXqController
 * @描述:
 * @作者: 徐强
 * @时间: 2019-10-18 19:51
 **/
@RestController
public class PageXqController implements PageXqServiceApi {

    @Autowired
    private PageXqService pageXqService;

    @Override
    public PageBean findPage(Integer page, Integer rows) {
        return pageXqService.findPage(page,rows);
    }

    @Override
    public void delPageById(Integer id) {
        pageXqService.delPageById(id);
    }

    @Override
    public void addxqpage(PageXq pageXq) {
        pageXqService.addxqpage(pageXq);
    }

    @Override
    public void delPageByIds(Integer[] ids) {
        pageXqService.delPageByIds(ids);
    }

    @Override
    public PageXq toupdXqPage(Integer id) {
        return pageXqService.toupdXqPage(id);
    }

    @Override
    public void updXqPage(PageXq pageXq) {
        pageXqService.updXqPage(pageXq);
    }
}