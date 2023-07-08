/*
 * Robin Pindel
 * mod7 Comments
 * 7/2/2023
 * 
 * This file is the Bean Class describing what a Book Category looks like for the application.
 */


package eshop.beans;

public class Category {
  private int id;
  private String name;

  public Category(int id, String name) {
    this.id = id;
    this.name = name;
    }

  public int getId() { return id; }
  public void setId(int id) { this.id = id; }

  public String getName() { return name; }
  public void setName(String name) { this.name = name; }
  }
