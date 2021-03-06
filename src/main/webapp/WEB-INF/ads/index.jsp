<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<header class="py-5">
    <div class="container px-lg-5">
        <div class="p-4 p-lg-5 bg-light rounded-3 text-center">
            <div class="m-4 m-lg-5">
                <h1 class="display-5 fw-bold">Welcome to Keg-Lister!</h1>
                <p class="fs-4">An ad-lister project by Charles Willcockson, Andrew Lange, and Nelson Delpozo of Codeup
                    Sirius Cohort</p>

                <c:choose>
                    <c:when test="${isLoggedIn}">
                        <a class="btn btn-primary btn-lg" href="/profile">Go to Profile</a>
                    </c:when>
                    <c:otherwise>
                        <a class="btn btn-primary btn-lg" href="/register">Create an account</a>
                    </c:otherwise>

                </c:choose>
                <br>
                <br>
                <a class="btn btn-primary btn-lg" href="/ads/create">Add a Brewery</a>
                <br>
                <br>
                <form class="form-inline my-2 my-lg-0 d-flex" action="/search" method="post">
                    <input class="form-control mr-sm-2 " name="search" type="search" placeholder="Search"
                           aria-label="Search">
                    <button class="btn btn-lg btn-primary my-2 my-sm-0" type="submit">Search</button>
                </form>
                <br>
                <form action="/filter" method="post">
                    <label for="selector">Search By Category</label>
                    <select id="selector" name="type" class="btn-primary">
                        <option name="Brewpub">Brewpub</option>
                        <option name="Taproom">Taproom</option>
                        <option name="Microbrewery">Microbrewery</option>
                    </select>
                    <button class="btn btn-lg btn-primary my-2 my-sm-0" type="submit">Go</button>
                </form>
            </div>
        </div>
    </div>
</header>
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
                            <h2 class="fs-4 fw-bold"><a href="ShowSingleAdServlet?${ad.name}"
                                                        target="_blank">${ad.name}</a></h2>
                            <p class="mb-0">${ad.address}</p>
                            <a href="${ad.website}">${ad.name} Website</a>
                            <p>${ad.phone}</p>
                            <div>
                                <img src="${ad.image}" class="img-fluid">
                            </div>
                            <p>${ad.type}</p>
                            <div>
                                <a href="https://www.google.com/maps/search/${ad.name}${ad.address}" target="_blank">view on google maps</a>
                            </div>
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
<script src="../../js/scripts.js"></script>
</body>
</html>
