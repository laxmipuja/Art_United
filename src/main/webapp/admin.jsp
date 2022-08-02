
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Panel</title>

        <%@include file="Components/common_css_js.jsp" %>
    </head>
    <body>
        <%@include file="Components/navbar.jsp" %>

        <div class="container admin" >
            <div class="container-fluid mt-3">
                <%@include file="Components/message.jsp" %>
            </div>

            <div class="row mt-3 ">

                <!-- first col -->
                <div class="col-md-4">
                    <div class="card text-white bg-secondary mb-3">
                        <div class="card-body text-center">

                            <div class="container ">
                                <img style="max-width:100px;" class="image-fluid rounded-circle" src="image/man.png" alt="sorry">
                            </div>
                            <h1>
                                Users
                            </h1>
                        </div>
                    </div>
                </div>
                <!-- second col -->
                <div class="col-md-4 ">
                    <div class="card text-white bg-secondary mb-3 ">
                        <div class="card-body text-center ">
                            <div class="container">
                                <img style="max-width:100px;" class="image-fluid rounded-circle" src="image/app.png" alt="sorry">
                            </div>
                            <h1>
                                Categories
                            </h1>
                        </div>
                    </div>
                </div>
                <!-- third col -->
                <div class="col-md-4 ">
                    <div class="card text-white bg-secondary mb-3" >
                        <div class="card-body text-center ">
                            <div class="container">
                                <img style="max-width:100px;" class="image-fluid rounded-circle" src="image/package.png" alt="sorry">
                            </div>
                            <h1>
                                Products
                            </h1>
                        </div>
                    </div>
                </div>
            </div>
            <!--second row-->
            <div class="row mt-3">
                <div class="col-md-6 ">
                    <div class="card text-white bg-secondary mb-3" data-toggle="modal" data-target="#add-category-model">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width:100px;" class="image-fluid rounded-circle" src="image/shopping-cart.png" alt="sorry">
                            </div>
                            <h1>
                                Add Category
                            </h1>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card text-white bg-secondary mb-3" data-toggle="modal" data-target="#add-product-model">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width:100px;" class="image-fluid rounded-circle" src="image/menu.png" alt="sorry">
                            </div>
                            <h1>
                                Add Products
                            </h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- add category model -->


        <!-- Modal -->
        <div class="modal fade" id="add-category-model" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header text-white" style="background-color:#808080;" >
                        <h5 class="modal-title" id="exampleModalLabel">Fill Category Details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="ProductOperationServlet" method="post">
                            <input type="hidden" name="operation" value="addcategory"/>
                            <div class="form-group">
                                <input type="text" class="form-control" name="catTitle"  placeholder="Enter Category Title" required />
                            </div>    

                            <div class="form-group">
                                <input type="text" style="height:100px;" class="form-control"  name="catDescription"   placeholder="Enter Category Description" />  
                            </div>
                            <div class="conatiner text-center">
                                <button class="btn btn-outline-success">Add Category</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
            <!--end category model-->


            <!--product model-->

         

            <!-- Modal -->
            <div class="modal fade" id="add-product-model" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Product Details</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form action="ProductOperationServlet" method="post" enctype="multipart/form-data">
                                <input type="hidden" name="operation" value="addproduct"/>
                                <!-- product title -->
                               
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Enter Product Title" name="pName"/>
                                </div>
                                <!-- product Description -->
                                <div class="form-group">
                                    <textarea style="height:100px;" class="form-control" placeholder="Enter Product Description" name="pDescription"></textarea>
                                </div>
                                <!-- product price -->
                                 <div class="form-group">
                                    <input type="number" class="form-control" placeholder="Enter Product Price" name="pPrice"/>
                                </div>
                                <!-- product discount -->
                                <div class="form-group">
                                    <input type="number" class="form-control" placeholder="Enter Product Discount" name="pDiscount"/>
                                </div>
                                
                                <!-- product quantity -->
                                <div class="form-group">
                                    <input type="number" class="form-control" placeholder="Enter Product Quantity" name="pQuantity"/>
                                </div>
                                
                                <!-- product Category -->
                                 <div class="form-group">
                                     <select name="catId" class="form-control" >
                                         <option value="oil">Oil-Painting</option>
                                          <option value="photography">Photography</option>
                                           <option value="sculptures">Sculptures</option>
                                            <option value="pottery">Pottery</option>
                                     </select>
                                </div>
                                
                                
                                <!-- product picture -->
                                <div class="form-group">
                                    <input type="file"  name="pPic"/>
                                    
                                 </div>
                                <!-- comment -->
                                <div class="container text-center">
                                    <button class="btn btn-outline-success ">Add Product</button>
                                         <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                            </form>
                        </div>
                        
                            
                      
                    </div>
                </div>
            </div>

            <!-- end of product model -->

    </body>
</html>
