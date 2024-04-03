package com.example.demo.controller;

import org.junit.jupiter.api.Test;
import redis.clients.jedis.Jedis;

import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;

public class test {


    public static void main(String[] args) {
        double fee;
        int i = 45821;
        fee = (double) i /100;
        System.out.println(fee);
    }

}