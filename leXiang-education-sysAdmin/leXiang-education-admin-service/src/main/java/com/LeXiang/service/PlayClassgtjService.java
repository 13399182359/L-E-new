package com.jk.service;

import com.LeXiang.education.sysAdmin.common.model.*;

import java.util.List;

public interface PlayClassgtjService {
    public PageResult findplay(PlayClassgtj playClassgtj, Integer pageNum, Integer rows);

    public  List<PlayClassgtj> findall();

    public PageResult findchecked(PlayClassgtj playClassgtj, Integer pageNum, Integer rows);

    public PageResult findnochecked(PlayClassgtj playClassgtj, Integer pageNum, Integer rows);

    public PageResult findrecycle(PlayClassgtj playClassgtj, Integer pageNum, Integer rows);

    void stopdistribution(String ids);

    void startdistribution(String ids);

    void stopclass(String ids);

    void putaway(Long id);

    void soldout(Long id);

    void startclass(Long id);

    List<PlayClassgtj> updatePlayClassById(Long id);

    void updatePlayClass(PlayClassgtj playClassgtj);

    void addPlayClass(PlayClassgtj playClassgtj);

    void delPlayClassByIds(String ids);

    void shenheok(Long id);

    List<PlayTypegtj> findPlayType();

    List<PlayTypegtj> findPlayTypeOne(Long pid);

    List<Organizationgtj> findOrganization();

    List<Teachergtj> findTeacher(Long organizationid);
}
