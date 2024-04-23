package car.payment.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import car.payment.dao.PaymentDAO;
import car.payment.dto.PaymentDTO;
import car.servlet.control.Controller;
import car.servlet.handler.HandlerAdapter;

public class PaymentDeleteController implements Controller{
	private static Log log = LogFactory.getLog(PaymentDeleteController.class);
	@Override
	public HandlerAdapter execute(HttpServletRequest request, HttpServletResponse response) {
		int payment_code = Integer.parseInt(request.getParameter("payment_code"));
		log.info(payment_code);
		PaymentDAO paymentDao = new PaymentDAO( );
		PaymentDTO paymentDTO = new PaymentDTO( );
		
		paymentDTO.setPayment_code(payment_code);
		
		request.setAttribute("paymentDTO", paymentDTO);
		
		paymentDTO = paymentDao.paymentDelete(payment_code);
		log.info(paymentDTO);
		HandlerAdapter paymentHandlerAdapter = new HandlerAdapter();
		
		paymentHandlerAdapter.setPath("/WEB-INF/view/payment/payment_delete_view.jsp");
		return paymentHandlerAdapter;
	}
}