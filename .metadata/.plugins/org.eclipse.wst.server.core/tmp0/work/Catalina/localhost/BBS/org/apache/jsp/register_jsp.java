/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.95
 * Generated at: 2023-11-28 07:37:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<title>회원가입 페이지</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("	<h2>회원가입 페이지입니다</h2>\n");
      out.write("	<form method = \"post\" action = \"register.jsp\" name = \"registerForm\" onsubmit = \"return validateForm()\">\n");
      out.write("		<p><input type = \"email\" name = \"email\" placeholder = \"이메일\"></p>\n");
      out.write("		<p><input type = \"password\" name = \"password\" placeholder = \"패스워드\"></p>\n");
      out.write("		<p><input type = \"text\" name = \"id\" placeholder = \"아이디\"></p>\n");
      out.write("		<p>남자<input type = \"radio\" name = \"gender\" value = \"male\">\n");
      out.write("		여자<input type = \"radio\" name = \"gender\" value = \"female\"></p> \n");
      out.write("		<p><input type = \"submit\" value = \"회원가입\"></p>\n");
      out.write("	</form>\n");
      out.write("<!-- onclick은 form 태그나 submit 태그에 쓸 수 있음. -->\n");
      out.write("\n");
      out.write("\n");
      out.write("	<script language = \"javascript\">\n");
      out.write("		\n");
      out.write("		function validateForm(){\n");
      out.write("			var userId = document.registerForm.id.value;\n");
      out.write("			var userPassword = document.registerForm.password.value;\n");
      out.write("			var userGender = document.registerForm.gender.value;\n");
      out.write("			var userEmail = document.registerForm.email.value;\n");
      out.write("		\n");
      out.write("			\n");
      out.write("			if (userId.trim() === \"\" || userPassword.trim() === \"\"){\n");
      out.write("				alert(\"아이디와 비밀번호를 입력하세요. \");\n");
      out.write("				return (false); // 폼 제출을 막음 \n");
      out.write("			}\n");
      out.write("				\n");
      out.write("			if (userId.length < 6 || userId.length > 12){\n");
      out.write("				alert(\"아이디를 6~12 이내로 입력해주세요\");\n");
      out.write("				return (false);\n");
      out.write("			}\n");
      out.write("			\n");
      out.write("			if (userPassword.length < 8){\n");
      out.write("				alert(\"비밀번호는 8글자 이상이어야 합니다!\");\n");
      out.write("				return (false);\n");
      out.write("			}\n");
      out.write("			\n");
      out.write("			if (!isNaN(userId.charAt(0))) // isNotNumber - 숫자 아니면 true, 숫자면 false 반환 \n");
      out.write("			{\n");
      out.write("				alert(\"아이디는 숫자로 시작할 수 없습니다!\");\n");
      out.write("				return (false);\n");
      out.write("			}\n");
      out.write("			\n");
      out.write("\n");
      out.write("			return (true); // 필요한 경우 서버로 데이터를 전송하도록 폼을 제출 \n");
      out.write("		}\n");
      out.write("	</script>\n");
      out.write("\n");
      out.write("	");

		String userId = request.getParameter("id");
		String userPassword = request.getParameter("password");
		String userGender = request.getParameter("gender");
		String userEmail = request.getParameter("email");
	
		if (userId != null && userPassword != null && userGender != null && userEmail != null){
			com.example.user.UserDBProcess userDB = new com.example.user.UserDBProcess();
		
			int registerResult = userDB.register(userId, userPassword, userGender, userEmail);
		
		if (registerResult == 1){
			out.println( userId + "님, 회원가입을 축하드립니다!");
		}
		else{
			out.println("회원가입 실패했습니다!");
		}
	}
	
      out.write("\n");
      out.write("	\n");
      out.write("	<p><a href=\"login.jsp\">다시 로그인 화면으로 </a></p>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
