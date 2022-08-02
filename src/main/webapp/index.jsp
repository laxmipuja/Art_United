

<%@page import="com.mycompany.artunited.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ArtUnited-Home</title>
        <%@include file="Components/common_css_js.jsp" %>
    </head>
    <body>
        <%@include file="Components/navbar.jsp" %>

        <div class="row row-cols-1 row-cols-md-3 g-4">
            <div class="col">
                <div class="card">
                    <img src="image/sculpturesArt.webp" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Sculpture Art   Rs.2510</h5>
                        <p class="card-text">Stunning showpieces for art collectors to flaunt in their homes, inspired by ancient Greek art sculptures....</p>
                        <a href="#" class="btn btn-primary">Buy</a>
                    </div>
                    
                </div>
            </div>
            <div class="col">
                <div class="card">
                    <img src="image/oil-painting.webp" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Sober Oil Paintings  Rs.1499</h5>
                        <p class="card-text">Now its very easy to personalize your walls with artwork made from images of your loved ones. Our designers will digitally handcraft your image into an amazing piece of art ....</p>
                        <a href="#" class="btn btn-primary">Buy</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card">
                    <img src="image/2.webp" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Handmade Blue & Orange Print Glazed Ceramic Bowl   Rs.499</h5>
                        <p class="card-text">Enhance your health by bringing home our serving bowl that is mindfully crafted to bring the goodness of ceramic to your life...</p>
                         <a href="#" class="btn btn-primary">Buy</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card">
                    <img src="image/images(3).webp" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Woman Sketch painting Rs.2450</h5>
                        <p class="card-text">Leave your guests mesmerized as you change the look of your room with eye-catching art prints. Our wide range of digital art prints boast of timeless imaginations merged into ....</p>
                    <a href="#" class="btn btn-primary">Buy</a>
                    </div>
                </div>
            </div>
        </div>



        <div class="card" style="width: 18rem;">
            <img src="image/sculpturesArt.webp" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Sculpture Art   Rs.2510</h5>
                <p class="card-text">Stunning showpieces for art collectors to flaunt in their homes, inspired by ancient Greek art sculptures...</p>
                <a href="#" class="btn btn-primary">Buy</a>
            </div>
            <div class="card" style="width: 18rem;">
                <img src="image/sculpturesArt.webp" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Sculpture Art   Rs.2510</h5>
                    <p class="card-text">Stunning showpieces for art collectors to flaunt in their homes, inspired by ancient Greek art sculptures...</p>
                    <a href="#" class="btn btn-primary">Buy</a>
                </div>
            </div>
        </div>


    </body>
</html>
