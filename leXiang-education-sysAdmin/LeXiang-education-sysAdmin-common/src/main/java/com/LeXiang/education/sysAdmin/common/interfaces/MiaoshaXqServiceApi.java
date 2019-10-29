package com.LeXiang.education.sysAdmin.common.interfaces;

import com.LeXiang.education.sysAdmin.common.model.MiaoshaXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface MiaoshaXqServiceApi {
    @RequestMapping("/findXqMiaosha")
    PageBean<MiaoshaXq> findXqMiaosha(@RequestParam Integer page,@RequestParam Integer rows,@RequestBody MiaoshaXq miaoshaXq);

    @RequestMapping("/addXqMiaosha")
    void addXqMiaosha(@RequestBody MiaoshaXq miaoshaXq);

    @RequestMapping("/delMiaoshaXq")
    void delMiaoshaXq(@RequestParam Integer id);

    @RequestMapping("/delMiaoshaXqs")
    void delMiaoshaXqs(@RequestParam Integer[] ids);

    @RequestMapping("/findXqMiaoshaOne")
    MiaoshaXq findXqMiaoshaOne(@RequestParam Integer id);

    @RequestMapping("/updMiaoShaXq")
    void updMiaoShaXq(@RequestBody MiaoshaXq miaoshaXq);
}
