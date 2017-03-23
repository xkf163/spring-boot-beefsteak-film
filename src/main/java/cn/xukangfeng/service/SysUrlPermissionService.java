package cn.xukangfeng.service;

import cn.xukangfeng.domain.SysUrlPermission;

import java.util.List;

/**
 * Created by Administrator on 2017/3/23.
 */
public interface SysUrlPermissionService {
    List<SysUrlPermission> findAllByOrderBySortAsc();
}
