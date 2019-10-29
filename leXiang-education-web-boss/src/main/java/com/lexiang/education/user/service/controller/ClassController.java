package com.lexiang.education.user.service.controller;

import com.LeXiang.education.admin.service.ClassService;
import com.LeXiang.education.sysAdmin.common.model.Class;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 * @类名: ClassController
 * @描述:
 * @作者: 陈耀强
 * @时间: 2019-10-16 18:46
 **/
@Controller
@RequestMapping("/classCyq")
public class ClassController {

    @Autowired
    private ClassService classService;

    /*@Value("${FILE_SERVER_URL}")*/
    private String FILE_SERVER_URL = "http://192.168.238.128/";//文件服务器地址

    @RequestMapping("/toadmin")
    public String toadmin(){
        return "admin/admin";
    }

    @RequestMapping("/findClass")
    public String findClass(Class cls, Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<Class> aClass = classService.findClass(cls, page, rows);
        model.addAttribute("aClass",aClass);
        return "admin/banjike/list";
    }

    @RequestMapping("toAdd")
    public String toAdd(){
        return "admin/banjike/add";
    }

    @RequestMapping("/insert")
    public String insert(Class cls){
        classService.insert(cls);
        return "redirect:/classCyq/findClass";
    }

    @RequestMapping("/delete")
    public String delete(Long id){
        classService.delete(id);
        return "redirect:/classCyq/findClass";
    }

    @RequestMapping("/queryById")
    public String queryById(Long id, Model model){
        Class cls = classService.queryUserById(id);
        model.addAttribute("cls",cls);
        return "admin/banjike/update";
    }

    @RequestMapping("/update")
    public String update(Class id){
        classService.update(id);
        return "redirect:/classCyq/findClass";
    }

    @RequestMapping("/delById")
    public String delById(Long[] ids){
        classService.delById(ids);
        return "redirect:/classCyq/findClass";
    }

    @RequestMapping("/findStatus")
    public String findStatus(Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<Class> status = classService.findStatus(page, rows);
        model.addAttribute("status",status);
        return "admin/banjike/recycle";
    }

    @RequestMapping("/updateStatus")
    public String updateStatus(Long id){
        classService.updateStatus(id);
        return "redirect:/classCyq/findStatus";
    }

    @RequestMapping("/updStatus")
    public String updStatus(Long id){
        classService.updStatus(id);
        return "redirect:/classCyq/findClass";
    }

    @RequestMapping("/ismarketing")
    public String ismarketing(Long id){
        classService.ismarketing(id);
        return "redirect:/classCyq/findClass";
    }

    @RequestMapping("/ismarketings")
    public String ismarketings(Long id){
        classService.ismarketings(id);
        return "redirect:/classCyq/findClass";
    }

    @RequestMapping("/updIsmarketing")
    public String updIsmarketing(Long[] ids){
        classService.updIsmarketing(ids);
        return "redirect:/classCyq/findClass";
    }

    @RequestMapping("/updIsmarketings")
    public String updIsmarketings(Long[] ids){
        classService.updIsmarketings(ids);
        return "redirect:/classCyq/findClass";
    }

    @RequestMapping("/uploadFile")
    public String uploadFile(MultipartFile file){
        //1、取文件的扩展名*
        String originalFilename = file.getOriginalFilename();
        String extName = originalFilename.substring(originalFilename.lastIndexOf(".") + 1);
        try {
            //2、创建一个 FastDFS 的客户端
            FastDFSClient fastDFSClient
                    = new FastDFSClient("classpath:config/fdfs_client.conf");
            //3、执行上传处理
            String path = fastDFSClient.uploadFile(file.getBytes(), extName);
            //4、拼接返回的 url 和 ip 地址，拼装成完整的 url
            String url = FILE_SERVER_URL + path;
            return url;
        } catch (Exception e) {
            e.printStackTrace();
            return "1";
        }
    }
}

