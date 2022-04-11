<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
<div class="container">
    <h1>Create a new Ad</h1>
    <form action="/ads/create" method="post">
        <div class="form-group">
            <label for="name">Brewery Name</label>
            <input id="name" name="name" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="address">Address</label>
            <input id="address" name="address" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="city">City</label>
            <input id="city" name="city" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="state">State</label>
            <input id="state" name="state" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="zip">Zip Code</label>
            <input id="zip" name="zip" class="form-control" type="text">
        </div>
        <input type="submit" class="btn btn-block btn-primary">
    </form>
</div>
</body>
</html>
