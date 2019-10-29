package com.LeXiang.education.sysAdmin.common.interfaces;

import com.LeXiang.education.sysAdmin.common.model.HuiyuandengjiXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface HuiyuandengjiXqServiceApi {
    @RequestMapping("/findXqHuiyuandengji")
    PageBean<HuiyuandengjiXq> findXqHuiyuandengji(@RequestParam Integer page,@RequestParam Integer rows,@RequestBody HuiyuandengjiXq huiyuandengjiXq);

    @RequestMapping("/updStatus")
    void updStatus(@RequestParam Integer id,@RequestParam Integer status);

    @RequestMapping("/addXqHuiyuandengji")
    void addXqHuiyuandengji(@RequestBody HuiyuandengjiXq huiyuandengjiXq);

    @RequestMapping("/toupdHuiyuanXq")
    HuiyuandengjiXq toupdHuiyuanXq(@RequestParam Integer id);

    @RequestMapping("/updXqHuiyuandengji")
    void updXqHuiyuandengji(@RequestBody HuiyuandengjiXq huiyuandengjiXq);

    @RequestMapping("/delHuiyuanXqs")
    void delHuiyuanXqs(@RequestParam Integer[] ids);
}
