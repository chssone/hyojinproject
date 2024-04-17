package car.coupon.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import car.coupon.control.CouponController;
import car.coupon.dao.CouponDAO;
import car.coupon.dto.CouponDTO;
import car.coupon.handler.CouponHandlerAdapter;

public class CouponDeleteController implements CouponController{
	private static Log log = LogFactory.getLog(CouponDeleteController.class);
	@Override
	public CouponHandlerAdapter execute(HttpServletRequest request, HttpServletResponse response) {
		int coupon_code = Integer.parseInt(request.getParameter("coupon_code"));
		log.info(coupon_code);
		CouponDAO couponDao = new CouponDAO( );
		CouponDTO couponDTO = new CouponDTO( );
		
		couponDTO.setCoupon_code(coupon_code);
		
		request.setAttribute("couponDTO", couponDTO);
		
		couponDTO = couponDao.couponDelete(coupon_code);
		log.info(couponDTO);
		CouponHandlerAdapter couponHandlerAdapter = new CouponHandlerAdapter();
		
		couponHandlerAdapter.setPath("/WEB-INF/coupon/coupon_delete_view.jsp");
		return couponHandlerAdapter;
	}
}