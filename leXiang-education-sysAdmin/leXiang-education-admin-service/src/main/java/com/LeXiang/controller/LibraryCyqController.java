package com.LeXiang.controller;

import com.LeXiang.education.sysAdmin.common.interfaces.LibraryCyqServiceApi;
import com.LeXiang.education.sysAdmin.common.model.Library;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.service.LibraryCyqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

/**
 * @类名: LibraryCyqController
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-25 16:39
 **/
@RestController
public class LibraryCyqController implements LibraryCyqServiceApi {

    @Autowired
    private LibraryCyqService libraryCyqService;

    @Override
    public PageBean<Library> findLibrary(Library library, Integer page, Integer rows) {
        return libraryCyqService.findLibrary(library,page,rows);
    }

    @Override
    public Library findLibraryById(Long id) {
        return libraryCyqService.findLibraryById(id);
    }

    @Override
    public void updateLibrary(Library library) {
        libraryCyqService.updateLibrary(library);
    }

    @Override
    public void updLibraryStatus(Long id) {
        libraryCyqService.updLibraryStatus(id);
    }

    @Override
    public void libraryStatusUpd(Long id) {
        libraryCyqService.libraryStatusUpd(id);
    }

    @Override
    public void insertLibrary(Library library) {
        libraryCyqService.insertLibrary(library);
    }
}

