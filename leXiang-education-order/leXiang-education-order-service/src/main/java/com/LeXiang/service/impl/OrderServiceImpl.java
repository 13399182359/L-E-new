package com.LeXiang.service.impl;

import com.LeXiang.education.order.common.model.*;
import com.LeXiang.mapper.*;
import com.LeXiang.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @类名: OrderServiceImpl
 * @描述:
 * @作者: 王葛瑞
 * @时间: 2019-10-16 19:46
 **/
@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private WithMapper withMapper;

    @Autowired
    private WBankMapper wBankMapper;

    @Autowired
    private WPayMapper wPayMapper;

    @Autowired
    private WorderMapper worderMapper;

    @Autowired
    private OrganizationMapper organizationMapper;

    @Override
    public List<With> queryFinList() {
        return withMapper.queryFinList();
    }

    @Override
    public PageResult queryFin(With with, Integer pageNum, Integer rows) {

        PageResult page = new PageResult();
        page.setCurrent(pageNum);
        page.setNumPerPage(rows);

        Integer totalCount = withMapper.getCount(with);
        page.setTotalCount(totalCount);
        Integer start = (pageNum - 1)*rows;
        List<With> list=withMapper.queryFin(with,start,rows);

        //设置当前页面数据
        page.setPageList(list);
        return page;
    }

    @Override
    public void delWithById(Long[] ids) {
        for (Long id : ids) {
            withMapper.delWithById(id);
        }
    }

    @Override
    public void updWithById(Long[] ids) {
        for (Long id : ids) {
            withMapper.updWithById(id);
        }
    }



    @Override
    public List<WBank> queryBank(WBank wbank) {

        WBankExample wBankExample = new WBankExample();
        WBankExample.Criteria criteria = wBankExample.createCriteria();
        if(wbank!=null){
            if(wbank.getUsername()!=null && wbank.getUsername().length()>0){
                criteria.andUsernameLike("%"+wbank.getUsername()+"%");
            }
            if(wbank.getBankaccount()!=null){
                criteria.andBankaccountEqualTo(wbank.getBankaccount());
            }
            if(wbank.getBankname()!=null && wbank.getBankname().length()>0){
                criteria.andBanknameLike("%"+wbank.getBankname()+"%");
            }
        }

        List<WBank> wBanks = wBankMapper.selectByExample(wBankExample);

        return wBanks;
    }

    @Override
    public void delBankById(Long[] ids) {
        for (Long id : ids) {
            wBankMapper.deleteByPrimaryKey(id);
        }
    }

    @Override
    public List<WBank> findAll(Long[] ids) {
        List<WBank> objects = new ArrayList<>();
        for (Long id : ids) {
            WBank wBank = wBankMapper.selectByPrimaryKey(id);
            objects.add(wBank);
        }
        return objects;
    }

   /* @Override
    public void queryUserByName(String username) {

    }*/

    @Override
    public PageResult queryOrder(PlayClassgtj playClassgtj, Integer pageNum, Integer rows) {
        PageResult page = new PageResult();
        page.setCurrent(pageNum);
        page.setNumPerPage(rows);
        Integer totalCount=worderMapper.getCount(playClassgtj);
        page.setTotalCount(totalCount);
        Integer start =(pageNum-1)*rows;

        List<WPay> wPays = worderMapper.queryOrder(playClassgtj,start,rows);

        page.setPageList(wPays);
        return page;
    }

    @Override
    public void delOrderById(Long[] ids) {
        for (Long id : ids) {
            worderMapper.delOrderById(id);
        }

    }

    @Override
    public List<PlayClassgtj> toeditOrderById(Long id) {

        return  worderMapper.toeditOrderById(id);
    }

    @Override
    public List<Organization> queryOrg() {
        return organizationMapper.queryOrg();
    }

    @Override
    public List<PlayClassgtj> queryOrderAll(PlayClassgtj playClassgtj) {
        return worderMapper.queryOrderAll(playClassgtj);
    }

    @Override
    public PageResult queryPay(WPay wpay, Integer pageNum, Integer rows) {
        PageResult page = new PageResult();
        page.setCurrent(pageNum);
        page.setNumPerPage(rows);
        Integer totalCount=wPayMapper.getCount(wpay);
        page.setTotalCount(totalCount);
        Integer start =(pageNum-1)*rows;

        List<WPay> wPays = wPayMapper.queryPay(wpay,start,rows);

        page.setPageList(wPays);
        return page;

    }


}
