package car.payment.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import car.payment.handler.PaymentHandlerAdapter;

public interface Controller {
	public PaymentHandlerAdapter execute(HttpServletRequest request, HttpServletResponse response);
}
