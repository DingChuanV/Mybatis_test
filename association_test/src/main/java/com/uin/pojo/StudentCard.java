package com.uin.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @author wanglufei
 * @description: TODO
 * @date 2022/3/23/2:46 PM
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class StudentCard {
    private int id;
    private int studentId;
    private Date startDate;
    private Date endDate;

    @Override
    public String toString() {
        return "StudentCard{" +
                "id=" + id +
                ", studentId=" + studentId +
                ", startDate=" + startDate +
                ", endDate=" + endDate +
                '}';
    }
}
