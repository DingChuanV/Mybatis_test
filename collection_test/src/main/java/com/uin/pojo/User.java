package com.uin.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * @author wanglufei
 * @description: TODO
 * @date 2022/3/23/3:50 PM
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    private int id;
    private String name;
    private String pwd;

    //一个用户包含多个订单
    private List<Order> orders;
}
