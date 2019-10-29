package com.LeXiang.education.sysAdmin.common.interfaces;

import com.LeXiang.education.sysAdmin.common.model.Course;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface CourseCyqServiceApi {

    @RequestMapping("/findCourse")
    public PageBean<Course> findCourse(@RequestBody Course course, @RequestParam Integer page, @RequestParam Integer rows);

    @RequestMapping("/findCourseStatus")
    public PageBean<Course> findCourseStatus(@RequestParam Integer page, @RequestParam Integer rows);

    @RequestMapping("/findCourseAudit")
    public PageBean<Course> findCourseAudit(@RequestParam Integer page, @RequestParam Integer rows);

    @RequestMapping("/insertCourse")
    public void insertCourse(@RequestBody Course course);

    @RequestMapping("/deleteCourse")
    public void deleteCourse(@RequestBody Long[] ids);

    @RequestMapping("/findCourseById")
    public Course findCourseById(@RequestBody Long id);

    @RequestMapping("/updateCourse")
    public void updateCourse(@RequestBody Course course);

    @RequestMapping("/updCourseStatus")
    public void updCourseStatus(@RequestBody Long id);

    @RequestMapping("/updCourseStatusList")
    public void updCourseStatusList(@RequestBody Long[] ids);

    @RequestMapping("/statusCourseUpd")
    public void statusCourseUpd(@RequestBody Long id);

    @RequestMapping("/updCourseAudit")
    public void updCourseAudit(@RequestParam Long id);
}
