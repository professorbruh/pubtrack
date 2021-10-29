package com.pubtrack.pubtrack;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Iterator;
import javax.servlet.http.HttpSession;
@Controller
public class HomeController 
{ 
    @Autowired
    StudentRepo student_repo;

    @Autowired
    LoginRepo login_repo;

    @Autowired
    PaperRepo paper_repo;

    @Autowired
    EditorRepo editor_repo;

    @RequestMapping()
    public ModelAndView home(String name, HttpSession session)
    {
        ModelAndView mv = new ModelAndView();
        mv.addObject("name", name);
        mv.setViewName("homepage.jsp");
        return mv;
    }

    @RequestMapping("/faq")
    public ModelAndView faq(){
        return new ModelAndView("faq.jsp");
    }


    @RequestMapping("/progress")
    public ModelAndView progress(){
        return new ModelAndView("progress.jsp");
    }

    @RequestMapping("/new_submissions")
    public ModelAndView submissions(){
        return new ModelAndView("new_sub.jsp");
    }

    @RequestMapping("/statistics")
    public ModelAndView statistics(){
        return new ModelAndView("statistics.jsp");
    }

    @RequestMapping("/status")
    public ModelAndView status(){
        return new ModelAndView("status.jsp");
    }

    @RequestMapping("/submit_paper")
    public ModelAndView submit_paper(){
        return new ModelAndView("submit_paper.jsp");
    }

    @RequestMapping("/comments")
    public ModelAndView comments(){
        return new ModelAndView("comments.jsp");
    }

    @RequestMapping("/update_status12")
    public ModelAndView update12(){
        return new ModelAndView("update_status12.jsp");
    }

    @RequestMapping("/update_status35")
    public ModelAndView update35(){
        return new ModelAndView("update_status35.jsp");
    }

    @RequestMapping("/allot_reviewers")
    public ModelAndView allot_reviewers(){
        return new ModelAndView("allot_reviewers.jsp");
    }

    @RequestMapping("/reviewer_add_comments")
    public ModelAndView reviewer_add_comments(){
        return new ModelAndView("reviewer_add_comments.jsp");
    }

    @RequestMapping("/reviewer_edit_comments")
    public ModelAndView reviewer_edit_comments(){
        return new ModelAndView("reviewer_edit_comments.jsp");
    }

    @RequestMapping("/profile")
    public ModelAndView profile(){
        return new ModelAndView("profile.jsp");
    }


    @RequestMapping("login")
    public ModelAndView login(HttpSession session)
    {
        ModelAndView mv = new ModelAndView("login.jsp");
        Login nullval = new Login();
        nullval.setUser_type("Nothing");
        Login st = login_repo.findById("sidharthrajagopal1123@gmail.com").orElse(nullval);
        session.setAttribute("user_email", st.getEmail());
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
        String s = (String)session.getAttribute("user_email");
        Login st = login_repo.findById("sivasininetrasa@gmail.com").orElse(new Login());
        Iterable<Paper> paper= paper_repo.findAll();
        Iterator<Paper> paperIterator = paper.iterator();
        ArrayList<Paper> student_papers = new ArrayList<Paper>();
        while(paperIterator.hasNext())
        {
            Paper p = paperIterator.next();
            
            if(p.getStudent().getEmail().equals(st.getEmail()))
            {   
                student_papers.add(p);
            }
        }
        
        mv.addObject("papers", student_papers);
        return mv;
    }
    @RequestMapping("publisher_dashboard")
    public ModelAndView publisher_login(HttpSession session)
    {
        ModelAndView mv = new ModelAndView("status.jsp");
        Iterable<Paper> paper= paper_repo.findAll();
        Iterator<Paper> paperIterator = paper.iterator();
        ArrayList<Paper> student_papers = new ArrayList<Paper>();
        while(paperIterator.hasNext())
        {
            Paper p = paperIterator.next();
            
            if(p.getStatus()==5)
            {   
                student_papers.add(p);
            }
        }
        mv.addObject("papers", student_papers);
        for(int i=0;i<student_papers.size();i++)
        {
            System.out.println(student_papers.get(i));
        }
        return mv;
    }
    @RequestMapping("reviewer_dashboard")
    public ModelAndView reviewer_login(HttpSession session)
    {
        ModelAndView mv = new ModelAndView("reviewer_dash.jsp");
        return mv;
    }
    @RequestMapping("admin_dashboard")
    public ModelAndView admin_login(HttpSession session)
    {
        ModelAndView mv = new ModelAndView("admin_dashboard.jsp");
        return mv;
    }
}   