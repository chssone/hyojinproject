package car.coupon.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import car.coupon.control.CouponController;
import car.coupon.dao.CouponDAO;
import car.coupon.dto.CouponDTO;
import car.coupon.handler.CouponHandlerAdapter;

public class CouponSelectController implements CouponController {
	private static Log log = LogFactory.getLog(CouponSelectController.class);
	@Override
	public CouponHandlerAdapter execute(HttpServletRequest request, HttpServletResponse response) {
		CouponDAO couponDao = new CouponDAO();
		CouponDTO couponDTO = new CouponDTO();
		log.info(couponDTO);
		ArrayList<CouponDTO> arrayList = new ArrayList<CouponDTO>();
		
		arrayList = couponDao.couponSelectAll();
		log.info(arrayList);
		request.setAttribute("arrayList", arrayList);
		CouponHandlerAdapter couponHandlerAdapter = new CouponHandlerAdapter();
		log.info("쿠폰 정보 조회");
		
		couponHandlerAdapter.setPath("WEB-INF/coupon/coupon_select_view.jsp");
		return couponHandlerAdapter;
	}
}