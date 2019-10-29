package com.LeXiang.education.sysAdmin.common.interfaces;

import com.LeXiang.education.sysAdmin.common.model.Note;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface NoteCyqServiceApi {

    @RequestMapping("/findNote")
    public PageBean<Note> findNote(@RequestBody Note note, @RequestParam Integer page, @RequestParam Integer rows);

    @RequestMapping("/deleteNote")
    public void deleteNote(@RequestParam Long id);

    @RequestMapping("/deleteNoteIds")
    public void deleteNoteIds(@RequestParam Long[] ids);

    @RequestMapping("/updNoteShow")
    public void updNoteShow(@RequestParam Long id);

    @RequestMapping("/noteShowUpd")
    public void noteShowUpd(@RequestParam Long id);
}
