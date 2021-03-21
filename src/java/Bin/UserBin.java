/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bin;


import conn.MyConnection;
import java.io.File;
import java.io.IOException;
import java.sql.*;
import java.util.Scanner;

public class UserBin {
    
    private String name;
    private String address;
    private String email;
    private String phone;
    private String password;

    public UserBin(String name, String address, String email, String phone, String password) {
        this.name = name;
        this.address = address;
        this.email = email;
        this.phone = phone;
        this.password = password;
    }

    public UserBin() {
        System.out.println("Created");; //To change body of generated methods, choose Tools | Templates.
    }

    
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
    
}
