package com.LeXiang.service.impl;

import com.LeXiang.education.sysAdmin.common.model.Course;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.mapper.CourseCyqMapper;
import com.LeXiang.service.CourseCyqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * @类名: CourseCyqServiceImpl
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-21 17:12
 **/
@Service
public class CourseCyqServiceImpl implements CourseCyqService {

    @Autowired
    private CourseCyqMapper courseCyqMapper;

    @Override
    public PageBean<Course> findCourse(Course course, Integer page, Integer rows) {
        int total = courseCyqMapper.findCourseCount();
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page - 1) * rows;
        map.put("course",course);
        map.put("page",pageNumber);
        map.put("rows",rows);
        PageBean<Course> pageBean = new PageBean<>(page, rows, total);
        List<Course> list = courseCyqMapper.findCourse(map);
        pageBean.setList(list);
        return pageBean;
    }

    @Override
    public void insert(Course course) {
        if (course.getCreateTime() == null){
            course.setCreateTime(new Date());
        }
        courseCyqMapper.insert(course);
    }

    @Override
    public void delete(Long[] ids) {
        for (Long id:ids) {
            courseCyqMapper.delete(id);
        }
    }

    @Override
    public Course findById(Long id) {
        return courseCyqMapper.findById(id);
    }

    @Override
    public void update(Course course) {
        if (course.getUpdateTime() == null){
            course.setUpdateTime(new Date());
        }
        courseCyqMapper.update(course);
    }

    @Override
    public void updStatus(Long id) {
        courseCyqMapper.updStatus(id);
    }

    @Override
    public void updStatusList(Long[] ids) {
        for (Long id:ids) {
            courseCyqMapper.updStatus(id);
        }
    }

    @Override
    public void statusUpd(Long id) {
        courseCyqMapper.statusUpd(id);
    }

    @Override
    public PageBean<Course> findStatus(Integer page, Integer rows) {
        int total = courseCyqMapper.findStatusCount();
        HashMap<String, Object> hashMap = new HashMap<>();
        int pageNumber = (page - 1) * rows;
        hashMap.put("page",pageNumber);
        hashMap.put("rows",rows);
        PageBean<Course> pageBean = new PageBean<>(page, rows, total);
        List list = courseCyqMapper.findStatus(hashMap);
        pageBean.setList(list);
        return pageBean;
    }

    @Override
    public PageBean<Course> findCourseAudit(Integer page, Integer rows) {
        int total = courseCyqMapper.findCourseAuditCount();
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page - 1) * rows;
        map.put("page",pageNumber);
        map.put("rows",rows);
        List<Course> list = courseCyqMapper.findCourseAudit(map);
        PageBean<Course> bean = new PageBean<>(page, rows, total);
        bean.setList(list);
        return bean;
    }

    @Override
    public void updCourseAudit(Long id) {
        courseCyqMapper.updCourseAudit(id);
    }
}

