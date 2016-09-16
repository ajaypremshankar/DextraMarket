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
public class Sale_shares_Bean extends org.apache.struts.action.ActionForm {
    private String event_id[];
    private String[] share_count;
    private String[] rate;
    private String[] sell_count;
    private String[] total;
    private String total2;


    @Override
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        return errors;
    }

    public String[] getEvent_id() {
        return event_id;

    }

    public void setEvent_id(String[] event_id) {
        System.out.print("EVENT"+event_id);

        this.event_id = event_id;
    }

    public String[] getShare_count() {
        return share_count;
    }

    public void setShare_count(String[] share_count) {
        this.share_count = share_count;
    }

    public String[] getRate() {
        return rate;
    }

    public void setRate(String[] rate) {
        this.rate = rate;
    }

    public String[] getSell_count() {
        return sell_count;
    }

    public void setSell_count(String[] sell_count) {
        this.sell_count = sell_count;
    }

    public String[] getTotal() {
        return total;
    }

    public void setTotal(String[] total) {
        this.total = total;
    }

    /**
     * @return the total2
     */
    public String getTotal2() {
        return total2;
    }

    /**
     * @param total2 the total2 to set
     */
    public void setTotal2(String total2) {
        this.total2 = total2;
    }
}
