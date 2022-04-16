<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Your Profile" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<br>
<br>
<br>
<br>
<br>
<div class="container">
    <h1>Edit Your Profile</h1>
    <form action="/edit-profile" method="post">
        <h2>Welcome!</h2>
        <h3>please enter your information below</h3>
        <br>
        <div class="form-outline mb-4">
            <input type="text" placeholder="Enter Username" value="${user.username}" name="username" required
                   class="form-control"/>
        </div>
        <div class="form-outline mb-4">
            <input type="email" placeholder="Enter Email" value="${user.email}" name="email" required
                   class="form-control"/>
        </div>
        <div class="form-outline mb-4">
            <input type="password" placeholder="Enter Password" value="${user.password}" name="password" required
                   class="form-control"/>
        </div>
        <div class="form-outline mb-4">
            <input type="password" placeholder="Confirm Password" value="${user.password}" name="confirm_password" required
                   class="form-control"/>
        </div>
        <button type="submit" class="btn btn-primary btn-block mb-4">Register Account</button>
    </form>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<!-- Core theme JS-->
<script src="../../js/scripts.js"></script>
</body>
</html>
