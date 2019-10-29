package com.jk.mapper;

import com.LeXiang.education.sysAdmin.common.model.Organizationgtj;
import com.LeXiang.education.sysAdmin.common.model.PlayClassgtj;
import com.LeXiang.education.sysAdmin.common.model.PlayTypegtj;
import com.LeXiang.education.sysAdmin.common.model.Teachergtj;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface PlayClassgtjMapper {

    int getCount(@Param("playClassgtj") PlayClassgtj playClassgtj);

    int getCount1(@Param("playClassgtj") PlayClassgtj playClassgtj);

    int getCount2(@Param("playClassgtj") PlayClassgtj playClassgtj);
    /*List<PlayClassgtj> findplay(HashMap<String, Object> map);
*/
    List<PlayClassgtj> findall();

    List<PlayClassgtj> findchecked();

    List<PlayClassgtj> findnochecked();

    List<PlayClassgtj> findrecycle();

    void stopdistribution(Map m);

    void startdistribution(Map m);

    void stopclass(Map m);

    void putaway(Long id);

    void soldout(Long id);

    List<PlayClassgtj> updatePlayClassById(Long id);

    void updatePlayClass(PlayClassgtj playClassgtj);

    void addPlayClass(PlayClassgtj playClassgtj);

    void delPlayClassByIds(Map m);

    void startclass(Long id);

    List<PlayClassgtj> findplay(@Param("playClassgtj") PlayClassgtj playClassgtj,@Param("start")Integer start,@Param("rows")Integer rows);

    List<PlayClassgtj> findchecked(@Param("playClassgtj") PlayClassgtj playClassgtj,@Param("start")Integer start,@Param("rows")Integer rows);

    List<PlayClassgtj> findnochecked(@Param("playClassgtj") PlayClassgtj playClassgtj,@Param("start")Integer start,@Param("rows")Integer rows);

    List<PlayClassgtj> findrecycle(@Param("playClassgtj") PlayClassgtj playClassgtj,@Param("start")Integer start,@Param("rows")Integer rows);

    void shenheok(Long id);

    List<PlayTypegtj> findPlayType();

    List<PlayTypegtj> findPlayTypeOne(Long pid);

    List<Organizationgtj> findOrganization();

    List<Teachergtj> findTeacher(Long organizationid);
}
