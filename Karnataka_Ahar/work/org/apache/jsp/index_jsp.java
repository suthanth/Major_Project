/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.68
 * Generated at: 2017-01-29 15:55:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
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

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <title>Karnataka Ahar</title>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/>\n");
      out.write("    <meta name=\"description\" content=\"Expand, contract, animate forms with jQuery wihtout leaving the page\" />\n");
      out.write("    <meta name=\"keywords\" content=\"expand, form, css3, jquery, animate, width, height, adapt, unobtrusive javascript\"/>\n");
      out.write("\t<link rel=\"shortcut icon\" href=\"../favicon.ico\" type=\"image/x-icon\"/>\n");
      out.write("    <link type=\"text/css\" rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath() );
      out.write("/css/bootstrap.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(request.getContextPath() );
      out.write("/css/style.css\" />\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t <head>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\t\t<div id=\"loading\"><center><img src=\"");
      out.print(request.getContextPath() );
      out.write("/images/loading.gif\"></img></center></div>\n");
      out.write("   \t\t<div class=\"wrapperLogin\">\n");
      out.write("\t\t\t<h1>Karnataka Ahar</h1>\n");
      out.write("\t\t\t<h2><span>SIT </span> Tumkur</h2>\n");
      out.write("\t\t\t<div class=\"content\">\n");
      out.write("\t\t\t\t<div id=\"form_wrapper\" class=\"form_wrapper\">\t\t\t\n");
      out.write("\t\t\t\t\t<form class=\"login active\">\n");
      out.write("\t\t\t\t\t\t<h3>Login</h3>\n");
      out.write("\t\t\t\t\t\t<div>\n");
      out.write("\t\t\t\t\t\t\t<label>Username:</label>\n");
      out.write("\t\t\t\t\t\t\t<input id=\"userID\" type=\"text\" />\n");
      out.write("\t\t\t\t\t\t\t<span class=\"error\">This is an error</span>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div>\n");
      out.write("\t\t\t\t\t\t\t<label>Password: </label>\n");
      out.write("\t\t\t\t\t\t\t<input id=\"password\" type=\"password\" />\n");
      out.write("\t\t\t\t\t\t\t<span class=\"error\">This is an error</span>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"bottom\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"remember\"><input type=\"checkbox\" /><span><a href=\"userhome.action\">Ware House</a></span></div>\n");
      out.write("\t\t\t\t\t\t\t<input id=\"login\" type=\"button\" value=\"Login\"></input>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"clear\"></div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"clear\"></div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t    <script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath() );
      out.write("/javascript/plugins/jquery-1.10.1.min.js\"></script>\r\n");
      out.write("\t    <script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath() );
      out.write("/javascript/plugins/bootstrap.min.js\"></script>\r\n");
      out.write("\t    <script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath() );
      out.write("/javascript/plugins/sha3.js\"></script>\n");
      out.write("\t    <script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath() );
      out.write("/javascript/login.js\"></script>\n");
      out.write("\t    <script type=\"text/javascript\">\n");
      out.write("\t\t\tvar _contextPath = \"");
      out.print(request.getContextPath() );
      out.write("\";\n");
      out.write("\t\t</script>\n");
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
