package com.examples.jsp;

import javax.servlet.*;

/**
 * @创建人 steffens
 * @创建时间 2018/12/14
 * @描述 文件创建
 */
public class AuthenFilter implements Filter {

    public void  init(FilterConfig config) throws ServletException {
        // 获取初始化参数
        String site = config.getInitParameter("Site");

        // 输出初始化参数
        System.out.println("AuthenFilter 网站名称: " + site);
    }
    public void  doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws java.io.IOException, ServletException {

        // 输出站点名称
        System.out.println("AuthenFilter 站点网址：http://www.runoob.com AuthenFilter-doFilter");

        // 把请求传回过滤链
        chain.doFilter(request,response);
    }
    public void destroy( ){
        /* 在 Filter 实例被 Web 容器从服务移除之前调用 */
    }

}
