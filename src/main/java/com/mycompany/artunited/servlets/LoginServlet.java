
package com.mycompany.artunited.servlets;


import com.mycompany.artunited.dao.UserDao;
import com.mycompany.artunited.entities.User;
import com.mycompany.artunited.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           String email=request.getParameter("email");
           String password=request.getParameter("password");
           
           
           //validation
           if(email.isEmpty()){
                    out.println("*This Feild is required");
                    return;
                }
                if(password.isEmpty()){
                    out.println("*This Feild is required");
                    return;
                }
                
                
                //Authentication
                
               UserDao userdao=new UserDao(FactoryProvider.getFactory());
                User user= userdao.getUserByEmailAndPassword(email,password);
               // System.out.println(user);
                HttpSession httpSession=request.getSession();
                if(user==null){
                    //sout.println("<hl>Invalid User</h1>");
                   httpSession.setAttribute("message","Invalid details");
                   response.sendRedirect("login.jsp");
                    return;
        }
                else{
                   out.println("<hl>Welcome!"+user.getUserName()+"</h1>");
                     
                   
                   httpSession.setAttribute("current-user",user);
                 if(user.getUserType().equals("admin")){
                      response.sendRedirect("admin.jsp"); 
                   }
                 else if(user.getUserType().equals("normal")){
                     response.sendRedirect("normal.jsp"); 
                   }
                 else{
                     out.println("We have not identified UserType");
                }
                     
                }
                    
    }

   

}
}
