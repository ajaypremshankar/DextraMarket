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
public class Group_reg_Action extends org.apache.struts.action.Action {
    
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

        Group_reg_Bean bean=(Group_reg_Bean) form;
        
                if(Group_Model.isCount()){

        String q="insert into user_login values('"+bean.getId()+"','"+bean.getPassword()+"','group')";
        if(DBOperation.DBUpdate(q)>0){
        String bal="14000";
        System.out.println(bean.getEmail2());
        String q1="insert into user_group values('"+bean.getId()+"','"+bean.getName1()+"','"+bean.getName2()+"','"+bean.getEmail1()+"','"+bean.getEmail2()+"','"+bal+"');";
        if(DBOperation.DBUpdate(q1)>0)
        {
        q="select event_id, rate from event";
        ResultSet rs=DBOperation.getRecord(q);
        while(rs.next()){
            String count="0";
        q="insert into user_share_detail values('"+bean.getId()+"','"+rs.getString(1)+"','"+count+"','"+rs.getString(2)+"')";
        DBOperation.DBUpdate(q);
        }
        request.getSession().setAttribute("client",LoginAuthenticator.userAuthenticate(bean.getId(),bean.getPassword()));
        return mapping.findForward(SUCCESS);
        }
        }
        else{
        request.getSession().setAttribute("error", " Group Already Exists...");
        return mapping.getInputForward();
        }
        }
        else{
            request.getSession().setAttribute("error", " Registration is closed for Now");
        return mapping.getInputForward();
        }
        return mapping.getInputForward();
    }
        
 
}
