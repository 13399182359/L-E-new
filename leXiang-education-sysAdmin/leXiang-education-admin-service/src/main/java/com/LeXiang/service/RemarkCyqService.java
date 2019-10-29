package com.LeXiang.service;

import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.Remark;

public interface RemarkCyqService {
    PageBean<Remark> findRemark(Remark remark, Integer page, Integer rows);

    void deleteRemark(Long id);

    void deleteRemarkIds(Long[] ids);

    void updRemarkShow(Long id);

    void remarkShowUpd(Long id);
}
