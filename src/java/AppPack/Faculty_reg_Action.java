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
public class Faculty_reg_Action extends org.apache.struts.action.Action {
    
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
        Faculty_reg_Bean bean=(Faculty_reg_Bean)form;
        if(Faculty_Model.isCount()){

        String q="insert into user_login values('"+bean.getEmail()+"','"+bean.getPassword()+"','faculty')";
        if(DBOperation.DBUpdate(q)>0){
        String bal="14000";
        q="insert into faculty values('"+bean.getName()+"','"+bean.getEmail()+"','"+bal+"')";
        if(DBOperation.DBUpdate(q)>0)
        {
        q="select event_id, rate from event";
        ResultSet rs=DBOperation.getRecord(q);
        while(rs.next()){
            String count="0";
        q="insert into user_share_detail values('"+bean.getEmail()+"','"+rs.getString(1)+"','"+count+"','"+rs.getString(2)+"')";
        DBOperation.DBUpdate(q);
        }
        request.getSession().setAttribute("client",LoginAuthenticator.userAuthenticate(bean.getEmail(),bean.getPassword()));
        return mapping.findForward(SUCCESS);
        }
        }
        else{
        request.getSession().setAttribute("error", " Email Already Exists...");
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
