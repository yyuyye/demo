package com.example.demo.service;

import com.example.demo.dao.StandardOptionsDao;
import com.example.demo.entity.Questions;
import com.example.demo.entity.StandardOptions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StandardOptionsService {

    @Autowired
    private StandardOptionsDao standardOptionsDao;

    public List<String> findAllOptions (){
        List<String>  standardOptions =standardOptionsDao.getAllOptionTexts();
        return standardOptions;
    }
}
