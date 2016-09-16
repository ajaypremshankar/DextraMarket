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
public class Login_Action_Bean extends org.apache.struts.action.ActionForm {
    
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

    /**
     *
     */

    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        return errors;
    }
}
