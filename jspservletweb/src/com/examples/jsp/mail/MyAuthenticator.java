package com.examples.jsp.mail;

/**
 * @创建人 steffens
 * @创建时间 2018/12/14
 * @描述 文件创建
 */
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
/**
 * 身份验证器
 * @author dove
 *
 */
public class MyAuthenticator extends Authenticator {
    private String username;
    private String password;
    public MyAuthenticator(){

    }

    public MyAuthenticator(String username, String password) {
        this.username = username;
        this.password = password;
    }

    @Override
    protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(username, password);
    }

    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
}