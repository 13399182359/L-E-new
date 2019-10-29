package com.jk.controller;

import com.LeXiang.education.sysAdmin.common.interfaces.UsergtjServiceApi;
import com.LeXiang.education.sysAdmin.common.model.*;
import com.jk.service.PlayClassgtjService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * @类名: PlayClassController
 * @描述:
 * @作者: 郭廷俊
 * @时间: 2019-10-16 20:21
 **/
@RestController
public class PlayClassgtjController implements UsergtjServiceApi {

    @Autowired
    private PlayClassgtjService playClassService;
    @Override
    public Map<String, Object> adminLogin() {
        return null;
    }

    @Override
    public PageResult findplay(PlayClassgtj playClassgtj, Integer pageNum, Integer rows) {

        return playClassService.findplay(playClassgtj,pageNum,rows);
    }

    @Override
    public List<PlayClassgtj> findall() {
        return playClassService.findall();
    }

    @Override
    public PageResult findchecked(PlayClassgtj playClassgtj, Integer pageNum, Integer rows) {
        return playClassService.findchecked(playClassgtj,pageNum,rows);
    }

    @Override
    public PageResult findnochecked(PlayClassgtj playClassgtj, Integer pageNum, Integer rows) {
        return playClassService.findnochecked(playClassgtj,pageNum,rows);
    }

    @Override
    public PageResult findrecycle(PlayClassgtj playClassgtj, Integer pageNum, Integer rows) {
        return playClassService.findrecycle(playClassgtj,pageNum,rows);
    }

    @Override
    public void stopdistribution(String ids) {
        playClassService.stopdistribution(ids);
    }

    @Override
    public void startdistribution(String ids) {
        playClassService.startdistribution(ids);
    }

    @Override
    public void stopclass(String ids) {
        playClassService.stopclass(ids);
    }

    @Override
    public void startclass(Long id) {
        playClassService.startclass(id);
    }

    @Override
    public void putaway(Long id) {
        playClassService.putaway(id);
    }

    @Override
    public void soldout(Long id) {
        playClassService.soldout(id);
    }

    @Override
    public List<PlayClassgtj> updatePlayClassById(Long id) {
        return playClassService.updatePlayClassById(id);
    }

    @Override
    public void updatePlayClass(PlayClassgtj playClassgtj) {
        playClassService.updatePlayClass(playClassgtj);
    }

    @Override
    public void addPlayClass(PlayClassgtj playClassgtj) {

        playClassService.addPlayClass(playClassgtj);
    }

    @Override
    public void delPlayClassByIds(String ids) {
        playClassService.delPlayClassByIds(ids);
    }

    @Override
    public void shenheok(Long id) {
        playClassService.shenheok(id);
    }

    @Override
    public List<PlayTypegtj> findPlayType() {
        return playClassService.findPlayType();
    }

    @Override
    public List<PlayTypegtj> findPlayTypeOne(Long pid) {
        return playClassService.findPlayTypeOne(pid);
    }

    @Override
    public List<Organizationgtj> findOrganization() {
        return playClassService.findOrganization();
    }

    @Override
    public List<Teachergtj> findTeacher(Long organizationid) {
        return playClassService.findTeacher(organizationid);
    }
}
