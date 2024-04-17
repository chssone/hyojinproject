package car.coupon.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import car.coupon.control.CouponController;
import car.coupon.controller.CouponDeleteController;
import car.coupon.controller.CouponInsertController;
import car.coupon.controller.CouponSelectController;
import car.coupon.controller.CouponSelectDetailController;
import car.coupon.controller.CouponUpdateController;
import car.coupon.controller.CouponUpdateViewController;
import car.coupon.handler.CouponHandlerAdapter;


@WebServlet("/CouponDispatcherServlet")
public class CouponDispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Log log = LogFactory.getLog(CouponDispatcherServlet.class);
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		service(request, response);		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	service(request, response);		
	}
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		
		String contextPath = request.getContextPath();
		
		String pathURL = requestURI.substring(contextPath.length());
		log.info("매핑명 조회 - " + pathURL);
		
		CouponHandlerAdapter couponHandlerAdapter = null;
		
		CouponController controller = null;
		
		if (pathURL.equals("/CouponSelect.jo")) {
			
			controller = new CouponSelectController();
			
			couponHandlerAdapter = controller.execute(request, response);
			log.info("쿠폰 조회 확인 - " + couponHandlerAdapter);
		} 
		
		else if (pathURL.equals("/CouponSelectDetail.jo")) {
			
			controller = new CouponSelectDetailController();
			
			couponHandlerAdapter = controller.execute(request, response);
			log.info("상세 쿠폰 조회 확인 - " + couponHandlerAdapter);
		}
		
		else if (pathURL.equals("/CouponInsertView.jo")) {
			
			couponHandlerAdapter = new CouponHandlerAdapter();			
			couponHandlerAdapter.setPath("/WEB-INF/coupon/coupon_insert.jsp");
			log.info("쿠폰 등록 화면 뷰 확인 - " + couponHandlerAdapter);
		}
		
		else if (pathURL.equals("/CouponInsert.jo")) {
			
			controller = new CouponInsertController();
			couponHandlerAdapter = controller.execute(request, response);
			log.info("쿠폰 등록 확인 - " + couponHandlerAdapter);			
		}
		
		else if(pathURL.equals("/CouponUpdateView.jo")) {
			controller = new CouponUpdateViewController( );
			couponHandlerAdapter = controller.execute(request, response);
			log.info("쿠폰 수정 화면 뷰 확인 - " + couponHandlerAdapter);
		}
		
		else if(pathURL.equals("/CouponUpdate.jo")) {
			controller = new CouponUpdateController( );
			couponHandlerAdapter = controller.execute(request, response);
			log.info("쿠폰 수정 확인 - " + couponHandlerAdapter);
		}
		
		else if(pathURL.equals("/CouponDeleteView.jo")) {
		
			couponHandlerAdapter = new CouponHandlerAdapter( );
		
			couponHandlerAdapter.setPath("/WEB-INF/coupon/coupon_delete.jsp");
			log.info("쿠폰 삭제 화면 뷰 확인 - " + couponHandlerAdapter);
			}

		else if(pathURL.equals("/CouponDelete.jo")) {
			controller = new CouponDeleteController( );
			couponHandlerAdapter = controller.execute(request, response);
			log.info("쿠폰 삭제 확인 - " + couponHandlerAdapter);
		}

		if(couponHandlerAdapter != null) {	
		if (couponHandlerAdapter.isRedirect()) {
			response.sendRedirect(couponHandlerAdapter.getPath());
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher(couponHandlerAdapter.getPath( ));
			dispatcher.forward(request, response);
	  }
	}
  }
}