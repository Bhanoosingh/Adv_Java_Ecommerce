package com.ecommerce.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBConfig {
    
    //IF WE WILL CHANGE THESE 4 VALUES WE CAN CHANGE DATABASE USED IN OUR PROGRAM
    private static final String DBDRIVER="com.mysql.jdbc.Driver";
    private static final String DBURL="jdbc:mysql://localhost:3306/ecomerce";
    private static final String DBUSERNAME="root";
    private static final String DBPASSWORD="";
    
    //DO NOT CHANGE THESE VALUES AND FUNCTIONS
    private static Statement stmt=null;
    
    private static void openConnection(){
        try{
            Class.forName(DBDRIVER);
            Connection conn=DriverManager.getConnection(DBURL, DBUSERNAME, DBPASSWORD);
            stmt=conn.createStatement();
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
    
    public static int executeUpdate(String sql){
        try{
            openConnection();
            return stmt.executeUpdate(sql);
        }
        catch(Exception e){
            e.printStackTrace();
            return -1;
        }
    }
    
    
    public static ResultSet executeQuery(String sql){
        try{
            openConnection();
            return stmt.executeQuery(sql);
        }
        catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
}
