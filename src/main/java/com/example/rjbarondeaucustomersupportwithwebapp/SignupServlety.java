package com.example.rjbarondeaucustomersupportwithwebapp;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Hashtable;
import java.util.Map;

//Whoops i accidentally put a y
@WebServlet(name="signupServlet", value="/signup")
public class SignupServlety {
    public static final Map<String, String> userDB = new Hashtable<>();



    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



        request.getRequestDispatcher("/WEB-INF/jsp/view/signup.jsp").forward(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();




        String username = request.getParameter("username");
        String password = request.getParameter("password");


        userDB.put(username,password);
    }





}
