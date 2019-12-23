package com.softeem.easyblog.mapper;

import java.util.Map;

public interface EasyBlogMapper extends BaseMapper<Blog> {

    static Blog selectByName(Map params) {
    }

    Blog selectByName(Map map);

    List<Blog> selectBlogList();

    Integer selectBlogCount();
}
