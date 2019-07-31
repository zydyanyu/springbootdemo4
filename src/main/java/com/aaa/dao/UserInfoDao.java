package com.aaa.dao;

import com.aaa.entity.UserInfo;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface UserInfoDao {

    @Select("select * from userinfo where telphone=#{telphone} and pwd=#{pwd}")
    public UserInfo login(UserInfo userInfo);

    @Select("select * from userinfo")
    public List<UserInfo> aaa();

    @Delete("delete from userinfo where userid=#{id}")
    public int a(int id);
}
