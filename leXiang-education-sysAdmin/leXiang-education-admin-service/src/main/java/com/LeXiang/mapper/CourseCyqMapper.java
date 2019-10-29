package com.LeXiang.mapper;

import com.LeXiang.education.sysAdmin.common.model.Course;

import java.util.HashMap;
import java.util.List;

public interface CourseCyqMapper {
    int findCourseCount();

    List<Course> findCourse(HashMap<String, Object> map);

    void insert(Course course);

    void delete(Long id);

    Course findById(Long id);

    void update(Course course);

    void updStatus(Long id);

    void statusUpd(Long id);

    int findStatusCount();

    List findStatus(HashMap<String, Object> hashMap);

    int findCourseAuditCount();

    List<Course> findCourseAudit(HashMap<String, Object> map);

    void updCourseAudit(Long id);
}
