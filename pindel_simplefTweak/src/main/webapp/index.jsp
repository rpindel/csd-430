<!-- 
Robin Pindel
430mod10 JSF Example
7/15/2023
 
Reference - Code from Textbook Example
Manelli, L., & Zambon, G. (2020). Beginning Jakarta EE Web Development: Jakarta Server Pages, 
Jakarta Server Faces, and Apache Tomcat for Building Java Web Applications. Apress.
 
Tweaks Performed: No changes were needed to this file as the file passes control from the initial 
call via the web.xml to the first .jsp file (num1) but recgonzies it as using JSF.  
 -->



<html>

<body>
	<jsp:forward page="/num1.jsf"/>
</body>

</html>