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
		
		
		ActionForward forward = null;
		Action action = null;
		
		switch(command){
			case "/addstudent.act": // add student action
				action = new AddStudent(); // create add student Controller
				try {
					forward = action.execute(req, resp);
				} catch (Exception e) {
					e.printStackTrace();
				}				
				break; 
			case "/slectStudent.act": // select student action
				action = new SelectStudent(); // create select student Controller
				try {
					forward = action.execute(req, resp);
				} catch (Exception e) {
					e.printStackTrace();
				}	
				break; 
			case "/deletestudent.act": // delete student action
				action = new DeleteStudent();// create delete student Controller
				try {
					forward = action.execute(req, resp);
				} catch (Exception e) {
					e.printStackTrace();
				}			
				break;
			case "/updatestudent.act": // update student
				action = new UpdateStudent();// create update info student Controller
				try {
					forward = action.execute(req, resp);
				} catch (Exception e) {
					e.printStackTrace();
				}			
				break;
			case "/statusstudent.act": // update status student
				action = new StatusStudent(); // create status student Controller
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
