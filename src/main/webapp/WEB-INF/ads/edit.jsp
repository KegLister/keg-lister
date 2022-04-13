<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Edit Your Ad" />
  </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
  <h1>Edit Your Ad</h1>
  <form action="/ads/edit/*" method="post">
    <div class="form-group">
      <label for="user_id">User ID</label>
      <input id="user_id" name="user_id" class="form-control" type="number" >
    </div>
    <div class="form-group">
      <label for="name">Brewery Name</label>
      <input id="name" name="name" class="form-control" type="text" >
    </div>
    <div class="form-group">
      <label for="address">Address</label>
      <input id="address" name="address" class="form-control" type="text">
    </div>
    <div class="form-group">
      <label for="website">Website</label>
      <input id="website" name="website" class="form-control" type="text">
    </div>
    <div class="form-group">
      <label for="phone">Phone</label>
      <input id="phone" name="phone" class="form-control" type="text">
    </div>
    <div class="form-group">
      <label for="imageURL">Image URL</label>
      <input id="imageURL" name="imageURL" class="form-control" type="text">
    </div>
    <div class="form-group">
      <br>
      <label>Select Type</label>
      <select>
        <option name="Brewpub">Brewpub</option>
        <option name="Taproom">Taproom</option>
        <option name="Microbrewery">Microbrewery</option>
      </select>
    </div>
    <br>
    <input type="submit" class="btn btn-block btn-primary">
  </form>
</div>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<!-- Core theme JS-->
<script src="../../js/scripts.js"></script>
</body>
</html>
