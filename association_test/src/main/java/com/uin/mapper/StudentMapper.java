package com.uin.mapper;

import com.uin.pojo.Student;
import org.apache.ibatis.annotations.Param;

/**
 * @author wanglufei
 * @description: TODO
 * @date 2022/3/23/2:50 PM
 */
public interface StudentMapper {
    Student selectStuById1(@Param("id") int id);

    Student selectStuById2(@Param("id") int id);
}
