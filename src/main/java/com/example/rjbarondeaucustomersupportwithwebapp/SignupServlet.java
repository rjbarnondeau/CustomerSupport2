package com.example.rjbarondeaucustomersupportwithwebapp;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import static com.example.rjbarondeaucustomersupportwithwebapp.LoginServlet.userDB;

@WebServlet(name="signupServlet", value="/signup")
public class SignupServlet extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        // if logout exists, log us out
        if(request.getParameter("logout") != null) {
            session.invalidate(); // logs us out
            response.sendRedirect("login");
            return;
        }        // check if logged in - then go to main page
        else if (session.getAttribute("username") != null) {
            response.sendRedirect("ticket");
            return;
        }

        // not logged in, go to login page - initial login page
        request.setAttribute("loginFailed", false);
        request.getRequestDispatcher("/WEB-INF/jsp/view/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        // again check if already logged in
        if(session.getAttribute("username") != null) {
            response.sendRedirect("ticket");
            return;
        }

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // check bad values/can't login
        if (username == null || password == null || LoginServlet.userDB.containsKey(username)) {
            request.setAttribute("signupFailed", true);
            request.getRequestDispatcher("/WEB-INF/jsp/view/signup.jsp").forward(request, response);
        }
        // login is successful
        else {
            userDB.put(username,password);
            response.sendRedirect("login");
        }
        
    }
}
