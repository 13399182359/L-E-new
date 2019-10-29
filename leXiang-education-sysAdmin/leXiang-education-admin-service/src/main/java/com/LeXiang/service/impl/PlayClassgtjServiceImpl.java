package com.jk.service.impl;

import com.LeXiang.education.sysAdmin.common.model.*;
import com.jk.mapper.PlayClassgtjMapper;
import com.jk.service.PlayClassgtjService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @类名: PlayClassServiceImpl
 * @描述:
 * @作者: 郭廷俊
 * @时间: 2019-10-16 20:30
 **/
@Service
public class PlayClassgtjServiceImpl implements PlayClassgtjService {

    @Autowired
    private PlayClassgtjMapper playClassMapper;

    @Override
    public PageResult findplay(PlayClassgtj playClassgtj, Integer pageNum, Integer rows) {
  /*      int totalSize = playClassMapper.getCount();
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("playClassgtj",playClassgtj);
        PageBean<PlayClassgtj> playClassgtjPageBean = new PageBean<PlayClassgtj>(page, rows, totalSize);
        List<PlayClassgtj> userList = playClassMapper.findplay(map);
        playClassgtjPageBean.setList(userList);
        return playClassgtjPageBean;*/

        PageResult page = new PageResult();
        page.setCurrent(pageNum);
        page.setNumPerPage(rows);

        Integer totalCount = playClassMapper.getCount(playClassgtj);
        page.setTotalCount(totalCount);
        Integer start = (pageNum - 1)*rows;
        List<PlayClassgtj> list=playClassMapper.findplay(playClassgtj,start,rows);

        //设置当前页面数据
        page.setPageList(list);
        return page;
    }

    @Override
    public List<PlayClassgtj> findall() {
        return playClassMapper.findall();
    }

    @Override
    public PageResult findchecked(PlayClassgtj playClassgtj, Integer pageNum, Integer rows) {
        PageResult page = new PageResult();
        page.setCurrent(pageNum);
        page.setNumPerPage(rows);

        Integer totalCount = playClassMapper.getCount(playClassgtj);
        page.setTotalCount(totalCount);
        Integer start = (pageNum - 1)*rows;
        List<PlayClassgtj> list=playClassMapper.findchecked(playClassgtj,start,rows);

        //设置当前页面数据
        page.setPageList(list);
        return page;
    }

    @Override
    public PageResult findnochecked(PlayClassgtj playClassgtj, Integer pageNum, Integer rows) {
        PageResult page = new PageResult();
        page.setCurrent(pageNum);
        page.setNumPerPage(rows);

        Integer totalCount = playClassMapper.getCount1(playClassgtj);
        page.setTotalCount(totalCount);
        Integer start = (pageNum - 1)*rows;
        List<PlayClassgtj> list=playClassMapper.findnochecked(playClassgtj,start,rows);

        //设置当前页面数据
        page.setPageList(list);
        return page;
    }

    @Override
    public PageResult findrecycle(PlayClassgtj playClassgtj, Integer pageNum, Integer rows) {
        PageResult page = new PageResult();
        page.setCurrent(pageNum);
        page.setNumPerPage(rows);

        Integer totalCount = playClassMapper.getCount2(playClassgtj);
        page.setTotalCount(totalCount);
        Integer start = (pageNum - 1)*rows;
        List<PlayClassgtj> list=playClassMapper.findrecycle(playClassgtj,start,rows);

        //设置当前页面数据
        page.setPageList(list);
        return page;
    }

    @Override
    public void stopdistribution(String ids) {
        String[] idsAll = ids.split(",");
        Map m = new HashMap();
        m.put("idsAll", idsAll);
        playClassMapper.stopdistribution(m);
    }

    @Override
    public void startdistribution(String ids) {
        String[] idsAll = ids.split(",");
        Map m = new HashMap();
        m.put("idsAll", idsAll);
        playClassMapper.startdistribution(m);
    }

    @Override
    public void stopclass(String ids) {
        String[] idsAll = ids.split(",");
        Map m = new HashMap();
        m.put("idsAll", idsAll);
        playClassMapper.stopclass(m);
    }

    @Override
    public void putaway(Long id) {
        playClassMapper.putaway(id);
    }

    @Override
    public void soldout(Long id) {
        playClassMapper.soldout(id);
    }

    @Override
    public void startclass(Long id) {
        playClassMapper.startclass(id);
    }

    @Override
    public List<PlayClassgtj> updatePlayClassById(Long id) {
        return playClassMapper.updatePlayClassById(id);
    }

    @Override
    public void updatePlayClass(PlayClassgtj playClassgtj) {
        playClassMapper.updatePlayClass(playClassgtj);
    }

    @Override
    public void addPlayClass(PlayClassgtj playClassgtj) {

        playClassMapper.addPlayClass(playClassgtj);
    }

    @Override
    public void delPlayClassByIds(String ids) {
        String[] idsAll = ids.split(",");
        Map m = new HashMap();
        m.put("idsAll", idsAll);
        playClassMapper.delPlayClassByIds(m);
    }

    @Override
    public void shenheok(Long id) {
        playClassMapper.shenheok(id);
    }

    @Override
    public List<PlayTypegtj> findPlayType() {
        return playClassMapper.findPlayType();
    }

    @Override
    public List<PlayTypegtj> findPlayTypeOne(Long pid) {
        return playClassMapper.findPlayTypeOne(pid);
    }

    @Override
    public List<Organizationgtj> findOrganization() {
        return playClassMapper.findOrganization();
    }

    @Override
    public List<Teachergtj> findTeacher(Long organizationid) {
        return playClassMapper.findTeacher(organizationid);
    }
}
