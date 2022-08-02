
<%@page import="com.mycompany.artunited.entities.User"%>
<%
    User user1 = (User) session.getAttribute("current-user");


%>

<nav class="navbar navbar-expand-lg navbar-dark  " style="background-color:#424242;">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">Art-United</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Categories
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Oil-Paintings</a>
                        <a class="dropdown-item" href="#">Sculptures</a>
                        <a class="dropdown-item" href="#">Pottery</a>
                        <a class="dropdown-item" href="#">Sketches</a>
                        <a class="dropdown-item" href="#">Arts</a>




                </li>

            </ul>
        </div>
        <ul class="navbar-nav ml-auto ">
            <div class="input-group">
                <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" />
                <button type="button" class="btn btn-outline-primary">search</button>
            </div>

            <%              if (user1 == null) {
            %>
            <li class="nav-item active">
                <a class="nav-link" href="login.jsp">Login <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="register.jsp">Register <span class="sr-only">(current)</span></a>
            </li>
            <%
            } else {

            %>


            <li class="nav-item active">
                <a class="nav-link" href="#">Login <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="LogoutServlet">Log Out <span class="sr-only">(current)</span></a>
            </li>


            <%         }


            %></ul>
    </div>
</div>
</nav>