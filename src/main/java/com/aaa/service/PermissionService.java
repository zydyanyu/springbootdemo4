package com.aaa.service;

import com.aaa.entity.Permission;

import java.util.List;
import java.util.Map;

public interface PermissionService {

    public List<Map> selectPermission(Integer id);
}
