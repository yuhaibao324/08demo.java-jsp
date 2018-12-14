package com.examples.jsp.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.io.StringWriter;

/**
 * @创建人 steffens
 * @创建时间 2018/12/15
 * @描述 文件创建
 */
public class HelloTag2 extends SimpleTagSupport {

    StringWriter sw = new StringWriter();
    public void doTag()
            throws JspException, IOException
    {
        getJspBody().invoke(sw);
        getJspContext().getOut().println(sw.toString());
    }

}

