package com.LeXiang.education.sysAdmin.common.interfaces;

import com.LeXiang.education.sysAdmin.common.model.Answer;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface AnswerCyqServiceApi {

    @RequestMapping("/findAnswer")
    public PageBean<Answer> findAnswer(@RequestBody Answer answer, @RequestParam Integer page, @RequestParam Integer rows);

    @RequestMapping("/deleteAnswer")
    public void deleteAnswer(@RequestParam Long id);

    @RequestMapping("/deleteAnswerIds")
    public void deleteAnswerIds(@RequestParam Long[] ids);

    @RequestMapping("/updAnswerStick")
    public void updAnswerStick(@RequestParam Long id);

    @RequestMapping("/answerStickUpd")
    public void answerStickUpd(@RequestParam Long id);
}
