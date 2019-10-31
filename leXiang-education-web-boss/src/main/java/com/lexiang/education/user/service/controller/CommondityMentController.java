package com.lexiang.education.user.service.controller;

import com.LeXiang.education.admin.service.OrderService;
import com.LeXiang.education.sysAdmin.common.model.CommondityCommentBean;
import com.LeXiang.education.sysAdmin.common.model.OrderBean;
import com.LeXiang.education.sysAdmin.common.model.ResultBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/10/19 11:28
 * @Param
 * @return
 **/
@RestController
@RequestMapping("zhangMent")
public class CommondityMentController {
    @Autowired
    private MongoTemplate mongoTemplate;
    @Autowired
    private OrderService orderService;

    @RequestMapping("findAll")
    public ResultBean findAll (Long id) {
        Query query = new Query();
        query.addCriteria(Criteria.where("cid").is(id));
       query.with(new Sort(Sort.Direction.DESC,"createddate"));
        query.skip(0); // 只展示前 10 条
        query.limit(10);
        List commondityCommentBeans = mongoTemplate.find(query, CommondityCommentBean.class,"comment");
        if(commondityCommentBeans == null || commondityCommentBeans.size() == 0) {
            return new ResultBean(false,"暂时没有评论信息！！");
        }
        return new ResultBean(true,commondityCommentBeans);
    }
    @RequestMapping("addMent")
    public ResultBean addMent (CommondityCommentBean commondityCommentBean, HttpServletRequest request) {
        SimpleDateFormat sim = new SimpleDateFormat();
     //   User user = request.getSession().getAttribute(request.getSession().getId());
        try {
          //  commondityCommentBean.setUimg(user.getImg);
            commondityCommentBean.setUimg("https://avatar.csdn.net/6/4/6/3_you23hai45.jpg");
            commondityCommentBean.setCreateddate(sim.format(new Date()));
            mongoTemplate.save(commondityCommentBean,"comment");
            return new ResultBean(true,"评论成功！！");
        } catch (Exception e) {
            e.printStackTrace();
            return new ResultBean(false,"评论失败！！");
        }
    }
    @RequestMapping("getSession") // 获取session
    public ResultBean getSession (Long comid, HttpServletRequest request) {
        //获取 用户登录信息
        /*User user = request.getSession().getAttribute(request.getSession().getId());
        if (user == null) {
            return new ResultBean(false,"请先登录后操作！");
        }*/
        ResultBean bean = new ResultBean();
      //  bean.setUid(user.getId);
        bean.setUid(1l);//模拟用户登录
        bean.setCid(comid);//模拟用户登录
        List<OrderBean> orderByMent = orderService.findOrderByMent(bean);
        if (orderByMent == null || orderByMent.size() == 0) {
            return new ResultBean(false,"先兑换商品后才能评论！");
        }
        for (OrderBean orderBean : orderByMent) {
                //getStatus 1 待付款 2 待发货 3待收货 4 待评论 5已完成
            if (orderBean.getStatus() == 4) {
                orderService.updateOrderStatus5(orderBean.getId());
                return new ResultBean(true,bean.getUid());
            }
        }
        for (int i = 0; i < orderByMent.size(); i++) {
            if (orderByMent.get(i).getStatus() < 4) {
                return new ResultBean(false,"订单未确认收货，暂时还不能评论！");
            }
            if (i == orderByMent.size() - 1) {
                return new ResultBean(false,"您已经评论过该商品！");
            }
        }
        return bean;
    }
}
