package com.LeXiang.education.sysAdmin.common.interfaces;



import com.LeXiang.education.sysAdmin.common.model.*;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import sun.security.provider.DSAPublicKeyImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface UsergtjServiceApi {

    @RequestMapping
    public Map<String,Object> adminLogin();

    @RequestMapping("/findplay")
    public PageResult findplay(@RequestBody PlayClassgtj playClassgtj, @RequestParam  Integer pageNum, @RequestParam  Integer rows);

    @RequestMapping("/findall")
    public List<PlayClassgtj> findall();
    /*  *
     *@方法名   findchecked
     *@描述   查询已审核的
     *@返回值类型  java.util.List<com.LeXiang.education.sysAdmin.common.model.PlayClassgtj>
     *@作者 郭廷俊
     *@时间 2019/10/17 14:09
     */
   @RequestMapping("/findchecked")
   public PageResult findchecked(@RequestBody PlayClassgtj playClassgtj, @RequestParam  Integer pageNum, @RequestParam  Integer rows);
   /*  *
    *@方法名   findnochecked
    *@描述    查询待审核的
    *@返回值类型  java.util.List<com.LeXiang.education.sysAdmin.common.model.PlayClassgtj>
    *@作者 郭廷俊
    *@时间 2019/10/17 14:09
    */
   @RequestMapping("/findnochecked")
   public PageResult findnochecked(@RequestBody PlayClassgtj playClassgtj, @RequestParam  Integer pageNum, @RequestParam  Integer rows);
   /*  *
    *@方法名   findrecycle
    *@描述    查询回收站{被禁用}的
    *@返回值类型  java.util.List<com.LeXiang.education.sysAdmin.common.model.PlayClassgtj>
    *@作者 郭廷俊
    *@时间 2019/10/17 14:09
    */
    @RequestMapping("/findrecycle")
    public PageResult findrecycle(@RequestBody PlayClassgtj playClassgtj, @RequestParam  Integer pageNum, @RequestParam  Integer rows);
    /* *
        *@方法名   stopdistribution
        *@描述   禁止分销
        *@返回值类型  java.util.List<com.LeXiang.education.sysAdmin.common.model.PlayClassgtj>
        *@作者 郭廷俊
        *@时间 2019/10/17 14:08
        */
    @RequestMapping("/stopdistribution")
    @ResponseBody
    public void stopdistribution(@RequestParam  String ids);
    /*  *
     *@方法名   startdistribution
     *@描述   允许分销
     *@返回值类型  java.lang.Boolean
     *@作者 郭廷俊
     *@时间 2019/10/17 14:15
     */
    @RequestMapping("/startdistribution")
    @ResponseBody
    public void startdistribution(@RequestParam  String ids);

    /*  *
     *@方法名   stopclass
     *@描述   禁用
     *@返回值类型  java.lang.Boolean
     *@作者 郭廷俊
     *@时间 2019/10/17 14:15
     */
    @RequestMapping("/stopclass")
    @ResponseBody
    public void stopclass(@RequestParam  String ids);
     /* *
     *@方法名   startclass
     *@描述   启用
     *@返回值类型  void
     *@作者 郭廷俊
     *@时间 2019/10/17 16:56
     */
    @RequestMapping("/startclass")
    public void startclass(@RequestParam  Long id);
    /* *
     *@方法名   putaway
     *@描述 上架
     *@返回值类型  void
     *@作者 郭廷俊
     *@时间 2019/10/17 15:18
     */
    @RequestMapping("/putaway")
    public void putaway(@RequestParam  Long id);
    /* *
     *@方法名   soldout
     *@描述   下架
     *@返回值类型  void
     *@作者 郭廷俊
     *@时间 2019/10/17 15:20
     */
    @RequestMapping("/soldout")
    public void soldout(@RequestParam  Long id);
    /* *
     *@方法名   updatePlayClassById
     *@描述   点播课回显
     *@返回值类型  java.util.List<com.LeXiang.education.sysAdmin.common.model.PlayClassgtj>
     *@作者 郭廷俊
     *@时间 2019/10/17 16:59
     */
    @RequestMapping("/updatePlayClassById")
    public List<PlayClassgtj> updatePlayClassById(@RequestParam  Long id);
    /* *
     *@方法名   updatePlayClass
     *@描述   点播课编辑修改
     *@返回值类型  void
     *@作者 郭廷俊
     *@时间 2019/10/17 16:59
     */
    @RequestMapping("/updatePlayClass")
    public void updatePlayClass(@RequestBody PlayClassgtj playClassgtj);

    /* *
     *@方法名   addPlayClass
     *@描述   增加点播课信息
     *@返回值类型  void
     *@作者 郭廷俊
     *@时间 2019/10/17 17:01
     */
    @RequestMapping("/addPlayClass")
    public void addPlayClass(@RequestBody PlayClassgtj playClassgtj);

    /* *
     *@方法名   delPlayClassByIds
     *@描述   回收站彻底删除
     *@返回值类型  void
     *@作者 郭廷俊
     *@时间 2019/10/17 17:02
     */
    @RequestMapping("/delPlayClassByIds")
    @ResponseBody
    public void delPlayClassByIds(@RequestParam String ids);

    @RequestMapping("/shenheok")
    public void shenheok(@RequestParam Long id);

    @RequestMapping("/findPlayType")
    @ResponseBody
    public List<PlayTypegtj> findPlayType();

    @RequestMapping("/findPlayTypeOne")
    public List<PlayTypegtj> findPlayTypeOne(@RequestParam Long pid);

    @RequestMapping("/findOrganization")
    @ResponseBody
    public List<Organizationgtj> findOrganization();

    @RequestMapping("/findTeacher")
    public List<Teachergtj> findTeacher(@RequestParam Long organizationid);



   /* @RequestMapping("/userList")
    public PageBean<Admin> userList(@RequestBody Admin admin, @RequestParam Integer page, @RequestParam Integer rows);

    @RequestMapping("/insert")
    public Boolean insert(@RequestBody Admin user);
    @RequestMapping("/delete")
    public Boolean delete(@RequestBody Long id);
    @RequestMapping("/queryUserById")
    public Admin queryUserById(@RequestBody Long id);
    @RequestMapping("/update")
    public Boolean update(@RequestBody Admin user);*/
}
