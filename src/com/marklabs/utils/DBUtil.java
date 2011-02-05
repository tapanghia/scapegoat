package com.marklabs.utils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;



/**
 * File 		: DBUtil.java
 * purpose		: This class is created to handle user Session expiry
 *
 *
 * author 	   : Tapan Ghia
 */
public class DBUtil {
	


    private static DBUtil dbUtil = null;
    public static DataSource dataSource;

    public static synchronized DBUtil getInstance()
    {
        if (dbUtil == null){
            dbUtil = new DBUtil();
        }
        return dbUtil;
    }

    public void closeDBResources(Connection connection, Statement statement , ResultSet resultSet)throws DataAccessException{
        try {
            if(resultSet != null){
                resultSet.close();
            }
            if(statement != null){
                statement.close();
            }
            if(connection != null){
                connection.close();
            }
        } catch (SQLException e) {
        	throw new DataAccessException(e.getMessage(), e);
        }
    }

   public Connection createConnection() {
    	Connection connection = null;
    	try {
    		connection = dataSource.getConnection();
    	} catch (Exception e) {
    		e.printStackTrace();
    		System.out.println("Exception in DBUtil: "+e.getMessage());
    	}
    	return connection;
    }

	/**
	 * @return the dataSource
	 */
	public DataSource getDataSource() {
		return dataSource;
	}

	/**
	 * @param dataSource the dataSource to set
	 */
	public void setDataSource(DataSource dataSource) {
		DBUtil.dataSource = dataSource;
	}
    
}