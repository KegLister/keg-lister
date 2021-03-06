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
    <form action="/ads/edit-profile" method="post">
        <h3>please enter your information below</h3>
        <br>
        <div class="form-outline mb-4">
            <label for="username">Username</label>
            <input type="text" placeholder="Enter Username" value="${user.username}" name="username" id="username" required
                   class="form-control"/>
        </div>
        <div class="form-outline mb-4">
            <label for="email">Email</label>
            <input type="email" placeholder="Enter Email" value="${user.email}" name="email" id="email" required
                   class="form-control"/>
        </div>
        <div class="form-outline mb-4">
            <label for="password">Password</label>
            <input type="password" placeholder="Enter Password" value="${user.password}" name="password" id="password" required
                   class="form-control"/>
        </div>
        <div class="form-outline mb-4">
            <label for="cpassword">Confirm password</label>
            <input type="password" placeholder="Confirm Password" value="${user.password}" name="confirm_password" id="cpassword" required
                   class="form-control"/>
        </div>
        <button type="submit" class="btn btn-primary btn-block mb-4">Submit</button>
    </form>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<!-- Core theme JS-->
<script src="../../js/scripts.js"></script>
</body>
</html>
