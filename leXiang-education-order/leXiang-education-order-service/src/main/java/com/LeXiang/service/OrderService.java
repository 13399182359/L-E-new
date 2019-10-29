package com.LeXiang.service;

import com.LeXiang.education.order.common.model.*;

import java.util.List;

public interface OrderService {

    List<With> queryFinList();

    PageResult queryFin(With with, Integer pageNum, Integer rows);

    List<WBank> queryBank(WBank wbank);

    void delBankById(Long[] ids);

    PageResult queryPay(WPay wpay, Integer pageNum, Integer rows);

    void delWithById(Long[] ids);

    void updWithById(Long[] ids);

    List<WBank> findAll(Long[] ids);

    //void queryUserByName(String username);

    PageResult queryOrder(PlayClassgtj playClassgtj, Integer pageNum, Integer rows);

    void delOrderById(Long[] ids);

    List<PlayClassgtj> toeditOrderById(Long id);

    List<Organization> queryOrg();

    List<PlayClassgtj> queryOrderAll(PlayClassgtj playClassgtj);
}
