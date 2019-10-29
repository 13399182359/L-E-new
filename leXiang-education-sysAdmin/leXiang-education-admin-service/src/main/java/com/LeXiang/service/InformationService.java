package com.LeXiang.service;

import com.LeXiang.education.sysAdmin.common.model.Information;
import com.LeXiang.education.sysAdmin.common.model.PageBean;

public interface InformationService {
    PageBean<Information> findInformation(Integer page, Integer rows, Information information);

    Information toupd(Integer id);

    void addInformation(Information information);

    void delById(Integer[] ids);

    void updInformation(Information information);
}
