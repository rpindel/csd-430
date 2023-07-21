/*
Robin Pindel
430 mod11/12 Assignment
7/20/2023

Reference
Professor Payne for example code provided in mod11 videos.
*/


package myTags;

import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.*;
import java.io.*;

public class GoBackForm extends SimpleTagSupport {
	
	public void doTag() throws JspException, IOException {
		
		JspWriter out = getJspContext().getOut();
		out.println("<a href=\"http://localhost:8080/pindel_11/dndFormMySQL.jsp\">Go back to form</a>");
	}

}
