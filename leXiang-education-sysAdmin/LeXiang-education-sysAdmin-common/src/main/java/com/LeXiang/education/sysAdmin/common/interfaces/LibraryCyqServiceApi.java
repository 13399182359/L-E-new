package com.LeXiang.education.sysAdmin.common.interfaces;

import com.LeXiang.education.sysAdmin.common.model.Library;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface LibraryCyqServiceApi {

    @RequestMapping("/findLibrary")
    public PageBean<Library> findLibrary(@RequestBody Library library, @RequestParam Integer page, @RequestParam Integer rows);

    @RequestMapping("findLibraryById")
    public Library findLibraryById(@RequestParam Long id);

    @RequestMapping("/updateLibrary")
    public void updateLibrary(@RequestBody Library library);

    @RequestMapping("/updLibraryStatus")
    public void updLibraryStatus(@RequestParam Long id);

    @RequestMapping("/libraryStatusUpd")
    public void libraryStatusUpd(@RequestParam Long id);

    @RequestMapping("/insertLibrary")
    public void insertLibrary(@RequestBody Library library);
}
