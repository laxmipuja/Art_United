
package com.mycompany.artunited.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(length = 10,name= "user_id")
   private int userId;
    @Column(length = 100,name= "user_name")
   private String userName;
   private String useEmail;
   private String userPassword;
   private String userPhone;
   private String userPic;
   @Column(length = 1500,name= "userAddress")
   private String userAddress;
   @Column(name="user_type")
   private String userType;
    public User(int userId, String userName, String useEmail, String userPassword, String userPhone, String userPic, String userAddress,String userType) {
        this.userId = userId;
        this.userName = userName;
        this.useEmail = useEmail;
        this.userPassword = userPassword;
        this.userPhone = userPhone;
        this.userPic = userPic;
        this.userAddress = userAddress;
        this.userType=userType;
    }

    public User(String userName, String useEmail, String userPassword, String userPhone, String userPic, String userAddress,String userType) {
        this.userName = userName;
        this.useEmail = useEmail;
        this.userPassword = userPassword;
        this.userPhone = userPhone;
        this.userPic = userPic;
        this.userAddress = userAddress;
        this.userType=userType;
    }

    public User() {
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUseEmail() {
        return useEmail;
    }

    public void setUseEmail(String useEmail) {
        this.useEmail = useEmail;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getUserPic() {
        return userPic;
    }

    public void setUserPic(String userPic) {
        this.userPic = userPic;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }
    
    

    @Override
    public String toString() {
        return "User{" + "userId=" + userId + ", userName=" + userName + ", useEmail=" + useEmail + ", userPassword=" + userPassword + ", userPhone=" + userPhone + ", userPic=" + userPic + ", userAddress=" + userAddress + '}';
    }
   
   
   
}
