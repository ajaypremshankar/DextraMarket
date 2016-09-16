/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package AppPack;

import java.sql.*;
import java.sql.PreparedStatement;

/**
 *
 * @author ajay prem shankar
 */
public class DBOperation {
    private static  Connection con;
	private static PreparedStatement psmt;
	private static ResultSet rs;
    private static Statement st;

    static {
    con=DBConnection.getConn();
    }

    public static int DBUpdate(String query){
	int m;
	try{
        con=DBConnection.getConn();
        System.out.println(con);
		st=con.createStatement();
		m=st.executeUpdate(query);
        con.close();
		return m;
	}catch(SQLException e){
        System.out.println(e);
		return 0;
	}
	}

public static ResultSet getRecord(String query){
	try{
        con=DBConnection.getConn();
		rs=con.createStatement().executeQuery(query);
        return rs;
	}catch(Exception e){
		rs=null;
	}
		return rs;
}
}