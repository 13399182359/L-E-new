package com.LeXiang.controller;

import com.LeXiang.education.sysAdmin.common.interfaces.NoteCyqServiceApi;
import com.LeXiang.education.sysAdmin.common.model.Note;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.service.NoteCyqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

/**
 * @类名: NoteCyqController
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-24 19:09
 **/
@RestController
public class NoteCyqController implements NoteCyqServiceApi {

    @Autowired
    private NoteCyqService noteCyqService;

    @Override
    public PageBean<Note> findNote(Note note, Integer page, Integer rows) {
        return noteCyqService.findNote(note,page,rows);
    }

    @Override
    public void deleteNote(Long id) {
        noteCyqService.deleteNote(id);
    }

    @Override
    public void deleteNoteIds(Long[] ids) {
        noteCyqService.deleteNoteIds(ids);
    }

    @Override
    public void updNoteShow(Long id) {
        noteCyqService.updNoteShow(id);
    }

    @Override
    public void noteShowUpd(Long id) {
        noteCyqService.noteShowUpd(id);
    }
}

