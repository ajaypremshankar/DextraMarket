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
public class Buy_shares_Bean extends org.apache.struts.action.ActionForm {
    private String event_id[];
    private String[] share_remaining;
    private String[] rate;
    private String[] count;
    private String[] total;

    @Override
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        return errors;
    }

    /**
     * @return the event_id
     */
    public String[] getEvent_id() {
        return event_id;
    }

    /**
     * @param event_id the event_id to set
     */
    public void setEvent_id(String[] event_id) {
        this.event_id = event_id;
    }

    /**
     * @return the share_remaining
     */
    public String[] getShare_remaining() {
        return share_remaining;
    }

    /**
     * @param share_remaining the share_remaining to set
     */
    public void setShare_remaining(String[] share_remaining) {
        this.share_remaining = share_remaining;
    }

    /**
     * @return the rate
     */
    public String[] getRate() {
        return rate;
    }

    /**
     * @param rate the rate to set
     */
    public void setRate(String[] rate) {
        this.rate = rate;
    }

    /**
     * @return the count
     */
    public String[] getCount() {
        return count;
    }

    /**
     * @param count the count to set
     */
    public void setCount(String[] count) {
        this.count = count;
    }

    /**
     * @return the total
     */
    public String[] getTotal() {
        return total;
    }

    /**
     * @param total the total to set
     */
    public void setTotal(String[] total) {
        this.total = total;
    }

    
}
