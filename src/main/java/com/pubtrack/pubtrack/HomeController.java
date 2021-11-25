package com.pubtrack.pubtrack;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

    @RequestMapping("test")
    public ModelAndView testpage(@RequestParam(name = "fname", required = false)String fname,@RequestParam(name = "lname", required = false)String lname, HttpSession session)
    {
        ModelAndView mv = new ModelAndView("test.jsp");
        System.out.println(fname + " "+ lname);
        return mv;

    }
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
    public ModelAndView login(@RequestParam(name = "user", required = false)String username,@RequestParam(name = "pass", required = false)String pass,HttpSession session)
    {
        ModelAndView mv = new ModelAndView("login.jsp");
        Login nullval = new Login();
        nullval.setUser_type("Nothing");
        //Login st = login_repo.findById("sivasininetra@gmail.com").orElse(nullval);
        Login st;
        if(username!=null)
        {
        st = login_repo.findById(username).orElse(nullval);
        }
        else
        {
            st = nullval;
        }
        if (st!=nullval)
        {
            if(!(st.getPassword().equals(pass)))
            {
                return mv;
            }
        }
        session.setAttribute("user_email", st.getEmail());
        System.out.println(st.getUser_type());
        if (st.getUser_type().equals("Student"))
        {
            return new ModelAndView("redirect:student_dash");
        }
        else if (st.getUser_type().equalsIgnoreCase("Publisher"))
        {
            return new ModelAndView("redirect:publisher_dashboard");
        }
        else if (st.getUser_type().equalsIgnoreCase("Reviewer"))
        {
            return new ModelAndView("redirect:reviewer_dashboard");
        }
        else if (st.getUser_type().equalsIgnoreCase("Administrator"))
        {
            return new ModelAndView("redirect:admin_dashboard");
        }
        return mv;
        
    }
    @RequestMapping("signup")
    public ModelAndView signup(@RequestParam(name = "user", required = false)String username,@RequestParam(name = "pass", required = false)String pass,HttpSession session)
    {
        return new ModelAndView("admin_approval.jsp");
    }

    
    @RequestMapping("student_dash")
    public ModelAndView student_login(HttpSession session)
    {
        ModelAndView mv = new ModelAndView("student_dash.jsp");
        String s = (String)session.getAttribute("user_email");
        Login st = login_repo.findById(s).orElse(new Login());
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
        String s = (String)session.getAttribute("user_email");
        Login user = login_repo.findById(s).orElse(new Login());
        mv.addObject("user", user);
        return mv;
    }
} 