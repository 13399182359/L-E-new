package com.lexiang.education.user.service.controller;

import com.LeXiang.education.admin.service.LibraryCyqService;
import com.LeXiang.education.sysAdmin.common.model.Library;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @类名: LbraryCyqController
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-25 17:06
 **/
@Controller
@RequestMapping("/libraryCyq")
public class LibraryCyqController {

    @Autowired
    private LibraryCyqService libraryCyqService;

    @RequestMapping("/findLibrary")
    public String findLibrary(Library library, Model model, @RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10") Integer rows){
        PageBean<Library> library1 = libraryCyqService.findLibrary(library, page, rows);
        model.addAttribute("library1",library1);
        return "admin/content/wenku/list";
    }

    @RequestMapping("/findLibraryById")
    public String findLibraryById(Long id, Model model){
        Library byId = libraryCyqService.findLibraryById(id);
        model.addAttribute("byId",byId);
        return "admin/content/wenku/update";
    }

    @RequestMapping("/updateLibrary")
    public String updateLibrary(Library library){
        libraryCyqService.updateLibrary(library);
        return "redirect:/libraryCyq/findLibrary";
    }

    @RequestMapping("/updLibraryStatus")
    public String updLibraryStatus(Long id){
        libraryCyqService.updLibraryStatus(id);
        return "redirect:/libraryCyq/findLibrary";
    }

    @RequestMapping("/libraryStatusUpd")
    public String libraryStatusUpd(Long id){
        libraryCyqService.libraryStatusUpd(id);
        return "redirect:/libraryCyq/findLibrary";
    }

    @RequestMapping("/toAdd")
    public String toAdd(){
        return "admin/content/wenku/add";
    }

    @RequestMapping("/insertLibrary")
    public String insertLibrary(Library library){
        libraryCyqService.insertLibrary(library);
        return "redirect:/libraryCyq/findLibrary";
    }
}

