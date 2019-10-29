package com.LeXiang.service.impl;

import com.LeXiang.education.sysAdmin.common.model.Library;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import com.LeXiang.mapper.LibraryCyqMapper;
import com.LeXiang.service.LibraryCyqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * @类名: LibraryCyqServiceImpl
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-25 16:39
 **/
@Service
public class LibraryCyqServiceImpl implements LibraryCyqService {

    @Autowired
    private LibraryCyqMapper libraryCyqMapper;

    @Override
    public PageBean<Library> findLibrary(Library library, Integer page, Integer rows) {
        int total = libraryCyqMapper.findLibraryCount();
        HashMap<String, Object> map = new HashMap<>();
        int pageNum = (page - 1) * rows;
        map.put("library",library);
        map.put("page",pageNum);
        map.put("rows",rows);
        List<Library> list = libraryCyqMapper.findLibrary(map);
        PageBean<Library> bean = new PageBean<>(page, rows, total);
        bean.setList(list);
        return bean;
    }

    @Override
    public Library findLibraryById(Long id) {
        return libraryCyqMapper.findLibraryById(id);
    }

    @Override
    public void updateLibrary(Library library) {
        libraryCyqMapper.updateLibrary(library);
    }

    @Override
    public void updLibraryStatus(Long id) {
        libraryCyqMapper.updLibraryStatus(id);
    }

    @Override
    public void libraryStatusUpd(Long id) {
        libraryCyqMapper.libraryStatusUpd(id);
    }

    @Override
    public void insertLibrary(Library library) {
        libraryCyqMapper.insertLibrary(library);
    }
}

