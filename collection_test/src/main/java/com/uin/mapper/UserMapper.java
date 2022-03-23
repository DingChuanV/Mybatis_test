package com.uin.mapper;

import com.uin.pojo.User;
import org.apache.ibatis.annotations.Param;

/**
 * @author wanglufei
 * @description: TODO
 * @date 2022/3/23/3:57 PM
 */
public interface UserMapper {
    User selectUserOrderById1(@Param("id") int id);
    User selectUserOrderById2(@Param("id") int id);
}
