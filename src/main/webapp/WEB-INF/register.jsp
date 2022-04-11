<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<jsp:include page="/WEB-INF/partials/register_form.jsp"/>
<jsp:include page="/WEB-INF/partials/footer.jsp"/>
<!-- Core theme JS-->
<script src="../js/scripts.js"></script>
</body>
</html>
