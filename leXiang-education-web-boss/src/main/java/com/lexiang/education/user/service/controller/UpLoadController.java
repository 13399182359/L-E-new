package com.lexiang.education.user.service.controller;

import com.LeXiang.education.sysAdmin.common.model.ResultBean;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;


/**
 * @Author 张俊荣 15835910851
 * @Description //TODO
 * @Date 2019/9/5 21:33
 * @Param
 * @return
 **/
@RestController
public class UpLoadController {

    /*@Value("${FILE_SERVER_URL}")*/
    private String FILE_SERVER_URL = "http://192.168.238.128/";//文件服务器地址
    @RequestMapping("uploadFile")
    public ResultBean uploadFile(MultipartFile file){
        //1、取文件的扩展名
        String originalFilename = file.getOriginalFilename();
        String extName = originalFilename.substring(originalFilename.lastIndexOf(".") + 1);
        try {
            //2、创建一个 FastDFS 的客户端
            FastDFSClient fastDFSClient
                    = new FastDFSClient("classpath:/static/config/fdfs_client.conf");
            //3、执行上传处理
            String path = fastDFSClient.uploadFile(file.getBytes(), extName);
            //4、拼接返回的 url 和 ip 地址，拼装成完整的 url
            String url = FILE_SERVER_URL + path;
            return new ResultBean(true,url);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResultBean( false,"上传失败");
        }
    }
}