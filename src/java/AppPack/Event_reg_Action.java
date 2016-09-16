/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package AppPack;

import java.sql.ResultSet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForward;

/**
 *
 * @author ajay prem shankar
 */
public class Event_reg_Action extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private final static String SUCCESS = "success";
    
    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        Event_reg_Bean bean=(Event_reg_Bean)form;
        String q="insert into event values('"+bean.getEvent_name()+"',500,'"+bean.getShare_rate()+"','"+bean.getEvent_email()+"','"+bean.getPassword()+"')";
        int i=DBOperation.DBUpdate(q);
        if(!(i>0)){
        request.getSession().setAttribute("Exception","Event with name "+bean.getEvent_name()+" already Exists");
        return mapping.getInputForward();
        }
        q="select id from user_login";
        ResultSet rs=DBOperation.getRecord(q);
        String count="0";
        while(rs.next()){
        q="insert into user_share_detail values('"+rs.getString(1)+"','"+bean.getEvent_name()+"','"+count+"','"+bean.getShare_rate()+"')";
        DBOperation.DBUpdate(q);
        }
        request.getSession().setAttribute("event","event "+bean.getEvent_name()+" registered Successfully");
        return mapping.findForward(SUCCESS);
    }
}
