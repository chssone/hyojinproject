package car.servlet.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import car.servlet.handler.HandlerAdapter;

public interface Controller {
	public HandlerAdapter execute(HttpServletRequest request, HttpServletResponse response);
}
