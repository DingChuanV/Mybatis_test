package com.uin.mapper;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import com.uin.pojo.Student;
import com.uin.utils.MybatisUtils;

/**
 * @author wanglufei
 * @description: TODO
 * @date 2022/3/23/3:06 PM
 */
public class StudentTest {

    @Test
    public void selectStuById1Test() {
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        StudentMapper mapper = sqlSession.getMapper(StudentMapper.class);
        Student student = mapper.selectStuById1(1);
        System.out.println(student);
        sqlSession.close();
    }

    @Test
    public void selectStuById2Test(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        StudentMapper mapper = sqlSession.getMapper(StudentMapper.class);
        Student student = mapper.selectStuById2(1);
        System.out.println(student);
        sqlSession.close();
    }
}
