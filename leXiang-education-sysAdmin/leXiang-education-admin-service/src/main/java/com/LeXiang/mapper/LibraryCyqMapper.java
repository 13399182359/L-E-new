package com.LeXiang.mapper;

import com.LeXiang.education.sysAdmin.common.model.Library;

import java.util.HashMap;
import java.util.List;

public interface LibraryCyqMapper {
    int findLibraryCount();

    List<Library> findLibrary(HashMap<String, Object> map);

    Library findLibraryById(Long id);

    void updateLibrary(Library library);

    void updLibraryStatus(Long id);

    void libraryStatusUpd(Long id);

    void insertLibrary(Library library);
}
