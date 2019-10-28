package com.LeXiang.education.user.common.interfaces;

import com.LeXiang.education.user.common.model.PlayClassgtj;
import com.LeXiang.education.user.common.model.Shop;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface ShopServiceApi {


    @RequestMapping("addEs")
    public String addShopEs() ;
    @RequestMapping("queryEsPlay")
     List<PlayClassgtj> queryEsPlay(@RequestBody String name, @RequestParam Integer page, @RequestParam Integer rows);

    @RequestMapping("/queryEsAll")
    List<PlayClassgtj> queryEsAll(@RequestBody String video);
}
