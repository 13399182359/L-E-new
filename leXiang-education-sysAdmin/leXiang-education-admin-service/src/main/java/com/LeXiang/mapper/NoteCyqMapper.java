package com.LeXiang.mapper;

import com.LeXiang.education.sysAdmin.common.model.Note;

import java.util.HashMap;
import java.util.List;

public interface NoteCyqMapper {
    int findNoteCount();

    List<Note> findNote(HashMap<String, Object> map);

    void deleteNote(Long id);

    void noteShowUpd(Long id);

    void updNoteShow(Long id);
}
