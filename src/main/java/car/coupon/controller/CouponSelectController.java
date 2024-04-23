package car.coupon.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import car.servlet.control.Controller;
import car.servlet.handler.HandlerAdapter;
import car.coupon.dao.CouponDAO;
import car.coupon.dto.CouponDTO;

public class CouponSelectController implements Controller {
	private static Log log = LogFactory.getLog(CouponSelectController.class);
	@Override
	public HandlerAdapter execute(HttpServletRequest request, HttpServletResponse response) {
		CouponDAO couponDao = new CouponDAO();
		CouponDTO couponDTO = new CouponDTO();
		log.info(couponDTO);
		ArrayList<CouponDTO> arrayList = new ArrayList<CouponDTO>();
		
		arrayList = couponDao.couponSelectAll();
		log.info(arrayList);
		request.setAttribute("arrayList", arrayList);
		HandlerAdapter HandlerAdapter = new HandlerAdapter();
		log.info("쿠폰 정보 조회");
		
		HandlerAdapter.setPath("WEB-INF/view/coupon/coupon_select_view.jsp");
		return HandlerAdapter;
	}
}