/**
* ClassName : Constants.java
* Create on ：2017年5月31日
* Copyrights 2017 guanfl All rights reserved.
* Email : guanfl@foxmail.com
*/
package com.softeem.easyblog.util;

public interface Constants {
    /**redis空间*/
    public static final String CACHE_NAMESPACE = "AUTO_MEDIA:";

    /**token存储空间*/
    public static final String TOKEN_KEY = CACHE_NAMESPACE + "TOKEN_KEY:";

    /**验证码空间*/
    public static final String CAPTCHA_KEY = CACHE_NAMESPACE + "CAPTCHA_KEY:";

    /** 当前用户 */
    public static final String CURRENT_USER = "CURRENT_USER";
}
