package com.example.demo.dao;

import com.example.demo.entity.EmailVerificationCode;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.Optional;

@Repository
public interface EmailVerificationCodeRepository extends JpaRepository<EmailVerificationCode, Long> {
    Optional<EmailVerificationCode> findByEmailAndCodeAndExpiresAtGreaterThan(String email, String verificationCode, LocalDateTime createdAt);
}
