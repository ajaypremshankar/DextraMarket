/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package AppPack;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author ajay prem shankar
 */
public class Event_login_Bean extends org.apache.struts.action.ActionForm {
        private String user_name;

    private String password;

    /**
     * @return
     */
    public String getUser_name() {
        return user_name;
    }

    /**
     * @param string
     */
    public void setUser_name(String string) {
        user_name = string;
    }

    /**
     * @return
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param i
     */
    public void setPassword(String i) {
        password = i;
    }
    @Override
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        return errors;
    }
}
