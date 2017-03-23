package cn.xukangfeng.service.impl;

import cn.xukangfeng.domain.UserInfo;
import cn.xukangfeng.domain.UserInfoRepository;
import cn.xukangfeng.service.UserInfoService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * Created by F on 2017/3/22.
 */
@Service
public class UserInfoServiceImpl implements UserInfoService {

    @Resource
    private UserInfoRepository userInfoRepository;

    @Transactional(readOnly=true)
    @Override
    public UserInfo findByUsername(String username) {
        return userInfoRepository.findByUsername(username);
    }
}
