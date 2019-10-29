package com.LeXiang.education.order.common.interfaces;

import com.LeXiang.education.order.common.model.*;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface OrderServiceApi {


    @RequestMapping("queryFinList")
    List<With> queryFinList();

    @RequestMapping("queryFin")
    PageResult queryFin(@RequestBody With with, @RequestParam Integer page,@RequestParam Integer rows);
    @RequestMapping("delWithById")
    void delWithById(@RequestParam Long[] ids);
    @RequestMapping("updWithById")
    void updWithById(@RequestParam Long[] ids);

    @RequestMapping("queryBank")
    List<WBank> queryBank(@RequestBody WBank wbank);
    @RequestMapping("delBankById")
    void delBankById(@RequestParam Long[] ids);
    @RequestMapping("findAll")
    List<WBank> findAll(@RequestParam Long[] ids);

    @RequestMapping("queryPay")
    PageResult queryPay(@RequestBody WPay wpay,@RequestParam  Integer page,@RequestParam  Integer rows);

    /*@RequestMapping("queryUserByName")
    void queryUserByName(@RequestParam String username);
*/

    @RequestMapping("queryOrder")
    PageResult queryOrder(@RequestBody PlayClassgtj playClassgtj,@RequestParam Integer page,@RequestParam Integer rows);
    @RequestMapping("delOrderById")
    void delOrderById(@RequestParam Long[] ids);
    @RequestMapping("toeditOrderById")
    List<PlayClassgtj> toeditOrderById(@RequestParam Long id);

    @RequestMapping("queryRefund")
    PageResult queryRefund(@RequestBody PlayClassgtj playClassgtj,@RequestParam Integer page,@RequestParam Integer rows);

    @RequestMapping("queryOrg")
    List<Organization> queryOrg();

    @RequestMapping("exportOrderList")
    List<PlayClassgtj> exportOrderList(@RequestBody PlayClassgtj playClassgtj);
}
