package cn.xukangfeng.domain;

import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by F on 2017/3/22.
 */
public interface UserInfoRepository extends JpaRepository<UserInfo,Long> {

    UserInfo findByUsername(String username);
}
