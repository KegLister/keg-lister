<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<br>
<br>
<br>

<div class="container mt-5">
    <h1>Welcome, ${sessionScope.user.username}!</h1>
    <a href="ads/edit?id=${ad.user_id}"
       class="btn btn-success">Edit Profile</a>

</div>
<section class="pt-4">
    <div class="container px-lg-5">
        <!-- Page Features-->
        <div class="row gx-lg-5">
            <c:forEach var="ad" items="${ads}">

                <div class="col-lg-6 col-xxl-4 mb-5">
                    <div class="card bg-light border-1 h-100">
                        <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4">
                                <h5 class="p-2 mt-2">${ad.type}</h5>
                                    <%--                                <i class="bi bi-cup-straw"></i>--%>
                            </div>
                            <h2 class="fs-4 fw-bold"><a href="ShowSingleAdServlet?${ad.name}">${ad.name}</a></h2>
                            <p class="mb-0">${ad.address}</p>
                            <a href="${ad.website}" target="_blank">${ad.name} Website</a>
                            <p>${ad.phone}</p>
                            <div>
                                <img src="${ad.image}" class="img-fluid">
                            </div>
                            <p>${ad.type}</p>
                            <div>
                                <a href="https://www.google.com/maps/search/${ad.name}${ad.address}" target="_blank">view on google maps</a>
                            </div>
                            <br>
                            <br>
                            <a href="ads/edit?id=${ad.id}"
                               class="btn btn-success">Edit</a>
                            <a href="ads/delete?id=${ad.id}"
                               onclick="return confirm('Are you sure you want to delete this ad?')"
                               class="btn btn-danger">Delete</a>
                        </div>
                    </div>
                </div>

            </c:forEach>
        </div>
    </div>
</section>
<br>
<br>
<br>
<br>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<!-- Core theme JS-->
<script src="../js/scripts.js"></script>
</body>
</html>
