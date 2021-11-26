package com.pubtrack.pubtrack;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.sql.Date;
import java.util.List;
import java.util.ArrayList;
import java.util.*;
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

    @Autowired
    CommentRepo comment_repo;

    @Autowired
    ReviewerRepo reviewerRepo;

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
    public ModelAndView faq(HttpSession session){
        return new ModelAndView("faq.jsp");
    }


    @RequestMapping("/progress")
    public ModelAndView progress(HttpSession session){
        ModelAndView mv = new ModelAndView("progress.jsp");
        Iterable<Paper> paper= paper_repo.findAll();
        Iterator<Paper> paperIterator = paper.iterator();
        ArrayList<Paper> student_papers = new ArrayList<Paper>();
        String s = (String)session.getAttribute("user_email");
        System.out.println(s);
        Editor user = editor_repo.findByEmail(s);
        System.out.println(user.getName());
        

        while(paperIterator.hasNext())
        {
            Paper p = paperIterator.next();
            
            if((p.getStatus()<5) && (p.getStatus()>2) && p.getEditor().getName().equalsIgnoreCase(user.getName()))
            {   
                student_papers.add(p);
            }
        }
        mv.addObject("papers", student_papers);
        mv.addObject("editor", user);
        for(int i=0;i<student_papers.size();i++)
        {
            System.out.println(student_papers.get(i));
        }
        return mv;
    }

    @RequestMapping("/new_submissions")
    public ModelAndView submissions(HttpSession session){
        ModelAndView mv = new ModelAndView("new_sub.jsp");
        Iterable<Paper> paper= paper_repo.findAll();
        Iterator<Paper> paperIterator = paper.iterator();
        ArrayList<Paper> student_papers = new ArrayList<Paper>();
        String s = (String)session.getAttribute("user_email");
        System.out.println(s);
        Editor user = editor_repo.findByEmail(s);
        System.out.println(user.getName());
        while(paperIterator.hasNext())
        {
            Paper p = paperIterator.next();
            
            if((p.getStatus()==1 || p.getStatus()==2) && p.getEditor().getName().equalsIgnoreCase(user.getName()))
            {   
                student_papers.add(p);
            }

        }
        mv.addObject("papers", student_papers);
        mv.addObject("editor", user);
        return mv;
    }

    @RequestMapping("/statistics")
    public ModelAndView statistics(HttpSession session){
        return new ModelAndView("statistics.jsp");
    }

    @RequestMapping("/status")
    public ModelAndView status(HttpSession session){
        return new ModelAndView("status.jsp");
    }

    @RequestMapping("/submit_paper")
    public ModelAndView submit_paper(HttpSession session){


        return new ModelAndView("submit_paper.jsp");
    }


    @PostMapping("/set_paper")
    public String setPaper(@RequestParam(name="title") String title
            ,@RequestParam(name = "email1") String email1
            ,@RequestParam(name = "name1") String name1
            ,@RequestParam(name = "institution") String institution
            ,@RequestParam(name = "domain") String domain
            ,@RequestParam(name = "journal") String journal
            ,@RequestParam(name = "plagiarismpercent") String plagiarismpercent
            ,@RequestParam(name = "manuscript") String manuscript
            ,@RequestParam(name = "report") String report
            ){
        Paper paper=new Paper();
        paper.setStudent(student_repo.findByEmail(email1));
        paper.setTitle(title);
        paper.setDomain(domain);
        paper.setData_of_submission(new Date(System.currentTimeMillis()));
        paper.setPlagiarism_percentage(plagiarismpercent);
        paper.setManuscript(manuscript);
        paper.setPlagiarism_report(report);
        paper.setEditor(editor_repo.findById(journal).get());
        paper.setStudent(student_repo.findByEmail(email1));
        paper_repo.save(paper);
        return "success";
    }

    @RequestMapping("/comments")
    public ModelAndView comments(@RequestParam(name="paper")String ref_id,   HttpSession session)
    {
        ModelAndView mv = new ModelAndView("comments.jsp");
        System.out.println(ref_id);
        Paper paper = paper_repo.findById(ref_id).orElse(new Paper());
        List<Comment> comment = comment_repo.findByReferenceid(ref_id);
        mv.addObject("paper", paper);
        mv.addObject("comment", comment);
        return mv;
        
    }

    @RequestMapping("/update_status12")
    public ModelAndView update12(@RequestParam(name="paper")String ref_id,@RequestParam(name="extraoptions",required = false)String status_update, HttpSession session){
        ModelAndView mv = new ModelAndView("update_status12.jsp");
        Paper paper = paper_repo.findById(ref_id).orElse(new Paper());
        mv.addObject("paper", paper);
        if(status_update != null)
        {
            Paper k = paper_repo.findById(ref_id).orElse(new Paper());
            k.setStatus(Integer.parseInt(status_update));
            paper_repo.save(k);
        }
        return mv;
    }

    @RequestMapping("/update_status35")
    public ModelAndView update35(@RequestParam(name="paper")String ref_id,@RequestParam(name="extraoptions",required = false)String status_update, HttpSession session){
        ModelAndView mv = new ModelAndView("update_status35.jsp");
        Paper paper = paper_repo.findById(ref_id).orElse(new Paper());
        session.setAttribute("currentpaper", ref_id);
        mv.addObject("paper", paper);
        if(status_update != null)
        {
            Paper k = paper_repo.findById(ref_id).orElse(new Paper());
            k.setStatus(Integer.parseInt(status_update));
            paper_repo.save(k);
        }
        return mv;
    }

    @RequestMapping("/allot_reviewers")
    public ModelAndView allot_reviewers(@RequestParam(name="paper")String ref_id,@RequestParam(name="extraoptions",  required = false)String allotted_reviewer,HttpSession session){
        Comment comment=new Comment();
        ModelAndView mv = new ModelAndView("allot_reviewers.jsp");
        Paper paper = paper_repo.findById(ref_id).orElse(new Paper());
        session.setAttribute("currentpaper", ref_id);
        Iterable<Reviewer> revs = reviewerRepo.findAll();
        Iterator<Reviewer> revsIterator = revs.iterator();
        mv.addObject("paper", paper);
        mv.addObject("revs", revsIterator);
        if(allotted_reviewer!=null)
        {
            Reviewer current = reviewerRepo.findByName(allotted_reviewer);
            comment.setReferenceid(Long.getLong(ref_id));
            comment.setReviewerid(current.getRev_id());
            comment_repo.save(comment);
        }
        return mv;
    }

    @RequestMapping("/reviewer_add_comments")
    public ModelAndView reviewer_add_comments(HttpSession session){
        return new ModelAndView("reviewer_add_comments.jsp");
    }

    @RequestMapping("/reviewer_edit_comments")
    public ModelAndView reviewer_edit_comments(HttpSession session){
        return new ModelAndView("reviewer_edit_comments.jsp");
    }

    @RequestMapping("/profile")
    public ModelAndView profile(HttpSession session){
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
        if (st.getUser_type().equalsIgnoreCase("Student"))
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
            Student student=p.getStudent();
            if(student!=null && student.getEmail().equals(st.getEmail()))
            {   
                student_papers.add(p);
            }
        }
        mv.addObject("papers", student_papers);
        return mv;
    }
    @RequestMapping("publisher_dashboard") //editor
    public ModelAndView publisher_login(HttpSession session)
    {
        ModelAndView mv = new ModelAndView("status.jsp");
        Iterable<Paper> paper= paper_repo.findAll();
        Iterator<Paper> paperIterator = paper.iterator();
        ArrayList<Paper> student_papers = new ArrayList<Paper>();
        String s = (String)session.getAttribute("user_email");
        System.out.println(s);
        Editor user = editor_repo.findByEmail(s);
        System.out.println(user.getName());
        while(paperIterator.hasNext())
        {
            Paper p = paperIterator.next();
            
            if(p.getStatus()==5 && p.getEditor().getName().equalsIgnoreCase(user.getName()))
            {   
                student_papers.add(p);
            }

        }
        mv.addObject("papers", student_papers);
        mv.addObject("editor", user);
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
        String r=(String)session.getAttribute("user_email");

        //Login st=login_repo.findById(r).orElse(new Login());
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