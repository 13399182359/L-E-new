package com.lexiang.education.user.service.controller;

import com.LeXiang.education.admin.service.OrderService;
import com.LeXiang.education.order.common.model.PlayClassgtj;
import com.LeXiang.education.order.common.model.WBank;
import com.LeXiang.education.order.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * @类名: PoiController
 * @描述:
 * @作者: 王葛瑞
 * @时间: 2019-10-21 13:53
 **/
@RequestMapping("/poi")
@RestController
public class PoiController {

//=========================================poi导出=====================================

    @Autowired
    private OrderService orderService;

    @RequestMapping("/exportContentList")
    public void  exportContentList(HttpServletResponse response,Long[] ids,WBank wbank){
        List<WBank> wBanks;
        //获得数据信息
        if(ids==null || ids.length<=0){

            wBanks=orderService.queryBank(wbank);
        }else{
            wBanks=orderService.findAll(ids);
        }

        //标题
        String title="【卡号信息导出】";
        String[] rowsName=new String[]{"序号","持卡者","姓名","开户行","账号","省市","开户行地址","联系人手机"};
        //定义数据集合
        List<Object[]>  dataList = new ArrayList<Object[]>();

        for (int i = 0; i <wBanks.size() ; i++) {
            Object[] obj=new Object[rowsName.length];
            obj[0] = wBanks.get(i).getBankid();
            obj[1] = wBanks.get(i).getUsername();
            obj[2] = wBanks.get(i).getBankname();
            obj[3] = wBanks.get(i).getOpenbank();
            obj[4] = wBanks.get(i).getBankaccount();
            obj[5] = wBanks.get(i).getBankareaid();
            obj[6] = wBanks.get(i).getBanksite();
            obj[7] = wBanks.get(i).getBankphone();
            dataList.add(obj);
        }
        ExportExcel exportExcel = new ExportExcel(title, rowsName,dataList,response);
        try {
            exportExcel.export();
        } catch (Exception e) {
            e.printStackTrace();
        }
    };



    @RequestMapping("/exportOrderList")
    public void  exportOrderList(HttpServletResponse response, PlayClassgtj playClassgtj){


        //获得数据信息
        List<PlayClassgtj> lists=orderService.exportOrderList(playClassgtj);

        //标题
        String title="【订单信息导出】";
        String[] rowsName=new String[]{"订单ID","购买用户","直播课程ID","直播课程名称","所属机构","原价","折扣","折扣类型","订单价格","订单状态","学习状态","订单生成时间"};
        //定义数据集合
        List<Object[]>  dataList = new ArrayList<Object[]>();

        for (int i = 0; i <lists.size() ; i++) {
            Object[] obj=new Object[rowsName.length];
            obj[0] = lists.get(i).getId();
            obj[1] = lists.get(i).getUsername();
            obj[2] = lists.get(i).getLineclassid();
            obj[3] = lists.get(i).getPlayname();
            obj[4] = lists.get(i).getOrgname();
            obj[5] = lists.get(i).getBazaarprice();
            obj[6] = lists.get(i).getDiscount();
            obj[7] = lists.get(i).getDiscounttype();
            obj[8] = lists.get(i).getPrice();
            obj[9] = lists.get(i).getRefundstatus();
            obj[10] = lists.get(i).getStudystatus();
            obj[11] = lists.get(i).getRefunddate();
            dataList.add(obj);
        }
        ExportExcel exportExcel = new ExportExcel(title, rowsName,dataList,response);
        try {
            exportExcel.export();
        } catch (Exception e) {
            e.printStackTrace();
        }
    };


}
