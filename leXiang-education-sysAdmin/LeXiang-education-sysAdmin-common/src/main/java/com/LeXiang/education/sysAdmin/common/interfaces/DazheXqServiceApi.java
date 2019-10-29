package com.LeXiang.education.sysAdmin.common.interfaces;

import com.LeXiang.education.sysAdmin.common.model.DazheXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.PlayClassgtj;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface DazheXqServiceApi {
    @RequestMapping("/findXqDazhe")
    PageBean<DazheXq> findXqDazhe(@RequestParam Integer page,@RequestParam Integer rows,@RequestBody DazheXq dazheXq);

    @RequestMapping("/delDazheXq")
    void delDazheXq(@RequestParam Integer id);

    @RequestMapping("/delDazheXqs")
    void delDazheXqs(@RequestParam Integer[] ids);

    @RequestMapping("/findXqDazheOne")
    DazheXq findXqDazheOne(@RequestParam Integer id);

    @RequestMapping("/updDazheXq")
    void updDazheXq(@RequestBody DazheXq dazheXq);

    @RequestMapping("/addXqDazhe")
    void addXqDazhe(@RequestBody DazheXq dazheXq);

    /*@RequestMapping("/updDazheXq")
    List<PlayClassgtj> findpalyclass();*/
}
