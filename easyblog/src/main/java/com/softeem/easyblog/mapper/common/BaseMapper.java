/**

*/
package com.softeem.easyblog.mapper.common;

import com.softeem.easyblog.model.common.BaseModel;

import java.io.Serializable;
import java.util.List;

public interface BaseMapper<T extends BaseModel> {
    List<T> selectAll();

    int deleteByPrimaryKey(Serializable id);

    T selectByPrimaryKey(Serializable id);

    int insert(T record);

    int updateByPrimaryKeySelective(T record);
}
