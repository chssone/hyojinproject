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

public class CouponInsertController implements CouponController{
	private static Log log = LogFactory.getLog(CouponInsertController.class);
	@Override
	public CouponHandlerAdapter execute(HttpServletRequest request, HttpServletResponse response) {
		
		int coupon_code = Integer.parseInt(request.getParameter("coupon_code"));
		String coupon_type = request.getParameter("coupon_type");
		String coupon_name = request.getParameter("coupon_name");
		int coupon_price = Integer.parseInt(request.getParameter("coupon_price"));
		String coupon_use = request.getParameter("coupon_use");
		
		CouponDAO couponDao = new CouponDAO();
		CouponDTO	couponDTO = new CouponDTO();
		ArrayList<CouponDTO> arrayList = new ArrayList<CouponDTO>();
		
		arrayList = couponDao.couponSelectAll();
		log.info("얼레이리스트 - " + arrayList);
		request.setAttribute("arrayList", arrayList);
		
		couponDTO.setCoupon_code(coupon_code);
		couponDTO.setCoupon_type(coupon_type);
		couponDTO.setCoupon_name(coupon_name);
		couponDTO.setCoupon_price(coupon_price);
		couponDTO.setCoupon_use(coupon_use);
		
		couponDTO = couponDao.couponInsert(couponDTO);
		log.info("디티오 - " + couponDTO);
		request.setAttribute("couponDTO", couponDTO);
		log.info("쿠폰 정보 등록");
		CouponHandlerAdapter couponHandlerAdapter = new CouponHandlerAdapter();
		
		couponHandlerAdapter.setPath("WEB-INF/coupon/coupon_insert_view.jsp");
		
		return couponHandlerAdapter;
	}
}