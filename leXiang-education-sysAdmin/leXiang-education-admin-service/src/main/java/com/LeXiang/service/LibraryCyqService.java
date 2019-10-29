package com.LeXiang.service;

import com.LeXiang.education.sysAdmin.common.model.Library;
import com.LeXiang.education.sysAdmin.common.model.PageBean;

public interface LibraryCyqService {
    PageBean<Library> findLibrary(Library library, Integer page, Integer rows);

    Library findLibraryById(Long id);

    void updateLibrary(Library library);

    void updLibraryStatus(Long id);

    void libraryStatusUpd(Long id);

    void insertLibrary(Library library);
}
