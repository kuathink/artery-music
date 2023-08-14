package com.arterymusic.utils;

/**
 * Create by Kudos on 2023/5/7 17:40
 * 字符串工具类 String Utility Class
 */
public class StringUtil {

    /**
     * 判断字符串是否为空
     * if null:return true;
     * if non_null:return false.
     *
     * @param str
     * @return
     */
    public static boolean isEmpty(String str) {
        if (str == null || "".equals(str.trim())) {
            return true;
        } else {
            return false;
        }
    }
}
