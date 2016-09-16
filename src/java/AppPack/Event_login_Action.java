/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package AppPack;

import java.sql.ResultSet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForward;

/**
 *
 * @author ajay prem shankar
 */
public class Event_login_Action extends org.apache.struts.action.Action {
    
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
        
        Event_login_Bean bean=(Event_login_Bean)form;
        
        String query="select * from event where event_id='"+bean.getUser_name()+"' and password='"+bean.getPassword()+"'";
        ResultSet rs=DBOperation.getRecord(query);

        if(rs.next()){
        Event_Data ed=new Event_Data();
        ed.setEvent_id(bean.getUser_name());
        ed.setShare_remaining(rs.getString("share_remaining"));
        ed.setRate(rs.getString("rate"));
        ed.setEmail(rs.getString("email"));

        rs.close();
        request.getSession().setAttribute("client",ed);

        return mapping.findForward(SUCCESS);
        }
        else{
        request.getSession().setAttribute("error","Wrong UserName or Password");
        return mapping.getInputForward();
        }
        }
}
