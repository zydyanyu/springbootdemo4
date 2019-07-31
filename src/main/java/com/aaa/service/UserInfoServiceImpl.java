package com.aaa.service;

import com.aaa.dao.UserInfoDao;
import com.aaa.entity.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserInfoServiceImpl implements UserInfoService {
    @Autowired
    private UserInfoDao userInfoDao;
    @Override
    public UserInfo login(UserInfo userInfo) {
        return userInfoDao.login(userInfo);
    }

    @Override
    public List<UserInfo> aaa() {
        return userInfoDao.aaa();
    }

    @Override
    public int a(int id) {
        return userInfoDao.a(id);
    }
}
