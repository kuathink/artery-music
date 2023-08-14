package com.arterymusic.entity.vo;

/**
 * Create by Kudos on 2023/5/7 16:48
 * 消息模型对象（数据响应）
 * 状态码：1=成功
 * 0=失败
 * 提示信息：字符串
 * 回显数据：object对象
 */
public class MessageModel {
    private Integer status = 1;//状态码 statusCode(默认值=1)
    private String msg = "成功";//提示信息 hintMessage
    private Object object; //回显对象 echoObject

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getObject() {
        return object;
    }

    public void setObject(Object object) {
        this.object = object;
    }
}
