<!-- 
Robin Pindel
430mod10 JSF Example
7/15/2023
 
Reference - Code from Textbook Example
Manelli, L., & Zambon, G. (2020). Beginning Jakarta EE Web Development: Jakarta Server Pages, 
Jakarta Server Faces, and Apache Tomcat for Building Java Web Applications. Apress.
 
Tweaks Performed: Various formatting changes to the base textbook application.  Application 
changed to have a "purpose" - spreading positivity.
 -->


<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<html>

<head>
<title>Page Number 1</title>
</head>

<body style="background-color: pink">
<f:view>
  <h1>Positivity Form</h1>
  <h:form>
    <h:outputText value="Please enter your name: "/>
    <h:inputText value="#{aNameBean.str}"/>
    <br />
    <h:outputText value="(The text field may need to be cleared.)"/>
    <br />
    <br />
    <h:commandButton action="goOn" value="Submit" />
  </h:form>
</f:view>
</body>

</html>
