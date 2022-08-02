
package com.mycompany.artunited.servlets;

import com.mycompany.artunited.dao.CategoryDao;
import com.mycompany.artunited.dao.ProductDao;
import com.mycompany.artunited.entities.Category;
import com.mycompany.artunited.entities.Product;
import com.mycompany.artunited.helper.FactoryProvider;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig
public class ProductOperationServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
                //fecthing category data
              String op= request.getParameter("operation");
              if(op.trim().equals("addcategory")) {
                  //add category
                  
                String title=request.getParameter("catTitle");
                String description=request.getParameter("catDescription");
                   
                  Category category=new Category();
                  category.setCategoryTitle(title);
                  category.setCategoryDescription(description);
                  
                  //saving category in database
                 CategoryDao categoryDao= new CategoryDao(FactoryProvider.getFactory());
                  int catId=categoryDao.saveCategory(category);
                  //out.println("category saved");
                  HttpSession httpSession=request.getSession();
                  httpSession.setAttribute("message","Category added successfully");
                  response.sendRedirect("admin.jsp");
                  return;
                  
              }
              else if(op.trim().equals("addproduct")){
                  
                  //add product
                  String pName=request.getParameter("pName");
                  String pDescription=request.getParameter("pDescription");
                  int pPrice=Integer.parseInt(request.getParameter("pPrice"));
                  int pDiscount=Integer.parseInt(request.getParameter("pDiscount"));
                  int pQuantity=Integer.parseInt(request.getParameter("pQuantity"));
                  int catId=Integer.parseInt(request.getParameter("catId"));
                  Part part=request.getPart("pPic");
                  
                  Product p=new Product();
                  p.setpName(pName);
                  p.setpDescription(pDescription);
                  p.setpPrice(pPrice);
                  p.setpDiscount(pDiscount);
                  p.setpQuantity(pQuantity);
                  p.setpPhoto(part.getSubmittedFileName());
                  
                 //get Category by id
                 CategoryDao cdao=new CategoryDao(FactoryProvider.getFactory());
                 Category category=cdao.getCategoryById(catId);
                 p.setCategory(category);
                 
                 //save product
                  
                  ProductDao pdao=new ProductDao(FactoryProvider.getFactory());
                 pdao.saveProduct(p);
                  
         
                
                out.println("product saved successfuly");
                   HttpSession httpSession=request.getSession();
                  httpSession.setAttribute("message","Product added successfully");
                  response.sendRedirect("admin.jsp");
                  return;
              }
              
        }
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
