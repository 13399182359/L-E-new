package com.LeXiang.education.sysAdmin.common.interfaces;

import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.Remark;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface RemarkCyqServiceApi {

    @RequestMapping("/findRemark")
    public PageBean<Remark> findRemark(@RequestBody Remark remark, @RequestParam Integer page, @RequestParam Integer rows);

    @RequestMapping("/deleteRemark")
    public void deleteRemark(@RequestParam Long id);

    @RequestMapping("/deleteRemarkIds")
    public void deleteRemarkIds(@RequestParam Long[] ids);

    @RequestMapping("/updRemarkShow")
    public void updRemarkShow(@RequestParam Long id);

    @RequestMapping("/remarkShowUpd")
    public void remarkShowUpd(@RequestParam Long id);
}
