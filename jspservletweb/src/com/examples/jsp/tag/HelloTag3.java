package com.examples.jsp.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.io.StringWriter;
/**
 * @创建人 steffens
 * @创建时间 2018/12/15
 * @描述 文件创建
 */
public class HelloTag3 extends SimpleTagSupport {

    private String message;

    public void setMessage(String msg) {
        this.message = msg;
    }

    StringWriter sw = new StringWriter();

    public void doTag()
            throws JspException, IOException
    {
        if (message != null) {
            /* 从属性中使用消息 */
            JspWriter out = getJspContext().getOut();
            out.println( message );
        }
        else {
            /* 从内容体中使用消息 */
            getJspBody().invoke(sw);
            getJspContext().getOut().println(sw.toString());
        }
    }

}