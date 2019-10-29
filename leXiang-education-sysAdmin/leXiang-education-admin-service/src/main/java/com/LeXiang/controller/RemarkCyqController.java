package com.LeXiang.controller;

import com.LeXiang.education.sysAdmin.common.interfaces.RemarkCyqServiceApi;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.Remark;
import com.LeXiang.service.RemarkCyqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

/**
 * @类名: RemarkCyqController
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-25 14:45
 **/
@RestController
public class RemarkCyqController implements RemarkCyqServiceApi {

    @Autowired
    private RemarkCyqService remarkCyqService;

    @Override
    public PageBean<Remark> findRemark(Remark remark, Integer page, Integer rows) {
        return remarkCyqService.findRemark(remark,page,rows);
    }

    @Override
    public void deleteRemark(Long id) {
        remarkCyqService.deleteRemark(id);
    }

    @Override
    public void deleteRemarkIds(Long[] ids) {
        remarkCyqService.deleteRemarkIds(ids);
    }

    @Override
    public void updRemarkShow(Long id) {
        remarkCyqService.updRemarkShow(id);
    }

    @Override
    public void remarkShowUpd(Long id) {
        remarkCyqService.remarkShowUpd(id);
    }
}

