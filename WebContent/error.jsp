<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
<head><title>Error log</title></head>
<body>
    <h3>Exception:</h3>
    <s:property value="exception"/>

    <h3>Stack trace:</h3>
    <pre>
        <s:property value="exceptionStack"/>
    </pre>
</body>
</html>