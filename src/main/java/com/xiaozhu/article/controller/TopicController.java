package com.xiaozhu.article.controller;

import com.xiaozhu.article.bean.Topic;
import com.xiaozhu.article.service.TopicService;
import com.xiaozhu.article.util.AppUtil;
import com.xiaozhu.article.util.ResponseData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/topic")
public class TopicController {

    @Autowired
    private TopicService topicService;

    @RequestMapping(value = "/save",method = RequestMethod.POST)
    @ResponseBody
    public ResponseData save(@RequestBody Topic topic){
        try {
            topic.setId(AppUtil.getUUID());
            topicService.save(topic);
            return ResponseData.ok().putDataValue("msg","保存成功");
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseData.forbidden().putDataValue("msg","保存失败");
        }
    }

    @RequestMapping(value = "/list",method = RequestMethod.GET)
    @ResponseBody
    public ResponseData topicList(){
        return ResponseData.ok().putDataValue("list",topicService.topicList());
    }

}
