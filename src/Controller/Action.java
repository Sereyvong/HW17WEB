package Controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action { 
	ActionForward execute(HttpServletRequest req,HttpServletResponse resp);
}
