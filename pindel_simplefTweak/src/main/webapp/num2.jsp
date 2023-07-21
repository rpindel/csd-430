<!-- 
Robin Pindel
430mod10 JSF Example
7/15/2023
 
Reference - Code from Textbook Example
Manelli, L., & Zambon, G. (2020). Beginning Jakarta EE Web Development: Jakarta Server Pages, 
Jakarta Server Faces, and Apache Tomcat for Building Java Web Applications. Apress.
 
Tweaks Performed: Various formatting changes done here including more experimentation with
HTML tags inside of the f:view component.  
 -->


<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<html>

<head>
<title>Page Number 2</title>
</head>

<body style="background-color: yellow">
<f:view>
  <h:form>
    <h:outputText value="Have an awesome day"/>
    <h:outputText value=" #{aNameBean.str}!" style="font-weight: bold"/>
    <br />
    <br />
    <h:commandButton action="goBack" value="Someone else?" />
</h:form>
</f:view>
</body>

</html>
