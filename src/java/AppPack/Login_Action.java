/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package AppPack;

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
public class Login_Action extends org.apache.struts.action.Action {
    
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

            Login_Action_Bean bean=(Login_Action_Bean) form;
            User_Data_Table udt=LoginAuthenticator.userAuthenticate(bean.getUser_name(),bean.getPassword());
            
            if(udt!=null){
            request.getSession().setAttribute("client", udt);
            return mapping.findForward(SUCCESS);
            }
            else{
            request.getSession().setAttribute("error", "Wrong UserName Or Password !!");

            return mapping.getInputForward();
            }
    }
}
