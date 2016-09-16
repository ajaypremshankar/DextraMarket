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
public class Change_share_rate_Bean extends org.apache.struts.action.ActionForm {
    
    private String new_rate;

    @Override
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        return errors;
    }

    /**
     * @return the new_rate
     */
    public String getNew_rate() {
        return new_rate;
    }

    /**
     * @param new_rate the new_rate to set
     */
    public void setNew_rate(String new_rate) {
        this.new_rate = new_rate;
    }
}
