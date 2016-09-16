/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package AppPack;

/**
 *
 * @author ajay prem shankar
 */
public class Event_Data {
private String event_id;
    private String share_remaining;
    private String rate;
    private String email;

    /**
     * @return the event_id
     */
    public String getEvent_id() {
        return event_id;
    }

    /**
     * @param event_id the event_id to set
     */
    public void setEvent_id(String event_id) {
        this.event_id = event_id;
    }

    /**
     * @return the share_remaining
     */
    public String getShare_remaining() {
        return share_remaining;
    }

    /**
     * @param share_remaining the share_remaining to set
     */
    public void setShare_remaining(String share_remaining) {
        this.share_remaining = share_remaining;
    }

    /**
     * @return the rate
     */
    public String getRate() {
        return rate;
    }

    /**
     * @param rate the rate to set
     */
    public void setRate(String rate) {
        this.rate = rate;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }
}
