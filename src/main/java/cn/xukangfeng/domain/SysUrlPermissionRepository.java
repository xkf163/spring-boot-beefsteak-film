package cn.xukangfeng.domain;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * Created by Administrator on 2017/3/23.
 */
public interface SysUrlPermissionRepository extends JpaRepository<SysUrlPermission,Long> {

    List<SysUrlPermission> findAllByOrderBySortAsc();
}
