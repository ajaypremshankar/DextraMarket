/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package AppPack;

import java.util.ArrayList;

/**
 *
 * @author ajay prem shankar
 */
public class User_Data_Table {
private String id;
private String name;
private ArrayList<String> event_id;
private ArrayList<String> shares;
private ArrayList<String> rate;
private String balance;
private String type;

    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * @return the event_id
     */
    public ArrayList<String> getEvent_id() {
        return event_id;
    }

    /**
     * @param event_id the event_id to set
     */
    public void setEvent_id(ArrayList<String> event_id) {
        this.event_id = event_id;
    }

    /**
     * @return the shares
     */
    public ArrayList<String> getShares() {
        return shares;
    }

    /**
     * @param shares the shares to set
     */
    public void setShares(ArrayList<String> shares) {
        this.shares = shares;
    }

    /**
     * @return the rate
     */
    public ArrayList<String> getRate() {
        return rate;
    }

    /**
     * @param rate the rate to set
     */
    public void setRate(ArrayList<String> rate) {
        this.rate = rate;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the balance
     */
    public String getBalance() {
        return balance;
    }

    /**
     * @param balance the balance to set
     */
    public void setBalance(String balance) {
        this.balance = balance;
    }

    /**
     * @return the type
     */
    public String getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(String type) {
        this.type = type;
    }

}
