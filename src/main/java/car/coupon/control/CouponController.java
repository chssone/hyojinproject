package car.coupon.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import car.coupon.handler.CouponHandlerAdapter;

public interface CouponController {
	public CouponHandlerAdapter execute(HttpServletRequest request, HttpServletResponse response);
}