package com.LeXiang.education.sysAdmin.common.interfaces;

import com.LeXiang.education.sysAdmin.common.model.LiuyanXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface LiuyanXqServiceApi {

    @RequestMapping("/findXqLiuyan")
    PageBean<LiuyanXq> findXqLiuyan(@RequestParam Integer page, @RequestParam Integer rows, @RequestBody LiuyanXq liuyanXq);

    @RequestMapping("/huishouLiuyanXq")
    void huishouLiuyanXq(@RequestParam Integer id);

    @RequestMapping("/huishouLiuyanXqs")
    void huishouLiuyanXqs(@RequestParam Integer[] ids);

    @RequestMapping("/findXqLiuyanHS")
    PageBean<LiuyanXq> findXqLiuyanHS(@RequestParam Integer page, @RequestParam Integer rows, @RequestBody LiuyanXq liuyanXq);

    @RequestMapping("/delLiuyanXqs")
    void delLiuyanXqs(@RequestParam Integer[] ids);

    @RequestMapping("/huifuLiuyanXq")
    void huifuLiuyanXq(@RequestParam Integer id);
}
