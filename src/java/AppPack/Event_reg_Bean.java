/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package AppPack;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author ajay prem shankar
 */
public class Event_reg_Bean extends org.apache.struts.action.ActionForm {
    private String event_name;
    private String event_email;
    private String share_rate;
    private String password;
    private String confirm_password;

    @Override
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        return errors;
    }

    /**
     * @return the event_name
     */
    public String getEvent_name() {
        return event_name;
    }

    /**
     * @param event_name the event_name to set
     */
    public void setEvent_name(String event_name) {
        this.event_name = event_name;
    }

    /**
     * @return the event_email
     */
    public String getEvent_email() {
        return event_email;
    }

    /**
     * @param event_email the event_email to set
     */
    public void setEvent_email(String event_email) {
        this.event_email = event_email;
    }

    /**
     * @return the share_rate
     */
    public String getShare_rate() {
        return share_rate;
    }

    /**
     * @param share_rate the share_rate to set
     */
    public void setShare_rate(String share_rate) {
        this.share_rate = share_rate;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the confirm_password
     */
    public String getConfirm_password() {
        return confirm_password;
    }

    /**
     * @param confirm_password the confirm_password to set
     */
    public void setConfirm_password(String confirm_password) {
        this.confirm_password = confirm_password;
    }
}
