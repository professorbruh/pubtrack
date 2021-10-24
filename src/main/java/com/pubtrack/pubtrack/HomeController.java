package com.pubtrack.pubtrack;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;
import javax.servlet.http.HttpSession;

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
        ModelAndView mv = new ModelAndView();
        List<Student> listStudents = (List<Student>) student_repo.findAll();
        mv.addObject("liststu", listStudents);
        mv.setViewName("testpage.jsp");
        return mv;
    }
    
}