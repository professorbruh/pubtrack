package com.pubtrack.pubtrack;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpSession;
import com.pubtrack.pubtrack.StudentRepo;
@Controller
public class HomeController 
{ 
    @Autowired
    StudentRepo student_repo;

    @RequestMapping()
    public ModelAndView home(String name, HttpSession session)
    {
        ModelAndView mv = new ModelAndView();
        mv.addObject("name", name);
        mv.setViewName("homepage.jsp");
        return mv;
    }

    @RequestMapping("test")
    public ModelAndView test()
    {
        ModelAndView mv = new ModelAndView("testpage.jsp");
        Student st = student_repo.findById(18469).orElse(new Student());
        mv.addObject("st",st);
        System.out.println(st.getRef_id());
        return mv;
    }
    
}