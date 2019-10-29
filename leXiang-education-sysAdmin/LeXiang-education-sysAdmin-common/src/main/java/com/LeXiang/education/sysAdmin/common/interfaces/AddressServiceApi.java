package com.LeXiang.education.sysAdmin.common.interfaces;

import com.LeXiang.education.sysAdmin.common.model.AddressBean;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/23 17:20
 * @Param
 * @return
 **/
public interface AddressServiceApi  {
    @RequestMapping("findAllAddress1")
    PageBean findAllAddress(@RequestParam Integer page, @RequestParam  Integer rows, @RequestBody AddressBean addressBean);
    @RequestMapping("updateS1")
    void updateS1(@RequestParam Long id,@RequestParam  Long s1);
    @RequestMapping("delAddress")
    void delAddress(@RequestParam Long[] ids);
    @RequestMapping("selectUserJifen")
    Long selectUserJifen(@RequestParam Long id);
    @RequestMapping("delAddressPoiDown")
    List poiDown(@RequestParam Long[] ids);
    @RequestMapping("updateUserJifen")
    void addOrder(@RequestParam Double price,@RequestParam long l,@RequestParam  Long comId,@RequestParam  long uid,@RequestParam String name,@RequestParam String s);

}
