package com.uin.mapper;


import org.apache.ibatis.annotations.Param;
import com.uin.pojo.StudentCard;

/**
 * @author wanglufei
 * @description: TODO
 * @date 2022/3/23/2:50 PM
 */
public interface StudentCardMapper {

    StudentCard selectStuCardById(@Param("id") int id);
}
