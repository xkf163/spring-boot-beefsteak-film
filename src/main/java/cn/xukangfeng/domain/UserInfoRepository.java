package cn.xukangfeng.domain;

import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by F on 2017/3/22.
 */
public interface UserInfoRepository extends JpaRepository<UserInfo,Long> {
    /** 通过username查找用户信息 **/
    UserInfo findByUsername(String username);
}
