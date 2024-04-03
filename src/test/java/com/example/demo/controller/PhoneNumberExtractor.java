package com.example.demo.controller;

import java.io.*;

import java.security.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PhoneNumberExtractor {

    public static void main(String[] args) throws IOException {
        String regex = "1\\d{10}"; // 匹配任意以1开头的11位数字的手机号
        Date date = new Date();
        DateFormat dateFormat;
        dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//        String Date = now.toString();
        Pattern pattern = Pattern.compile(regex);
        String filePath = "C:\\Users\\yuye\\Documents\\WeChat Files\\wxid_bqm60sp0zaqz21\\FileStorage\\File\\2024-03\\2(1).txt";
        List<String> lines = new ArrayList<>();
        int count = 0;
        BufferedReader br = null;
        BufferedWriter bw = null;
        try {
            br = new BufferedReader(new FileReader(filePath));
            bw = new BufferedWriter(new FileWriter("C:\\Users\\yuye\\Desktop\\新建文件夹 (2)\\yuyTEst"+dateFormat.format(date)+".txt"));
            String line;
            while ((line = br.readLine()) != null) {
                Matcher matcher = pattern.matcher(line);
                if (matcher.find()) {
                    System.out.println(Long.valueOf(matcher.group())); // 打印找到的手机号
                    count++;
                }
                lines.add(line + "|余额");
            }
            System.out.println(count);
            for (String line1 : lines) {
                bw.write(line1);
                bw.newLine();
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (br != null) {
                br.close();
            }
            if (bw != null) {
                bw.close();
            }
        }



    }
}


