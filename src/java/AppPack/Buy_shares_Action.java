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
public class Buy_shares_Action extends org.apache.struts.action.Action {
    
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

        Buy_shares_Bean bean=(Buy_shares_Bean)form;
        User_Data_Table udt=(User_Data_Table)request.getSession(false).getAttribute("client");
        
        String []count=bean.getCount();
        String event_id[]=bean.getEvent_id();
        String share_remaining[]=bean.getShare_remaining();
        String rate[]=bean.getRate();

        int balance=Integer.parseInt(udt.getBalance());

        for(int i=0;i<event_id.length;i++){

        if(Integer.parseInt(share_remaining[i])<Integer.parseInt(count[i])){

        request.getSession().setAttribute("error", "You Tried to Buy more shares than available for "+event_id[i]);
        return mapping.getInputForward();
        }
        }

        String query;
        int shares;
        for(int i=0;i<event_id.length;i++){
        balance-=Integer.parseInt(rate[i])*Integer.parseInt(count[i]);
        shares=Integer.parseInt(share_remaining[i])-Integer.parseInt(count[i]);
        query="update event set share_remaining='"+shares+"' where event_id='"+event_id[i]+"'";
        DBOperation.DBUpdate(query);

        }

        if(udt.getType().equalsIgnoreCase("faculty")){
        query="update faculty set balance='"+balance+"' where email='"+udt.getId()+"'";
        DBOperation.DBUpdate(query);

        }
        else{
        query="update user_group set balance='"+balance+"' where id='"+udt.getId()+"'";
        DBOperation.DBUpdate(query);
        }

        udt.setBalance(balance+"");

        ResultSet rs1;
        int share_cnt;
        for(int i=0;i<event_id.length;i++){
        query="select share_count from user_share_detail where id='"+udt.getId()+"' and event_id='"+event_id[i]+"'";
        rs1=DBOperation.getRecord(query);
        

        if(rs1.next()){
        share_cnt=Integer.parseInt(rs1.getString(1))+Integer.parseInt(count[i]);

        query="update user_share_detail set share_count='"+share_cnt+"' where id='"+udt.getId()+"' and event_id='"+event_id[i]+"'";
        DBOperation.DBUpdate(query);
        }
        }
        
        request.getSession().setAttribute("client",udt);
        return mapping.findForward(SUCCESS);



    }
        
}
