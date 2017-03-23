package cn.xukangfeng.service.impl;

import cn.xukangfeng.domain.SysUrlPermission;
import cn.xukangfeng.domain.SysUrlPermissionRepository;
import cn.xukangfeng.service.SysUrlPermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/3/23.
 */
@Service
public class SysUrlPermissionServiceImpl implements SysUrlPermissionService {

    @Autowired
    SysUrlPermissionRepository sysUrlPermissionRepository;

    @Override
    public List<SysUrlPermission> findAllByOrderBySortAsc(){
        return sysUrlPermissionRepository.findAllByOrderBySortAsc();
    }

}
