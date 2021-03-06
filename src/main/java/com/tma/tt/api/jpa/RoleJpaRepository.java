package com.tma.tt.api.jpa;

import com.tma.tt.api.common.CommonJpaRepository;
import com.tma.tt.api.model.Role;
import com.tma.tt.api.model.RoleEnum;

import java.util.Optional;

public interface RoleJpaRepository extends CommonJpaRepository<Role, RoleEnum> {
}
