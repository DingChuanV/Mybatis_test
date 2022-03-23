package com.uin.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author wanglufei
 * @description: mybatis的一对一关联查询测试案例。
 * 分别测试：嵌套查询和联合查询。
 * @date 2022/3/23/2:46 PM
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Student {
    private int id;
    private String name;
    private int sex;
    //一对一的关系
    private StudentCard studentCard;

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", sex=" + sex +
                ", studentCard=" + studentCard +
                '}';
    }
}
