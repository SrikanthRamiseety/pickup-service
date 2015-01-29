package com.spaneos.ips.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spaneos.ips.Dao.IpsServiceImp;
import com.spaneos.ips.pojo.Address;
import com.spaneos.ips.pojo.Pickup;
import com.spaneos.ips.pojo.User;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/users/*")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public UserServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	IpsServiceImp ips = new IpsServiceImp();

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String uri = req.getRequestURI();
		if (uri.endsWith("users")) {
			String firstname = req.getParameter("firstname");
			String lastname = req.getParameter("lastname");
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			String street = req.getParameter("street");
			String state = req.getParameter("state");
			String city = req.getParameter("city");
			String pincode = req.getParameter("pincode");
			String mobile = req.getParameter("mobile");
			User user = new User();
			user.setFirstname(firstname);
			user.setLastname(lastname);
			user.setEmail(email);
			user.setPassword(password);
			Address add = new Address();
			add.setCity(city);
			add.setStreet(street);
			add.setState(state);
			add.setPincode(pincode);
			add.setMobile(mobile);
			user.setAddress(add);
			if (ips.AddContact(user)) {
				
				ServletContext context =req.getServletContext();
				context.setAttribute("user",user);
				resp.sendRedirect("../login.jsp");
				
			} else {
				resp.sendRedirect("../error.jsp");
			}
		} else if (uri.endsWith("login")) {
			User user = ips.getUser(req.getParameter("email"));
			String password = req.getParameter("pwd");
			if (user.getPassword().equalsIgnoreCase(password)) {
				ServletContext context = req.getServletContext();
				context.setAttribute("userlist", user);
				resp.sendRedirect("../pakage.jsp");
			} else {
				String message = "Email or password invalid please enter the valid Email or password";
				ServletContext context1 = req.getServletContext();
				context1.setAttribute("message", message);
				resp.sendRedirect("../login.jsp");
			}
		} else if (uri.endsWith("conform")) {
			String packagetype = req.getParameter("packagetype");
			System.out.println(packagetype);
			String time = req.getParameter("time");
			String gm=req.getParameter("gm");
			int weight = Integer.parseInt(req.getParameter("weight"));
			String date = req.getParameter("date");
		
			Pickup pickup = new Pickup();
			pickup.setGm(gm);
			
			pickup.setWeight(weight);
			pickup.setTime(time);
			pickup.setDate(date);
			pickup.setPackagetype(packagetype);
			pickup.setAmount(weight * 8.9);
			pickup.setTax(weight*9);
			pickup.setTotalamount(pickup.getAmount() + pickup.getTax());
			if (ips.addpickup(pickup)) {
				ServletContext context2 =req.getServletContext();
				context2.setAttribute("pickup", pickup);
				 resp.sendRedirect("../conform.jsp");
			}
		
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
