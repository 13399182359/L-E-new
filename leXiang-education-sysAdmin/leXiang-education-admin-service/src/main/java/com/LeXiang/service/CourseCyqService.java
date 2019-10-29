package com.LeXiang.service;

import com.LeXiang.education.sysAdmin.common.model.Course;
import com.LeXiang.education.sysAdmin.common.model.PageBean;

public interface CourseCyqService {
    PageBean<Course> findCourse(Course course, Integer page, Integer rows);

    void insert(Course course);

    void delete(Long[] ids);

    Course findById(Long id);

    void update(Course course);

    void updStatus(Long id);

    void updStatusList(Long[] ids);

    void statusUpd(Long id);

    PageBean<Course> findStatus(Integer page, Integer rows);

    PageBean<Course> findCourseAudit(Integer page, Integer rows);

    void updCourseAudit(Long id);
}
