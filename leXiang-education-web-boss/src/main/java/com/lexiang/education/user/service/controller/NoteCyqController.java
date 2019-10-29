package com.lexiang.education.user.service.controller;

import com.LeXiang.education.admin.service.NoteCyqService;
import com.LeXiang.education.sysAdmin.common.model.Note;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @类名: NoteCyqController
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-24 19:46
 **/
@Controller
@RequestMapping("/noteCyq")
public class NoteCyqController {

    @Autowired
    private NoteCyqService noteCyqService;

    @RequestMapping("/findNote")
    private String findNote(Note note, Model model, @RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10") Integer rows){
        PageBean<Note> note1 = noteCyqService.findNote(note, page, rows);
        model.addAttribute("note1",note1);
        return "admin/content/biji/list";
    }

    @RequestMapping("/deleteNote")
    public String deleteNote(Long id){
        noteCyqService.deleteNote(id);
        return "redirect:/noteCyq/findNote";
    }

    @RequestMapping("/deleteNoteIds")
    public String deleteNoteIds(Long[] ids){
        noteCyqService.deleteNoteIds(ids);
        return "redirect:/noteCyq/findNote";
    }

    @RequestMapping("/updNoteShow")
    public String updNoteShow(Long id){
        noteCyqService.updNoteShow(id);
        return "redirect:/noteCyq/findNote";
    }

    @RequestMapping("/noteShowUpd")
    public String noteShowUpd(Long id){
        noteCyqService.noteShowUpd(id);
        return "redirect:/noteCyq/findNote";
    }
}

