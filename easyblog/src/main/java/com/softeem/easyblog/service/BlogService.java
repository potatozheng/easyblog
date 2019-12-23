package com.softeem.easyblog.service;

import com.softeem.easyblog.mapper.EasyBlogMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import java.util.HashMap;
import java.util.Map;

@Service
public class BlogService {

    @Autowired
    private EasyBlogMapper BlogMapper;

    public ModelMap parse(String blogName) {
        Map params = new HashMap();
        params.put("name",blogName);

        Blog blog = EasyBlogMapper.selectByName(params);
        if (blog!=null) {
            ModelMap accountInfo = new ModelMap();
            accountInfo.put("name", blog.getName());
            accountInfo.put("id", blog.getId());
            accountInfo.put("content", blog.getContent());
            accountInfo.put("description", "accountDetail.getIntroduction()");
            accountInfo.put("mediaType", "accountDetail.getTag()");
            accountInfo.put("mediaOwner", "accountDetail.getOwner()");
            return accountInfo;
        }
        return new ModelMap();
    }
}