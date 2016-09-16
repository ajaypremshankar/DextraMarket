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
public class Sale_Action extends org.apache.struts.action.Action {
    
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
        
        User_Data_Table udt=(User_Data_Table)(request.getSession(false).getAttribute("client"));

        String id=udt.getId();

        String query="select share_count from user_share_detail where id='"+id+"'";
        ResultSet rs=DBOperation.getRecord(query);
        while(rs.next()){
        if(Integer.parseInt(rs.getString(1))>0){
        return mapping.findForward(SUCCESS);

        }
        }

        request.getSession().setAttribute("error","You Dont Have Any Share To Sale");
        return mapping.getInputForward();
        
        
    }
}
