package Controller.Student;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.Student;
import model.StudentDAO;
import Controller.Action;
import Controller.ActionForward;

public class SelectStudent implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req,
			HttpServletResponse resp) throws Exception {
		Student stu = new Student();
		
		stu.setName(req.getParameter("search"));
		stu.setClassroom(req.getParameter("classes"));
		stu.setStatus(Integer.parseInt(req.getParameter("status")));
		
		//System.out.println(req.getParameter("search"));
		
		resp.setContentType("text/plain");
		
		
		resp.setContentType("application/json");
		resp.setCharacterEncoding("UTF-8");
		String student= new Gson().toJson(new StudentDAO().getStudents(stu));
		
		resp.getWriter().write(student);
	
		System.out.println(student);
		return null;	
	}

}
