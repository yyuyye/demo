package com.example.demo.controller;

import org.json.JSONObject;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

public class test {
    public static void main(String[] args) {
        String jsonStr = "{\"DeviceUName\":\"SSJ_Test_0944\",\"MapData\":{\"state\": 14,\"blockage\": 0,\"track\": 0,\"runningDirection\": 0,\"power\": 3.0092516,\"speed\": 7,\"temperature\": -1.8519077,\"vibration\": 12.336168,\"electricity\": 2.2876384,\"voltage\": 224.8767,\"noise\": 20,\"method\": 0,\"mode\": 1,\"faultCode\": 3,\"alertCode\": 7},\"Timestamp\":\"2023-04-23T14:19:48.087069+08:00\"}";
        JSONObject jsonObj = new JSONObject(jsonStr);
        JSONObject mapDataObj = jsonObj.getJSONObject("MapData");
        System.out.println("alertCode: " + mapDataObj.getInt("alertCode"));
        System.out.println("Vibration: " + mapDataObj.getDouble("vibration"));
    }
}