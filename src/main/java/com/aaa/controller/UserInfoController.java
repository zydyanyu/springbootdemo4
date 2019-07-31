package com.aaa.controller;

import com.aaa.entity.UserInfo;
import com.aaa.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class UserInfoController {
    @Autowired
    private UserInfoService userInfoService;

    @RequestMapping("/aaa")
    public String aaa(){
        List<UserInfo> userInfo=userInfoService.aaa();
        for (UserInfo userInfo1:userInfo){
            System.out.println(userInfo);
        }
        if(userInfo!=null){
            return "aaa";
        }else{
            return "bbb";
        }

    }

//    @RequestMapping("/login")
//    @ResponseBody
//    public String login(UserInfo userInfo){
//        System.out.println("+++++++++");
//        UserInfo userInfo1=userInfoService.login(userInfo);
//        System.out.println("-------");
//        if (userInfo1!=null){
//            return "true";
//        }else {
//            return "false";
//        }
//    }

}
