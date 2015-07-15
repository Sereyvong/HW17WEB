package Controller.Student;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.StudentDAO;
import Controller.Action;
import Controller.ActionForward;

public class StatusStudent implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req,
			HttpServletResponse resp) throws Exception {
		if(new StudentDAO().statusStudent(req.getParameter("code"), Integer.parseInt(req.getParameter("status")))){
			//System.out.println("INSERT SUCCESS");
			resp.getWriter().write("success");
		
		}else{
			//System.err.println("INSERT FAIL");
			resp.getWriter().write("fail");
		}
		
		return null;
	}

}
