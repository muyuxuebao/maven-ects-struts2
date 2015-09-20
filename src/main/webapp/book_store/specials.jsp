<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD Xjsp 1.0 Transitional//EN" "http://www.w3.org/TR/xjsp1/DTD/xjsp1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/jsp; charset=utf-8" />
<title>Book Store</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/book_store/style.css" />

</head>
<body>
<div id="wrap">

       <div class="header">
       		<div class="logo"><a href="index.jsp"><img src="${pageContext.request.contextPath}/book_store/images/logo.gif" alt="" title="" border="0" /></a></div>            
         <div id="menu">
           <ul>                                                                       
            <li class="selected"><a href="${pageContext.request.contextPath}/book_store/index.jsp">��ҳ </a></li>
            <li><a href="${pageContext.request.contextPath}/book_store/about.jsp">��������</a></li>
              <li><a href="${pageContext.request.contextPath}/FildAllProductServlet.action">���</a></li>
            <li><a href="${pageContext.request.contextPath}/book_store/specials.jsp">�ر��鼮</a></li>
            <li><a href="${pageContext.request.contextPath}/book_store/myaccount.jsp">�ҵ��˻�</a></li>
            <li><a href="${pageContext.request.contextPath}/book_store/register.jsp">ע��</a></li>
              <li><a href="${pageContext.request.contextPath}/book_store/items.jsp">����</a></li>
            <li><a href="${pageContext.request.contextPath}/book_store/contact.jsp">��ϵ</a></li>
            </ul>
        </div>     
       
       
      <div class="center_content">
       	<div class="left_content">
        	
            <div class="title"><span class="title_icon"><img src="${pageContext.request.contextPath}/book_store/images/bullet1.gif" alt="" title="" /></span>�ؿ�</div>
        
        	<div class="feat_prod_box">
            
            	<div class="prod_img"><a href="${pageContext.request.contextPath}/FindProductDetails.action?productId=${sessionScope.specials_product1.productId}"><img src="${pageContext.request.contextPath}/book_store/${sessionScope.specials_product1.images}" alt="" title="" border="0" /></a></div>
                
                <div class="prod_det_box">
                	<span class="special_icon"><img src="${pageContext.request.contextPath}/book_store/images/special_icon.gif" alt="" title="" /></span>
                	<div class="box_top"></div>
                    <div class="box_center">
                    <div class="prod_title">${specials_product1.name}</div>
                    <p class="details">${specials_product1.descriptions}</p>
                    <a href="${pageContext.request.contextPath}/FindProductDetails.action?productId=${sessionScope.specials_product1.productId}" class="more">- ����ϸ�� -</a>
                    <div class="clear"></div>
                    </div>
                    
                    <div class="box_bottom"></div>
                </div>    
            <div class="clear"></div>
            </div>	
            
            
        	<div class="feat_prod_box">
            
            	<div class="prod_img"><a href="${pageContext.request.contextPath}/FindProductDetails.action?productId=${sessionScope.specials_product2.productId}"><img src="${pageContext.request.contextPath}/book_store/${sessionScope.specials_product2.images}" alt="" title="" border="0" /></a></div>
                
                <div class="prod_det_box">
                	<span class="special_icon"><img src="${pageContext.request.contextPath}/book_store/images/special_icon.gif" alt="" title="" /></span>
                	<div class="box_top"></div>
                    <div class="box_center">
                    <div class="prod_title">${specials_product2.name}</div>
                    <p class="details">${specials_product2.descriptions}</p>
                    <a href="${pageContext.request.contextPath}/FindProductDetails.action?productId=${sessionScope.specials_product2.productId}" class="more">- ����ϸ�� -</a>
                    <div class="clear"></div>
                    </div>
                    
                    <div class="box_bottom"></div>
                </div>    
            <div class="clear"></div>
            </div>	
            
            
            
        	<div class="feat_prod_box">
            
            	<div class="prod_img"><a href="${pageContext.request.contextPath}/FindProductDetails.action?productId=${sessionScope.specials_product3.productId}"><img src="${pageContext.request.contextPath}/book_store/${sessionScope.specials_product3.images}" alt="" title="" border="0" /></a></div>
                
                <div class="prod_det_box">
                	<span class="special_icon"><img src="${pageContext.request.contextPath}/book_store/images/special_icon.gif" alt="" title="" /></span>
                	<div class="box_top"></div>
                    <div class="box_center">
                    <div class="prod_title">${specials_product3.name}</div>
                    <p class="details">${specials_product3.descriptions}</p>
                    <a href="${pageContext.request.contextPath}/FindProductDetails.action?productId=${sessionScope.specials_product3.productId}" class="more">- ����ϸ�� -</a>
                    <div class="clear"></div>
                    </div>
                    
                    <div class="box_bottom"></div>
                </div>    
            <div class="clear"></div>
            </div>		
            
            
        	<div class="feat_prod_box">
            
            	<div class="prod_img"><a href="${pageContext.request.contextPath}/FindProductDetails.action?productId=${sessionScope.specials_product4.productId}"><img src="${pageContext.request.contextPath}/book_store/${sessionScope.specials_product4.images}" alt="" title="" border="0" /></a></div>
                
                <div class="prod_det_box">
                	<span class="special_icon"><img src="${pageContext.request.contextPath}/book_store/images/special_icon.gif" alt="" title="" /></span>
                	<div class="box_top"></div>
                    <div class="box_center">
                    <div class="prod_title">${specials_product4.name}</div>
                    <p class="details">${specials_product4.descriptions}</p>
                    <a href="${pageContext.request.contextPath}/FindProductDetails.action?productId=${sessionScope.specials_product4.productId}" class="more">- ����ϸ�� -</a>
                    <div class="clear"></div>
                    </div>
                    
                    <div class="box_bottom"></div>
                </div>    
            <div class="clear"></div>
            </div>	          
            
            <div class="pagination">
            <span class="disabled"><<</span><span class="current">1</span><a href="#?page=2">2</a><a href="#?page=3">3</a>��<a href="#?page=199">10</a><a href="#?page=200">11</a><a href="#?page=2">>></a>
            </div>   
                     
            
        <div class="clear"></div>
        </div><!--end of left content-->

        
        <div class="right_content">
        	<div class="languages_box">
            <span class="red">����:</span>
            <a href="#" class="selected"><img src="${pageContext.request.contextPath}/book_store/images/gb.gif" alt="" title="" border="0" /></a>
            <a href="#"><img src="${pageContext.request.contextPath}/book_store/images/fr.gif" alt="" title="" border="0" /></a>
            <a href="#"><img src="${pageContext.request.contextPath}/book_store/images/de.gif" alt="" title="" border="0" /></a>
            </div>
                <div class="currency">
                <span class="red">����: </span>
                <a href="#">GBP</a>
                <a href="#">EUR</a>
                <a href="#" class="selected">USD</a>
                </div>
                
                     <div class="cart">
              <c:if test="${(empty sessionScope.user)}">
	              <form action="${pageContext.request.contextPath}/LoginServlet.action" method="post">
	                 <table>
	                 	<tr>
	                    	<td>�˺�:</td>   <td><input type="text" size="10" name="loginname"></td>
	                        <td>����:</td>    <td><input type="password" size="12" name="loginpassword"></td>
	                        <td><input type="submit" value="�ύ"></td>
	                    </tr>
	                 </table>
	              </form>
              </c:if>
              <c:if test="${!(empty sessionScope.user)}">
              	<table>
               		<tr>
                    	<td>��ӭ${sessionScope.user.name}!!!</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><a href="${pageContext.request.contextPath}/LogoutServlet.action">ע��</a></td>
                    </tr>
                </table>
                <table>
                    <tr>
                    	<td>
                        	<span class="title_icon"><img src="${pageContext.request.contextPath}/book_store/images/cart.gif" alt="" title="" /></span>���ﳵ
                        </td>
                        <td>
                  				${sessionScope.cart.items} x items | <span class="red">TOTAL: ${sessionScope.cart.money}$</span>
                        </td>
                        <td>
                        	<a href="${pageContext.request.contextPath}/book_store/cart.jsp" class="view_cart">���빺�ﳵ</a>
                        </td>
                    </tr>
               </table>
             	
              </c:if>
              
              </div>
            	
        
        
             <div class="title"><span class="title_icon"><img src="${pageContext.request.contextPath}/book_store/images/bullet3.gif" alt="" title="" /></span>��ǽ��� Story</div> 
             <div class="about">
             <p>
             <img src="${pageContext.request.contextPath}/book_store/images/about.gif" alt="" title="" class="right" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���������ȫ�������ۺ����������Ϲ����̳ǣ��ɹ�����������������Ĺ�˾������  ������
