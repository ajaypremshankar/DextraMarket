/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package AppPack;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ajay prem shankar
 */
public class Group_Model {
public static boolean isCount(){
    String q="select count(id) from group";
    ResultSet rs=DBOperation.getRecord(q);
        if(rs==null){
    return true;
    }

        try {
            while (rs.next()) {
                if (Integer.parseInt(rs.getString(1)) <= 100) {
                    return true;
                }
            }
        } catch (SQLException ex) {
            return false;
        }
    return false;
}
}
