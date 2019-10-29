package com.LeXiang.education.sysAdmin.common.interfaces;

import com.LeXiang.education.sysAdmin.common.model.FeedbackXq;
import com.LeXiang.education.sysAdmin.common.model.MessageXq;
import com.LeXiang.education.sysAdmin.common.model.PageBean;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface FeedbackXqServiceApi {

    @RequestMapping("/findXqFeedback")
    PageBean<FeedbackXq> findXqFeedback(@RequestParam Integer page, @RequestParam Integer rows, @RequestBody FeedbackXq feedbackXq);

    @RequestMapping("/delFeedbackXq")
    void delFeedbackXq(@RequestParam Integer id);

    @RequestMapping("/delFeedbackXqs")
    void delFeedbackXqs(@RequestParam Integer[] ids);
}
