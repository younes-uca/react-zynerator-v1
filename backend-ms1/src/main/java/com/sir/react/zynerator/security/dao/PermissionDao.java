package com.sir.react.zynerator.security.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.sir.react.zynerator.security.bean.Permission;

public interface PermissionDao extends JpaRepository<Permission, Long> {
    public Permission findByName(String name);
}
