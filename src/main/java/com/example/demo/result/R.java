package com.example.demo.result;

/**
 * 统一返回集的封装
 * code: 响应码
 * msg: 响应消息
 * data: 响应数据
 */

public class R {

    private String code;
    private String msg;
    private Object data;


    public R() {
    }
    public R(Object data) {
        this.code = "200";
        this.msg = "success";
        this.data = data;
    }



    public R(String code, String msg, Object data) {
        this.code = code;
        this.msg = msg;
        this.data = data;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
