package com.example.demo.dao;

import com.example.demo.entity.EmailVerificationCode;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.Optional;

@Repository
public interface EmailVerificationCodeRepository extends JpaRepository<EmailVerificationCode, Long> {
   @Query("SELECT '*' FROM EmailVerificationCode evc WHERE evc.email = ?1 AND evc.verificationCode = ?2 AND evc.expiredAt > ?3")
   Optional<EmailVerificationCode> findByEmailAndVerificationCodeAndExpiredAtGreaterThan(
           String email, String verificationCode,LocalDateTime currentTime);
}