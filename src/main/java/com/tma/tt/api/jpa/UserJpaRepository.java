package com.tma.tt.api.jpa;

import com.tma.tt.api.common.CommonJpaRepository;
import com.tma.tt.api.model.User;

import java.util.Optional;

public interface UserJpaRepository extends CommonJpaRepository<User, Long> {
    Optional<User> findByUsername(String username);
}

