package com.yinliang.ects.struts.action;

import javax.servlet.http.HttpSession;


import org.apache.struts2.ServletActionContext;
import org.hibernate.Hibernate;

import com.yinliang.ects.dao.impl.CountryDaoImpl;
import com.yinliang.ects.dao.impl.ProvinceDaoImpl;
import com.yinliang.ects.dao.impl.UserDaoImpl;
import com.yinliang.ects.entity.Cart;
import com.yinliang.ects.entity.Contcatinfo;
import com.yinliang.ects.entity.Country;
import com.yinliang.ects.entity.Province;
import com.yinliang.ects.entity.User;
import com.yinliang.ects.exception.ManagerUserException;
import javax.servlet.http.HttpServletRequest;


public class UserAction {
	HttpServletRequest request=ServletActionContext.getRequest();
	
	public String login(){
		String message = null;

		String loginName = request.getParameter("loginname");
		String longinPassword = request.getParameter("loginpassword");
		System.out.println("loginName = " + loginName + " longinPassword = "
				+ longinPassword);
		User user = null;
		UserDaoImpl userDaoImpl = new UserDaoImpl();
		try {
			user = userDaoImpl.login(loginName, longinPassword);
		} catch (ManagerUserException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// forward = mapping.findForward("success");
		HttpSession session = request.getSession();
		if (user == null) {
			message = "�û��������벻��ȷ,����������.";
			request.setAttribute("message", message);
			return "failed";
		} else {
			// System.out.println(user);
			message = "���ѳɹ���½.";
			Hibernate.initialize(user.getContcatinfo().getCountry());
			Hibernate.initialize(user.getContcatinfo().getProvince());
			Cart cart = new Cart();
			cart.setUser(user);
			session.setAttribute("cart", cart);
			session.setAttribute("user", user);
			
			request.setAttribute("message", message);
			return "succeed";
		}
		
	
	}
	
	
	
	
	
	
	public String logout() {
		System.out.println("UserAction--logout");
		String message = null;

		try {
			HttpSession session = request.getSession();
			session.removeAttribute("user");
			message = "ע���ɹ�!";
			request.setAttribute("message", message);
			return "succeed";
		} catch (Exception e) {
			message="ע��ʧ��";
			request.setAttribute("message", message);
			return "failed";
		}
		
	}

	public String register() {
		System.out.println("UserAction--register");
		String message = null;

		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String cellPhone = request.getParameter("cellPhone");
		String country = request.getParameter("country");
		String province = request.getParameter("province");
		String city = request.getParameter("city");
		String homePhone = request.getParameter("homePhone");
		String officePhone = request.getParameter("officePhone");

		System.out.println("name = " + name + ", password = " + password
				+ ", email = " + email + ", cellPhone = " + cellPhone
				+ ", country = " + country + ", province = " + province
				+ ", city = " + city + ", homePhone = " + homePhone
				+ ", officePhone = " + officePhone);

		if (name.length() == 0 || password.length() == 0 || email.length() == 0) {
			message = "������д������û����д,������ע��";
			request.setAttribute("message", message);
			return "failed";

		}

		CountryDaoImpl countryDaoImpl = new CountryDaoImpl();
		ProvinceDaoImpl provinceDaoImpl = new ProvinceDaoImpl();

		User user = new User();
		user.setName(name);
		user.setPassword(password);

		Contcatinfo contcatinfo = new Contcatinfo();
		contcatinfo.setCellPhone(cellPhone);
		contcatinfo.setCity(city);
		contcatinfo.setCountry(countryDaoImpl.findById(Integer
				.parseInt(country)));
		contcatinfo.setEmail(email);
		contcatinfo.setHomePhone(homePhone);
		contcatinfo.setOfficePhone(officePhone);

		user.setContcatinfo(contcatinfo);
		contcatinfo.setUser(user);

		UserDaoImpl userDaoImpl = new UserDaoImpl();

		try {
			userDaoImpl.add(user);
			message = "ע��ɹ�!";
			request.setAttribute("message", message);
			return "succeed";

		} catch (Exception e) {
			message = "ע��ʧ��!";
			request.setAttribute("message", message);
			return "failed";
		}

	}

	public String alter() {
		System.out.println("UserAction--alter");
		String message = null;

		int userId = Integer.parseInt(request.getParameter("userId"));
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String cellPhone = request.getParameter("cellPhone");
		String countryId = request.getParameter("country");
		String provinceId = request.getParameter("province");
		String city = request.getParameter("city");
		String homePhone = request.getParameter("homePhone");
		String officePhone = request.getParameter("officePhone");
		Contcatinfo contcatinfo = new Contcatinfo();
		User user = new User();
		Country country = new Country();
		Province province = new Province();

		country.setCountryId(Integer.parseInt(countryId));
		province.setProvinceId(Integer.parseInt(provinceId));

		contcatinfo.setCellPhone(cellPhone);
		contcatinfo.setCity(city);
		contcatinfo.setCountry(country);
		contcatinfo.setEmail(email);
		contcatinfo.setHomePhone(homePhone);
		contcatinfo.setOfficePhone(officePhone);
		contcatinfo.setContcatinfoId(userId); // ������,�ᱨ��,�����ڸ���ʱ�������ôӱ������
		contcatinfo.setProvince(province);

		user.setUserId(userId);
		user.setName(name);
		user.setPassword(password);

		user.setContcatinfo(contcatinfo);
		contcatinfo.setUser(user);

		UserDaoImpl userDaoImpl = new UserDaoImpl();
		try {
			userDaoImpl.update(user);

			HttpSession session = request.getSession();
			session.removeAttribute("user");
			session.removeAttribute("cart");
			session.invalidate();

			message = "���³ɹ�,Ϊ�˱��������˻���ȫ,�����µ�¼.";
			request.setAttribute("message", message);
			return "succeed";
		} catch (ManagerUserException e) {
			message = "����ʧ��!";
			request.setAttribute("message", message);
			return "failed";
		}

	}
}
