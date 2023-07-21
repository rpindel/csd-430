/*
 * Robin Pindel
 * 430mod10 JSF Example
 * 7/15/2023
 * 
 * Reference - Code from Textbook Example
 * Manelli, L., & Zambon, G. (2020). Beginning Jakarta EE Web Development: Jakarta Server Pages, 
 * Jakarta Server Faces, and Apache Tomcat for Building Java Web Applications. Apress.
 * 
 * Tweaks Performed: Changed name of the class/bean to help identify where all it needed to be changed
 * in the other application files.
 */


import java.io.Serializable;
public class Name implements Serializable {
private static final long serialVersionUID = 1L;
String str;
  public String getStr() { return str; }
  public void setStr(String s) { str = s; }
  }