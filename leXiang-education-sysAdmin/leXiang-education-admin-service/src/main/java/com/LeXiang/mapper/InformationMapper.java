package com.LeXiang.mapper;

import com.LeXiang.education.sysAdmin.common.model.Information;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.List;

public interface InformationMapper {

    int count(@RequestParam("information") Information information);

    List<Information> selectInformation(HashMap<String, Object> m);

    Information toupd(Integer id);

    void addInformation(Information information);

    void delById(Integer id);

    void updInformation(Information information);
}
