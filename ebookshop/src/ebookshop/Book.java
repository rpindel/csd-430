/*
Robin Pindel
Module 5 ebookshop files with comments
6/25/2023

This file serves as the model for the the ebookshop application, specifically the logic of what a book is.

Reference - Edited after Download from:
Apress. (n.d.-a). beginning-jakarta-ee-web-dev/ch03_code/ebookshop at master · 
Apress/beginning-jakarta-ee-web-dev. GitHub. 
https://github.com/Apress/beginning-jakarta-ee-web-dev/tree/master/ch03_code/ebookshop
*/


package ebookshop;
public class Book {
  String title;
  float  price;
  int    quantity;
  public Book(String t, float p, int q) {
    title    = t;
    price    = p;
    quantity = q;
    }
  public String getTitle()         { return title; }
  public void   setTitle(String t) { title = t; }
  public float  getPrice()         { return price; }
  public void   setPrice(float p)  { price = p; }
  public int    getQuantity()      { return quantity; }
  public void   setQuantity(int q) { quantity = q; }
  }