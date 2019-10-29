package com.LeXiang.service;

import com.LeXiang.education.sysAdmin.common.model.Note;
import com.LeXiang.education.sysAdmin.common.model.PageBean;

public interface NoteCyqService {
    PageBean<Note> findNote(Note note, Integer page, Integer rows);

    void deleteNote(Long id);

    void deleteNoteIds(Long[] ids);

    void noteShowUpd(Long id);

    void updNoteShow(Long id);
}
