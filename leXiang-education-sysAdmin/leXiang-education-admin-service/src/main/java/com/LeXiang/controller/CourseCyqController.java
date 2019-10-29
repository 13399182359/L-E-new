package com.LeXiang.controller;

import com.LeXiang.education.sysAdmin.common.interfaces.CourseCyqServiceApi;
import com.LeXiang.education.sysAdmin.common.model.Course;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.service.CourseCyqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

/**
 * @类名: CourseCyqController
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-21 17:06
 **/
@RestController
public class CourseCyqController implements CourseCyqServiceApi {

    @Autowired
    private CourseCyqService courseCyqService;

    @Override
    public PageBean<Course> findCourse(Course course, Integer page, Integer rows) {
        return courseCyqService.findCourse(course,page,rows);
    }

    @Override
    public PageBean<Course> findCourseStatus(Integer page, Integer rows) {
        return courseCyqService.findStatus(page,rows);
    }

    @Override
    public PageBean<Course> findCourseAudit(Integer page, Integer rows) {
        return courseCyqService.findCourseAudit(page,rows);
    }

    @Override
    public void insertCourse(Course course) {
        courseCyqService.insert(course);
    }

    @Override
    public void deleteCourse(Long[] ids) {
        courseCyqService.delete(ids);
    }

    @Override
    public Course findCourseById(Long id) {
        return courseCyqService.findById(id);
    }

    @Override
    public void updateCourse(Course course) {
        courseCyqService.update(course);
    }

    @Override
    public void updCourseStatus(Long id) {
        courseCyqService.updStatus(id);
    }

    @Override
    public void updCourseStatusList(Long[] ids) {
        courseCyqService.updStatusList(ids);
    }

    @Override
    public void statusCourseUpd(Long id) {
        courseCyqService.statusUpd(id);
    }

    @Override
    public void updCourseAudit(Long id) {
        courseCyqService.updCourseAudit(id);
    }
}