�ϻ���������IDG���š�¬ɭ�����ż��š����޴�ҵͶ�ʻ���ԭ�������й���ҵ���𣩹�ͬͶ�ʳ�����
             </p>
             
    </div>
             
        <div class="right_box">
             
             	<div class="title"><span class="title_icon"><img src="${pageContext.request.contextPath}/book_store/images/bullet4.gif" alt="" title="" /></span>����</div> 
                    <div class="new_prod_box">
                        <a href="${pageContext.request.contextPath}/FindProductDetails.action?productId=${sessionScope.all_product1.productId}">${all_product1.name}</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="${pageContext.request.contextPath}/book_store/images/promo_icon.gif" alt="" title="" /></span>
                        <a href="${pageContext.request.contextPath}/FindProductDetails.action?productId=${sessionScope.all_product1.productId}"><img src="${pageContext.request.contextPath}/book_store/${sessionScope.all_product1.images}" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>
                    
                    <div class="new_prod_box">
                        <a href="${pageContext.request.contextPath}/FindProductDetails.action?productId=${sessionScope.all_product2.productId}">${all_product2.name}</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="${pageContext.request.contextPath}/book_store/images/promo_icon.gif" alt="" title="" /></span>
                        <a href="${pageContext.request.contextPath}/FindProductDetails.action?productId=${sessionScope.all_product2.productId}"><img src="${pageContext.request.contextPath}/book_store/${sessionScope.all_product2.images}" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>                   
                    
                    <div class="new_prod_box">
                        <a href="${pageContext.request.contextPath}/FindProductDetails.action?productId=${sessionScope.all_product3.productId}">${all_product3.name}</a>
                        <div class="new_prod_bg">
                        <span class="new_icon"><img src="${pageContext.request.contextPath}/book_store/images/promo_icon.gif" alt="" title="" /></span>
                        <a href="${pageContext.request.contextPath}/FindProductDetails.action?productId=${sessionScope.all_product3.productId}"><img src="${pageContext.request.contextPath}/book_store/${sessionScope.all_product3.images}" alt="" title="" class="thumb" border="0" /></a>
                        </div>           
                    </div>             
             
             </div>
             
          <div class="right_box">
             
             	<div class="title"><span class="title_icon"><img src="${pageContext.request.contextPath}/book_store/images/bullet5.gif" alt="" title="" /></span>���</div> 
                
                <ul class="list">
                <li><a href="#">��վ����</a></li>
                <li><a href="#">���ݿ���</a></li> 
                <li><a href="#">ͼ��ͼ��</a></li>
                <li><a href="#">�������</a></li>
                <li><a href="#">�ִ��칫</a></li>
                <li><a href="#">����ϵͳ</a></li>
                <li><a href="#">������֤</a></li>
                <li><a href="#">���缼��</a></li>
                <li><a href="#">��������</a></li>
                 <li><a href="#">���Կ���</a></li>
                <li><a href="#">��ѧ��Ʒ</a></li>                                              
                </ul>
                
   	         <div class="title"><span class="title_icon"><img src="${pageContext.request.contextPath}/book_store/images/bullet6.gif" alt="" title="" /></span>�ϻ���</div> 
                
                <ul class="list">
                <li><a href="#">����΢��</a></li>
                <li><a href="#">��ѶQQ</a></li>
                <li><a href="#">��������</a></li>
                <li><a href="#">��ѩ��˾</a></li>
                <li><a href="#">������</a></li>
                <li><a href="#">�����̳�</a></li>
                <li><a href="#">�Ĳ����Թ�˾</a></li>
                <li><a href="#">����԰��</a></li>
                <li><a href="#">���۹�湫˾</a></li>                              
                </ul>      
             
             </div> 
             
        
        </div><!--end of right content-->
        
        
       
       
       <div class="clear"></div>
       </div><!--end of center content-->
       
              
       <div class="footer">
       	<div class="left_footer"><img src="${pageContext.request.contextPath}/book_store/images/footer_logo.gif" alt="" title="" /><br /> <a href="http://csscreme.com"><img src="${pageContext.request.contextPath}/book_store/images/csscreme.gif" alt="by csscreme.com" title="by csscreme.com" border="0" /></a></div>
         <div class="right_footer">
        <a href="index.jsp">��ҳ</a><a href="#"></a>
        <a href="about.jsp">��������</a><a href="#"></a>
        <a href="#">����</a>
        <a href="#">˽��Ȩ��</a>
        <a href="#">��ϵ����</a>
       
        </div>
        
       
       </div>
    

</div>

</body>
</html>