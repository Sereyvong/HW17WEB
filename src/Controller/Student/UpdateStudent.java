package Controller.Student;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Student;
import model.StudentDAO;
import Controller.Action;
import Controller.ActionForward;

public final class UpdateStudent implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req,
			HttpServletResponse resp) throws Exception {
		Student stu = new Student();
		stu.setId(req.getParameter("code"));
		stu.setName(req.getParameter("name"));
		stu.setGender(Integer.parseInt(req.getParameter("gender")));
		stu.setUniversity(req.getParameter("university"));
		stu.setClassroom(req.getParameter("classes"));
		stu.setStatus(Integer.parseInt(req.getParameter("status")));
		
		if(new StudentDAO().updateStudent(stu)){
			//System.out.println("INSERT SUCCESS");
			resp.getWriter().write("success");
		
		}else{
			//System.err.println("INSERT FAIL");
			resp.getWriter().write("fail");
		}
		return null;
	}

}
