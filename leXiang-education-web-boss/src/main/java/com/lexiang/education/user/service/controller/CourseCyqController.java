package com.lexiang.education.user.service.controller;

import com.LeXiang.education.admin.service.CourseCyqService;
import com.LeXiang.education.sysAdmin.common.model.Course;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.education.sysAdmin.common.model.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 * @类名: CourseCyqController
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-21 19:12
 **/
@Controller
@RequestMapping("/courseCyq")
public class CourseCyqController {

    @Autowired
    private CourseCyqService courseCyqService;

    /*@Value("${FILE_SERVER_URL}")*/
    private String FILE_SERVER_URL = "http://192.168.238.128/";//文件服务器地址


    @RequestMapping("/findCourse")
    public String findCourse(Course course, Model model, @RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10") Integer rows){
        PageBean<Course> course1 = courseCyqService.findCourse(course, page, rows);
        model.addAttribute("corse",course1);
        return "admin/xianxiake/list";
    }

    @RequestMapping("/findCourseStatus")
    public String findCourseStatus(Model model, @RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10") Integer rows){
        PageBean<Course> status = courseCyqService.findCourseStatus(page, rows);
        model.addAttribute("status",status);
        return "admin/xianxiake/recycle";
    }

    @RequestMapping("/findCourseAudit")
    public String findCourseAudit(Model model, @RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10") Integer rows){
        PageBean<Course> courseAudit = courseCyqService.findCourseAudit(page, rows);
        model.addAttribute("courseAudit",courseAudit);
        return "admin/xianxiake/audit";
    }

    @RequestMapping("/toAdd")
    public String toAdd(){
        return "admin/xianxiake/add";
    }

    @RequestMapping("/insertCourse")
    public String insertCourse(Course course){
        courseCyqService.insertCourse(course);
        return "redirect:/courseCyq/findCourse";
    }

    @RequestMapping("/deleteCourse")
    public String deleteCourse(Long[] ids){
        courseCyqService.deleteCourse(ids);
        return "redirect:/courseCyq/findCourseStatus";
    }

    @RequestMapping("/findCourseById")
    public String findCourseById(Long id, Model model){
        Course byId = courseCyqService.findCourseById(id);
        model.addAttribute("course",byId);
        model.addAttribute("course",byId);
        return "admin/xianxiake/update";
    }

    @RequestMapping("/updateCourse")
    public String updateCourse(Course course){
        courseCyqService.updateCourse(course);
        return "redirect:/courseCyq/findCourse";
    }

    @RequestMapping("/updCourseStatus")
    public String updCourseStatus(Long id){
        courseCyqService.updCourseStatus(id);
        return "redirect:/courseCyq/findCourse";
    }

    @RequestMapping("/updCourseStatusList")
    public String updCourseStatusList(Long[] ids){
        courseCyqService.updCourseStatusList(ids);
        return "redirect:/courseCyq/findCourse";
    }

    @RequestMapping("/statusCourseUpd")
    public String statusCourseUpd(Long id){
        courseCyqService.statusCourseUpd(id);
        return "redirect:/courseCyq/findCourseStatus";
    }

    @RequestMapping("/updCourseAudit")
    public String updCourseAudit(Long id){
        courseCyqService.updCourseAudit(id);
        return "redirect:/courseCyq/findCourseAudit";
    }

    @RequestMapping("uploadFile")
    public Result uploadFile(MultipartFile file){
        //1、取文件的扩展名*
        String originalFilename = file.getOriginalFilename();
        String extName = originalFilename.substring(originalFilename.lastIndexOf(".") + 1);
        try {
            //2、创建一个 FastDFS 的客户端
            FastDFSClient fastDFSClient
                    = new FastDFSClient("classpath:config/fdfs_client.conf");
            //3、执行上传处理
            String path = fastDFSClient.uploadFile(file.getBytes(), extName);
            //4、拼接返回的 url 和 ip 地址，拼装成完整的 url
            String url = FILE_SERVER_URL + path;
            return new Result(true,"上传成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new Result( false,"上传失败");
        }
    }
}

