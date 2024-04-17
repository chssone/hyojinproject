package car.payment.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import car.payment.control.Controller;
import car.payment.dao.PaymentDAO;
import car.payment.dto.PaymentDTO;
import car.payment.handler.PaymentHandlerAdapter;

public class PaymentUpdateController implements Controller{
	private static Log log = LogFactory.getLog(PaymentUpdateController.class);
	@Override
	public PaymentHandlerAdapter execute(HttpServletRequest request, HttpServletResponse response) {
		int payment_code = Integer.parseInt(request.getParameter("payment_code"));
		log.info(payment_code);
		System.out.println(payment_code);
		PaymentDAO paymentDao = new PaymentDAO();
		PaymentDTO paymentDTO = new PaymentDTO();
		
		paymentDTO = paymentDao.paymentSelect(payment_code);
		
		request.setAttribute("paymentDTO", paymentDTO);
		PaymentHandlerAdapter paymentHandlerAdapter = new PaymentHandlerAdapter();
		log.info("특정 결제 코드번호 조회");
		
		paymentHandlerAdapter.setPath("/WEB-INF/payment/payment_update.jsp");
		return paymentHandlerAdapter;
	}
}