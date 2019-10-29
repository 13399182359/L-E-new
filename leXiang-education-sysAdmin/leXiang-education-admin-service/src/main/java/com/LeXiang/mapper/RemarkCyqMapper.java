package com.LeXiang.mapper;

import com.LeXiang.education.sysAdmin.common.model.Remark;

import java.util.HashMap;
import java.util.List;

public interface RemarkCyqMapper {
    int findRemarkCount();

    List<Remark> findRemark(HashMap<String, Object> map);

    void deleteRemark(Long id);

    void updRemarkShow(Long id);

    void remarkShowUpd(Long id);
}
