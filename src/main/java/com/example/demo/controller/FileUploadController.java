package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
public class FileUploadController {

    @Value("${upload.path}")
    private String uploadPath;

    @PostMapping("/upload")
    public ResponseEntity<String> handleFileUpload(@RequestParam("file") MultipartFile file) {
        if (file.isEmpty()) {
            return new ResponseEntity<>("上传文件不能为空", HttpStatus.BAD_REQUEST);
        }

        try {
            // 生成唯一文件名
            String fileName = UUID.randomUUID().toString() + "-" + file.getOriginalFilename();
            // 保存文件
            file.transferTo(new File(uploadPath + fileName));
            // 返回文件访问URL
            String fileUrl = uploadPath + fileName;
            return ResponseEntity.ok().body(fileUrl);
        } catch (IOException e) {
            return new ResponseEntity<>("文件上传失败", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}







