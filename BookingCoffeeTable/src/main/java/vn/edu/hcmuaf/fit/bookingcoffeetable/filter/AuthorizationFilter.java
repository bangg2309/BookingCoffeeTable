package vn.edu.hcmuaf.fit.bookingcoffeetable.filter;

import vn.edu.hcmuaf.fit.bookingcoffeetable.bean.User;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AuthorizationFilter implements Filter {
    private ServletContext context;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.context = filterConfig.getServletContext();
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletResponse rp = (HttpServletResponse) response;
        HttpServletRequest rq = (HttpServletRequest) request;
        String uri = rq.getRequestURI();
        if (uri.startsWith("/admin")) {
            User user = (User) rq.getSession().getAttribute("userSession");
            if (user != null) {
                if (user.getRoleId() == 2) {
                    chain.doFilter(request, response);
                } else if (user.getRoleId() == 1) {
                    rp.sendRedirect(rq.getContextPath() + "/login");
                }
            } else {
                rp.sendRedirect(rq.getContextPath() + "/login");
            }
        } else {
            chain.doFilter(request, response);
        }
    }

    @Override
    public void destroy() {

    }
}
