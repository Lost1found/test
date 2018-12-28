package lost_found;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
import java.util.*;
/**
 * Servlet implementation class ValidateImageServlet
 */
@WebServlet("/ValidateImageServlet")
public class ValidateImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValidateImageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//接收请求内容
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out=response.getWriter();
		String picString = (String) request.getSession().getAttribute("piccode");
		String checkCode = request.getParameter("verifyCode");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String type=request.getParameter("type");
		String mrem=request.getParameter("remember");
		//定义变量，如果用户合法，则将此标记变为true
		boolean flag=false;
		//定义数据库操作的常量以及对象
		 String driverName="com.mysql.jdbc.Driver";
		 try{
			 Class.forName(driverName);
		 }catch(ClassNotFoundException e){
			 e.printStackTrace();
		 }
		 String url="jdbc:mysql://127.0.0.1/java?user=root&password=6504a.&characterEncoding=utf-8&serverTimezone=UTC";
		 List<User> users=new ArrayList<User>();
		 try{
			    Connection con=DriverManager.getConnection(url);
			    Statement statement=con.createStatement();	  
		    	String sql="select userName,passWord,flag from users";
		    	ResultSet rs=statement.executeQuery(sql);
		    	while(rs.next()){
		    		User user=new User();
		    		user.setmUserName(rs.getString(1));
		    		user.setmPassWord(rs.getString(2));
		    		user.setMark(rs.getString(3));
		    		users.add(user);
		    	}
		    	rs.close();
		        con.close();
		    }catch(SQLException e){
		    	e.printStackTrace();
		    }  
		if("".equals(picString)||picString==null){
			out.print("<script>alert('请输入验证码');window.location.href('login.jsp')</script>"); 
		}else{
			if(!(picString.toUpperCase().equals(checkCode.toUpperCase()))){  
	            out.print("<script>alert('验证码不正确,请重新输入');history.back(-1);</script>");  
	        }else{  
	            //验证码验证成功 开始验证用户身份
                if("admin".equals(type)){
					if(username!=null&&password!=null) {
						User a1=new User(username,password);
						for(User u:users) {
							if("1".equals(u.getMark())&&u.getmUserName().equals(a1.getmUserName())&&u.getmPassWord().equals(a1.getmPassWord())) {
								flag=true;
								request.getRequestDispatcher("/main.jsp").forward(request,response);
							}else {
								out.print("<script>alert('用户名不存在或密码错误！');window.location.href='login.jsp'</script>");
							}
						}
					}
				 }
				if("student".equals(type)){
					if(username!=null&&password!=null){
				    	User u1=new User(username,password);
				    	for(User u:users){
				    		if("0".equals(u.getMark())&&u.getmUserName().equals(u1.getmUserName())&&u.getmPassWord().equals(u1.getmPassWord())){
				    			flag=true;
				    			HttpSession session=request.getSession();
				    			session.setAttribute("username", username);
				    			response.sendRedirect("main.jsp");
				    			return;
				    		}else{
				    			out.print("<script>alert('用户名不存在或密码错误！');window.location.href='login.jsp'</script>");
				    		 }
				    	}
				}

                if("".equals(type)){//非法用户
					out.print("<script>alert('fail！');window.location.href='login.jsp'</script>");
				}   
		}		
	}
		}
  }
}

