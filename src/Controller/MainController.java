package Controller;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.Student.AddStudent;
import Controller.Student.DeleteStudent;
import Controller.Student.SelectStudent;
import Controller.Student.StatusStudent;
import Controller.Student.UpdateStudent;

@WebServlet("*.act")
public class MainController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	public MainController(){
		super();
	}
	protected void doGet(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException{
		process(req,resp);
	}	
	protected void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException{
		process(req,resp);
	}
	protected void process(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException{
		
		String requestURI = req.getRequestURI();		
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		
		//System.out.println(requestURI);
		
		ActionForward forward = null;
		Action action = null;
		
		switch(command){
			case "/addstudent.act":
				action = new AddStudent();
				try {
					forward = action.execute(req, resp);
				} catch (Exception e) {
					e.printStackTrace();
				}				
				break; 
			case "/slectStudent.act":
				action = new SelectStudent();
				try {
					forward = action.execute(req, resp);
				} catch (Exception e) {
					e.printStackTrace();
				}	
				break; 
			case "/deletestudent.act":
				action = new DeleteStudent();
				try {
					forward = action.execute(req, resp);
				} catch (Exception e) {
					e.printStackTrace();
				}			
				break;
			case "/updatestudent.act":
				action = new UpdateStudent();
				try {
					forward = action.execute(req, resp);
				} catch (Exception e) {
					e.printStackTrace();
				}			
				break;
			case "/statusstudent.act":
				action = new StatusStudent();
				try {
					forward = action.execute(req, resp);
				} catch (Exception e) {
					e.printStackTrace();
				}			
				break;
		}
		if (forward != null) {
			if (forward.isRedirect()) {
				resp.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = req
						.getRequestDispatcher(forward.getPath());
				dispatcher.forward(req, resp);
			}

		}
			
		
	}
	
}
