package car.payment.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import car.payment.dao.PaymentDAO;
import car.payment.dto.PaymentDTO;
import car.servlet.control.Controller;
import car.servlet.handler.HandlerAdapter;

public class PaymentSelectController implements Controller {
	private static Log log = LogFactory.getLog(PaymentSelectController.class);
	@Override
	public HandlerAdapter execute(HttpServletRequest request, HttpServletResponse response) {
		PaymentDAO paymentDao = new PaymentDAO();
		PaymentDTO paymentDTO = new PaymentDTO();
		log.info(paymentDTO);
		ArrayList<PaymentDTO> arrayList = new ArrayList<PaymentDTO>();
		
		arrayList = paymentDao.paymentSelectAll();
		request.setAttribute("arrayList", arrayList);
		HandlerAdapter paymentHandlerAdapter = new HandlerAdapter();
		
		paymentHandlerAdapter.setPath("WEB-INF/view/payment/payment_select_view.jsp");
		return paymentHandlerAdapter;
	}
}