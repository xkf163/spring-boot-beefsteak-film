package cn.xukangfeng.service;

import cn.xukangfeng.domain.UserInfo;

/**
 * Created by F on 2017/3/22.
 */
public interface UserInfoService {
    public UserInfo findByUsername(String username);
}
