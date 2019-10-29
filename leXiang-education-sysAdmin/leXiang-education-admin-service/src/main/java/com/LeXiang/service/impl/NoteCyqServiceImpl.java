package com.LeXiang.service.impl;

import com.LeXiang.education.sysAdmin.common.model.Note;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.mapper.NoteCyqMapper;
import com.LeXiang.service.NoteCyqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * @类名: NoteCyqServiceImpl
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-24 19:10
 **/
@Service
public class NoteCyqServiceImpl implements NoteCyqService {

    @Autowired
    private NoteCyqMapper noteCyqMapper;

    @Override
    public PageBean<Note> findNote(Note note, Integer page, Integer rows) {
        int total = noteCyqMapper.findNoteCount();
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page - 1) * rows;
        map.put("note",note);
        map.put("page",pageNumber);
        map.put("rows",rows);
        List<Note> list = noteCyqMapper.findNote(map);
        PageBean<Note> bean = new PageBean<>(page, rows, total);
        bean.setList(list);
        return bean;
    }

    @Override
    public void deleteNote(Long id) {
        noteCyqMapper.deleteNote(id);
    }

    @Override
    public void deleteNoteIds(Long[] ids) {
        for (Long id:ids) {
            noteCyqMapper.deleteNote(id);
        }
    }

    @Override
    public void noteShowUpd(Long id) {
        noteCyqMapper.noteShowUpd(id);
    }

    @Override
    public void updNoteShow(Long id) {
        noteCyqMapper.updNoteShow(id);
    }
}

