
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New User</title>
         <%@include file="Components/common_css_js.jsp" %>
    </head>
    <body>
         <%@include file="Components/navbar.jsp" %>
         
         <div class="container-fluid">
             
            <div class="row bg-dark"  >
                
                
                
               
          <div class="col-md-4 offset-md-4 ">
             
                <div class="card" style="height:880px"  >
                     <%@include  file="Components/message.jsp"%> 
                      <img src="image/logo.png"    class="rounded mx-auto d-block" alt="lol"  width="100" height="100">
                    <div class="card-body px-5   border-dark " >
                         <h3 class="text-center my-3">Sign Up</h3>
                         <form action="RegisterServlet" method="post">
                     <div class="form-group">
                     <label for="name">User Name</label>
                     <input name="user_name" type="text" class="form-control" id="name" placeholder="Enter Username" >
                    </div>
                     
                     <div class="form-group">
                     <label for="email">Email Address</label>
                     <input name="user_email" type="email" class="form-control" id="Email" placeholder="Enter Email Address" aria-describedby="emailHelp" placeholder="Enter email">
                    </div>
                     
                     
                     <div class="form-group">
                     <label for="password">Password</label>
                     <input name="user_password" type="password" class="form-control" id="password" placeholder="Enter Password" >
                    </div>
                     
                     <div class="form-group">
                     <label for="phone">Mobile Number</label>
                     <input name="user_phone" type="number" class="form-control" id="phone" placeholder="Enter Mobile Number" >
                    </div>
                     
                      <div class="form-group">
                     <label for="address">User Address</label>
                     <textarea name="user_address" style="height: 100px" class="form-control" placeholder="Enter Address">
                         
                     </textarea>
                    </div>
                     <div class="container text-center mt-3">
                         <button class="btn btn-outline-success">
                             Register
                         </button>
                         <button class="btn btn-outline-warning">
                             Reset
                         </button>
                     </div>
                     
                 </form>
                    </div>
             </div>
                 </div>
         </div>
    </body>
</html>
