package com.lexiang.education.user.service.controller;

import com.LeXiang.education.admin.service.AddressService;
import com.LeXiang.education.sysAdmin.common.model.AddressBean;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.ResultBean;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/23 17:19
 * @Param
 * @return
 **/
@Controller
@RequestMapping("address")
public class AddressController {
    @Autowired
    private AddressService addressService;
    @RequestMapping("findAllAddress1")
    public String findAllAddress(Model model, @RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "5") Integer rows, AddressBean addressBean) {
        PageBean list = addressService.findAllAddress(page,rows,addressBean);
        model.addAttribute("page",list);
        return "admin/site/index";
    }
    @RequestMapping("updateS1")
    public @ResponseBody Boolean updateS1(Long id,Long s1) {
        try {
            addressService.updateS1(id,s1);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    @RequestMapping("delAddress")
    public @ResponseBody Boolean delAddress(Long[] ids) {
        try {
            addressService.delAddress(ids);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    //查询用户当前积分
    @RequestMapping("selectUserJifen")
    public @ResponseBody
    ResultBean selectUserJifen (HttpServletRequest request){
    //  User user = request.getSession().getAttribute(request.getSession().getId());
    // if (user!=null) {
    //    Long jifen = addressService.selectUserJifen(user.getId);
            Long jifen = addressService.selectUserJifen(1l);
            return new ResultBean(true,jifen);
    //      }else {
    //        return new ResultBean(false,"0");
    //    }
    }
    @RequestMapping("delAddressPoiDown")
    public @ResponseBody void delAddressPoiDown(HttpServletResponse response, Long[] ids) {
        try {
            List<AddressBean> addressBeans =  addressService.poiDown(ids);
            String s = JSON.toJSONString(addressBeans);
            List<AddressBean> list = JSON.parseArray(s, AddressBean.class);
            String[] rowName ={"ID","用户ID","地区ID","详细地址","用户名","是否默认地址","状态",};
            List<Object[]>  dataList = new ArrayList<Object[]>();
            for (int i = 0; i <list.size() ; i++) {
                Object[] obj=new Object[rowName.length];
                obj[0] = list.get(i).getId();
                obj[1] = list.get(i).getUid();
                obj[2] = list.get(i).getAreaid();
                obj[3] = list.get(i).getSitename();
                obj[4] = list.get(i).getUname();
                if (list.get(i).getStatus() == 9) {
                    obj[5] = "是";
                }else {
                    obj[5] = "否";
                }
                if (list.get(i).getS1()==1) {
                    obj[6] = "正常";
                }else {
                    obj[6] ="违规禁用" ;
                }
                dataList.add(obj);
            }
            ExportExcel exportExcel = new ExportExcel("收货人地址统计",rowName,dataList ,response);
            exportExcel.export();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
         @RequestMapping("updateUserJifen")
        public @ResponseBody
         ResultBean updateUserJifen (Double price, Long comId, HttpServletRequest request){
        //User user = request.getSession().getAttribute(request.getSession().getId());
        SnowFlake snowFlake = new SnowFlake();
        //生成 订单号
        long l = snowFlake.nextId();
        //zhuang 1 RMB 2 积分  price 需要付款的总金额或总积分
        //addressService.addOrder(l,comId,user.getId,user.getName,user.getImg);
        try {
            addressService.addOrder(price,l,comId,1l,"zhangsan","https://tfsimg.alipay.com/images/partner/T1WR8DXhJaXXXXXXXX");
            return new ResultBean(true,"http://localhost:5880/pageZhang/toAdminAdmin");
        } catch (Exception e) {
            e.printStackTrace();
            return new ResultBean(false,"");
        }


    }
    @RequestMapping("findDingDan")
    public @ResponseBody Long findDingDan (){
        SnowFlake snowFlake = new SnowFlake();
        //生成 订单号
        return snowFlake.nextId();
        //zhuang 1 RMB 2 积分  price 需要付款的总金额或总积分
    }

    public static void main(String[] args) {
        int[] arr = {1,34,2,65,12343,29831,91,74,641};
        int p = 0;
        for(int i = 0;i<arr.length;i++) {
            for(int j = i+1;j<arr.length ;j++){
                if(arr[i]<arr[j]){
                    p = arr[i];
                    arr[i] = arr[j];
                    arr[j] = p;
                }
            }
        }
        Arrays.stream(arr).forEach(System.out::println);//转成流
    }
}
