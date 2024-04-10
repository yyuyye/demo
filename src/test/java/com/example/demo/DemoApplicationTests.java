package com.example.demo;

import org.junit.Assert;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@SpringBootTest
class DemoApplicationTests {
    public static void main(String[] args) {
        new ApplicationTests();
    }
    @RunWith(SpringJUnit4ClassRunner.class)
    @SpringBootTest()
    public static class ApplicationTests {



        @Test
        public void test() throws Exception {



        }
    }
}
