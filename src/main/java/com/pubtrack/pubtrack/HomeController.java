package com.pubtrack.pubtrack;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpSession;
import com.pubtrack.pubtrack.StudentRepo;
@Controller
public class HomeController 
{ 
    @Autowired
    StudentRepo student_repo;

    @Autowired
    LoginRepo login_repo;
    @RequestMapping()
    public ModelAndView home(String name, HttpSession session)
    {
        ModelAndView mv = new ModelAndView();
        mv.addObject("name", name);
        mv.setViewName("homepage.jsp");
        return mv;
    }

    @RequestMapping("login")
    public ModelAndView login(HttpSession session)
    {
        ModelAndView mv = new ModelAndView("login.jsp");
        Login nullval = new Login();
        nullval.setUser_type("Nothing");
        Login st = login_repo.findById("aiandsociety@gmail.com").orElse(nullval);
        System.out.println(st.getUser_type());
        if (st.getUser_type().equals("Student"))
        {
            mv = student_login(session);
        }
        if (st.getUser_type().equalsIgnoreCase("Publisher"))
        {
            mv = publisher_login(session);
        }
        if (st.getUser_type().equalsIgnoreCase("Reviewer"))
        {
            mv = reviewer_login(session);
        }
        if (st.getUser_type().equalsIgnoreCase("Administrator"))
        {
            mv = admin_login(session);
        }
        return mv;
    }
    
    @RequestMapping("student_dash")
    public ModelAndView student_login(HttpSession session)
    {
        ModelAndView mv = new ModelAndView("student_dash.jsp");
        return mv;
    }
    @RequestMapping("publisher_dashboard")
    public ModelAndView publisher_login(HttpSession session)
    {
        ModelAndView mv = new ModelAndView("statistics.jsp");
        return mv;
    }
    @RequestMapping("reviewer_dashboard")
    public ModelAndView reviewer_login(HttpSession session)
    {
        ModelAndView mv = new ModelAndView("homepage.jsp");
        return mv;
    }
    @RequestMapping("admin_dashboard")
    public ModelAndView admin_login(HttpSession session)
    {
        ModelAndView mv = new ModelAndView("admin_dashboard.jsp");
        return mv;
    }
}   