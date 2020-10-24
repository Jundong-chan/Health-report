package net.togogo.servlet;

import net.togogo.service.tbUerService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RegistServlet extends HttpServlet {
    private tbUerService us= new tbUerService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取从前端传过来的用户名和密码
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        System.out.println("name="+name);
        System.out.println("password="+password);

        //转发，由服务端实现，客户端地址栏的根目录不会改变，在当前服务器跳转，请求的数据不会丢失
        if("".equals(name)){
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }else{
            //判断通过后，跳转到登录页面
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
        us.regist(name,password);
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
