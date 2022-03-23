package com.uin.mapper;

import com.uin.pojo.User;
import com.uin.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

/**
 * @author wanglufei
 * @description: TODO
 * @date 2022/3/23/4:10 PM
 */
public class UserMapperTest {
    @Test
    public void selectUserOrderById1(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        User user = mapper.selectUserOrderById1(1);
        System.out.println(user);
        sqlSession.close();
    }

    @Test
    public void selectUserOrderById2(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        User user = mapper.selectUserOrderById2(1);
        System.out.println(user);
        sqlSession.close();
    }
}
