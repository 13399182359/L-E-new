package com.lexiang.education.user.service.controller;

import com.LeXiang.education.sysAdmin.common.model.*;
import com.LeXiang.education.admin.service.UsergtjService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * @类名: PlayClassgtjController
 * @描述:
 * @作者: 郭廷俊
 * @时间: 2019-10-17 20:30
 **/
@Controller
public class PlayClassgtjController {

    @Autowired
    private UsergtjService playClassgtjService;

    @RequestMapping("/findplay")
    public String findplay(PlayClassgtj playClassgtj, Integer pageNum, Integer rows, Model model) {
        if (pageNum == null){
            pageNum = 1;
        }
        if (rows == null){
            rows = 10;
        }
        PageResult pageResult = playClassgtjService.findplay(playClassgtj,pageNum,rows);
        model.addAttribute("pageResult",pageResult);
        return "admin/playclass/lianxi";
    }

    @RequestMapping("/findall")
    public String findall( Model model) {
        List<PlayClassgtj> list = playClassgtjService.findall();
        model.addAttribute("list",list);
        return "admin/playclass/index";
    }

    /* *
     *@方法名
     *@描述  查询已审核的
     *@返回值类型
     *@作者 郭廷俊
     *@时间 2019/10/21 15:08
     */
    @RequestMapping("/findchecked")
    public String findchecked(PlayClassgtj playClassgtj, Integer pageNum, Integer rows, Model model) {
        if (pageNum == null){
            pageNum = 1;
        }
        if (rows == null){
            rows = 10;
        }
        PageResult pageResult = playClassgtjService.findchecked(playClassgtj,pageNum,rows);
        System.out.println(pageResult);
        model.addAttribute("pageResult",pageResult);
        return "admin/playclass/lianxi";
    }

    /* *
     *@方法名   findnochecked
     *@描述   查询未审核的
     *@返回值类型  java.lang.String
     *@作者 郭廷俊
     *@时间 2019/10/22 13:44
     */
    @RequestMapping("/findnochecked")
    public String findnochecked(PlayClassgtj playClassgtj, Integer pageNum, Integer rows, Model model) {
        if (pageNum == null){
            pageNum = 1;
        }
        if (rows == null){
            rows = 10;
        }
        PageResult pageResult = playClassgtjService.findnochecked(playClassgtj,pageNum,rows);
        model.addAttribute("pageResult",pageResult);
        return "admin/playclass/daishen";
    }

    /* *
     *@方法名   findrecycle
     *@描述   回收站查询
     *@返回值类型  java.lang.String
     *@作者 郭廷俊
     *@时间 2019/10/22 13:44
     */
    @RequestMapping("/findrecycle")
    public String findrecycle(PlayClassgtj playClassgtj, Integer pageNum, Integer rows, Model model) {
        if (pageNum == null){
            pageNum = 1;
        }
        if (rows == null){
            rows = 10;
        }
        PageResult pageResult = playClassgtjService.findrecycle(playClassgtj,pageNum,rows);
        model.addAttribute("pageResult",pageResult);
        return "admin/playclass/huishou";
    }

    /* *
     *@方法名   stopdistribution
     *@描述   禁用
     *@返回值类型  void
     *@作者 郭廷俊
     *@时间 2019/10/22 13:47
     */
    @RequestMapping("/stopclass")
    @ResponseBody
    public void stopclass(String ids) {
        playClassgtjService.stopclass(ids);
    }

    /* *
     *@方法名   startdistribution
     *@描述   允许分销
     *@返回值类型  void
     *@作者 郭廷俊
     *@时间 2019/10/22 15:09
     */
    @RequestMapping("/startdistribution")
    @ResponseBody
    public void startdistribution(String ids) {
        playClassgtjService.startdistribution(ids);
    }

    /* *
     *@方法名   stopdistribution
     *@描述   禁止分销
     *@返回值类型  void
     *@作者 郭廷俊
     *@时间 2019/10/22 15:10
     */
    @RequestMapping("/stopdistribution")
    @ResponseBody
    public void stopdistribution(String ids) {
        playClassgtjService.stopdistribution(ids);
    }

    @RequestMapping("/putaway")
    public String putaway(Long id) {
        playClassgtjService.putaway(id);
        return "redirect:/findchecked";
    }

    @RequestMapping("/putaway1")
    public String putaway1(Long id) {
        playClassgtjService.putaway(id);
        return "redirect:/findrecycle";
    }

    @RequestMapping("/soldout")
    public String soldout(Long id) {
        playClassgtjService.soldout(id);
        return "redirect:/findchecked";
    }

    @RequestMapping("/startclass")
    public String startclass(Long id) {
        playClassgtjService.startclass(id);
        return "redirect:/findrecycle";
    }

    @RequestMapping("/soldout1")
    public String soldout1(Long id) {
        playClassgtjService.soldout(id);
        return "redirect:/findrecycle";
    }

    @RequestMapping("/stopclass1")
    public String stopclass1(String ids) {
        playClassgtjService.stopclass(ids);
        return "redirect:/findchecked";
    }

    @RequestMapping("/stopclass2")
    public String stopclass2(String ids) {
        playClassgtjService.stopclass(ids);
        return "redirect:/findnochecked";
    }

    @RequestMapping("/shenheok")
    public String shenheok(Long id) {
        playClassgtjService.shenheok(id);
        return "redirect:/findnochecked";
    }


    @RequestMapping("/startdistribution1")
    public String startdistribution1(String ids) {
        playClassgtjService.startdistribution(ids);
        return "redirect:/findchecked";
    }

    @RequestMapping("/startdistribution2")
    public String startdistribution2(String ids) {
        playClassgtjService.startdistribution(ids);
        return "redirect:/findrecycle";
    }

    @RequestMapping("/stopdistribution1")
    public String stopdistribution1(String ids) {
        playClassgtjService.stopdistribution(ids);
        return "redirect:/findchecked";
    }

    @RequestMapping("/stopdistribution2")
    public String stopdistribution2(String ids) {
        playClassgtjService.stopdistribution(ids);
        return "redirect:/findrecycle";
    }

    @RequestMapping("/delPlayClassByIds1")
    public String delPlayClassByIds1(String ids) {
        playClassgtjService.delPlayClassByIds(ids);
        return "redirect:/findrecycle";
    }


    @RequestMapping("/delPlayClassByIds")
    @ResponseBody
    public void delPlayClassByIds(String ids) {
        playClassgtjService.delPlayClassByIds(ids);
    }

    @RequestMapping("/findadd")
    public String findadd() {
        return "admin/playclass/addclass";
    }


    @RequestMapping("/findPlayType")
    @ResponseBody
    public List<PlayTypegtj> findPlayType() {
        return playClassgtjService.findPlayType();
    }


    @RequestMapping("/findPlayTypeOne")
    public @ResponseBody List<PlayTypegtj> findPlayTypeOne(Long pid) {
        return playClassgtjService.findPlayTypeOne(pid);
    }


    @RequestMapping("/findOrganization")
    @ResponseBody
    public List<Organizationgtj> findOrganization() {
        return playClassgtjService.findOrganization();
    }


    @RequestMapping("/findTeacher")
    public @ResponseBody List<Teachergtj> findTeacher(Long organizationid) {
        return playClassgtjService.findTeacher(organizationid);
    }

    @RequestMapping("/addPlayClass")
    public String addPlayClass(PlayClassgtj playClassgtj) {
        playClassgtjService.addPlayClass(playClassgtj);
        return "redirect:/findnochecked";
    }

}
