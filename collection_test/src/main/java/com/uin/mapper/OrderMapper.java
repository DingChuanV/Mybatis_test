package com.uin.mapper;

import com.uin.pojo.Order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author wanglufei
 * @description: TODO
 * @date 2022/3/23/3:55 PM
 */
public interface OrderMapper {
    List<Order> selectOrderById(@Param("id") int id);
}
