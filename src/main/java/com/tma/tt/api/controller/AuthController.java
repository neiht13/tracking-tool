package com.tma.tt.api.controller;

import com.tma.tt.api.exception.AppException;
import com.tma.tt.api.jpa.UserJpaRepository;
import com.tma.tt.api.model.User;
import com.tma.tt.api.payload.JwtAuthenticationResponse;
import com.tma.tt.api.payload.LoginRequest;
import com.tma.tt.api.security.JwtTokenProvider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

@RestController
@RequestMapping("/api/auth")
public class AuthController {

    @Autowired
    AuthenticationManager authenticationManager;

    @Autowired
    UserJpaRepository jpaRepository;

    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    JwtTokenProvider tokenProvider;

    @PostMapping("/signin")
    public ResponseEntity<?> authenticateUser(@Valid @RequestBody LoginRequest loginRequest) {
        Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(
                        loginRequest.getUsername(),
                        loginRequest.getPassword()
                )
        );
        SecurityContextHolder.getContext().setAuthentication(authentication);
        String jwt = tokenProvider.generateToken(authentication);
        return ResponseEntity.ok(new JwtAuthenticationResponse(jwt));
    }

    @PostMapping("/password")
    public ResponseEntity<?> changePassword(@Valid @RequestBody LoginRequest loginRequest) {

        User user = jpaRepository.findByUsername(loginRequest.getUsername()).orElseThrow(() -> new AppException("Wrong username."));

        user.setPassword(passwordEncoder.encode(loginRequest.getPassword()));
        jpaRepository.save(user);
        return ResponseEntity.ok(new JwtAuthenticationResponse("jwt"));
    }
}

