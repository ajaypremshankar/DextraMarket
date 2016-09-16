/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package AppPack;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ajay prem shankar
 */
public class LoginAuthenticator {

private static  String query="select * from ";

public static boolean Authenticate(String username, String password){
ResultSet rs=DBOperation.getRecord(query+"user_login"+" where global_id='"+username+"'");
        try {
            if(rs.next()) {
            if(rs.getString("password").equals(password))
            return true;
            }
        } catch (SQLException ex) {
            return false;
        }
    return false;
}

public static User_Data_Table  userAuthenticate(String user, String password){
    User_Data_Table udt=new User_Data_Table();

    ArrayList<String> event_id=new ArrayList<String>(), shares=new ArrayList<String>(), rate=new ArrayList<String>();
    ResultSet rs=DBOperation.getRecord("select * from user_login where id='"+user+"' and password='"+password+"'");
    try {
        if(rs.next()){
            udt.setId(user);
            udt.setType(rs.getString(3));
            query="select * from user_share_detail where id='"+user+"'";

            ResultSet rs2=DBOperation.getRecord(query);
            while(rs2.next()){
            event_id.add(rs2.getString("event_id"));
            shares.add(rs2.getString("share_count"));
            rate.add(rs2.getString("rate"));
            }
            rs.close();
            rs2.close();
            udt.setEvent_id(event_id);
            udt.setShares(shares);
            udt.setRate(rate);

            if(udt.getType().equalsIgnoreCase("faculty")){
            query="select * from faculty where email='"+user+"'";
           ResultSet rs3=DBOperation.getRecord(query);

            while(rs3.next()){
            udt.setBalance(rs3.getString("balance"));
            udt.setName(rs3.getString("name"));
            }
            rs3.close();
            return udt;
            }
            else{
            query="select balance from user_group where id='"+user+"'";
            ResultSet rs4=DBOperation.getRecord(query);
            if(rs4.next()){
            udt.setName(user);
            udt.setBalance(rs4.getString(1));
            }
            rs4.close();
            
            return udt;
        }
        }
    }

     catch (Exception e) {
        return udt;
    }
return null;
}

public static boolean isRegistrationComplete(String id,String user_type){
        try {
            query = "select * from " + user_type + "_info where global_id='" + id + "'";
            ResultSet rs = DBOperation.getRecord(query);
            if (rs.next()) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException ex) {
            Logger.getLogger(LoginAuthenticator.class.getName()).log(Level.SEVERE, null, ex);
        }
return false;
}

}
