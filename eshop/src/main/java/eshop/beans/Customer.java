/*
 * Robin Pindel
 * mod7 Comments
 * 7/2/2023
 * 
 * This file is the Bean Class describing what a Customer looks like for the application.
 */


package eshop.beans;

public class Customer {
  private String contactName = "";
  private String deliveryAddress = "";
  private String ccName = "";
  private String ccNumber = "";
  private String ccExpiryDate = "";

  public String getContactName() {
    return contactName;
    }
  public void setContactName(String contactName) {
    this.contactName = contactName;
    }

  public String getDeliveryAddress() {
    return deliveryAddress;
    }
  public void setDeliveryAddress(String deliveryAddress) {
    this.deliveryAddress = deliveryAddress;
    }

  public String getCcName() {
    return ccName;
    }
  public void setCcName(String ccName) {
    this.ccName = ccName;
    }

  public String getCcNumber() {
    return ccNumber;
    }
  public void setCcNumber(String ccNumber) {
    this.ccNumber = ccNumber;
    }

  public String getCcExpiryDate() {
    return ccExpiryDate;
    }
  public void setCcExpiryDate(String ccExpiryDate) {
    this.ccExpiryDate = ccExpiryDate;
    }
  }
