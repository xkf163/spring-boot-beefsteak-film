package cn.xukangfeng.service.impl;

import cn.xukangfeng.domain.SysPermission;
import cn.xukangfeng.domain.SysPermissionRepository;
import cn.xukangfeng.service.SysPermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/3/23.
 */
@Service
public class SysPermissionServiceImpl implements SysPermissionService {

    @Autowired
    SysPermissionRepository sysPermissionRepository;

    @Override
    public List<SysPermission> findAll() {
        return sysPermissionRepository.findAll();
    }
}
