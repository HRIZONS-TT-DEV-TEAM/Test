package com.example;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {
    public static void main(String[] args) {
        String url = "jdbc:postgresql://postgres-0ac8b268-3a98-49cb-906e-aafaf2e9b6c9.cqryblsdrbcs.us-east-1.rds.amazonaws.com:4206/vuoRaphkRnIp";
        String user = "1816575da77e";
        String password = "024a7e3434aee56693b64d983";

        try (Connection conn = DriverManager.getConnection(url, user, password)) {
            System.out.println("Connected to PostgreSQL database!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}