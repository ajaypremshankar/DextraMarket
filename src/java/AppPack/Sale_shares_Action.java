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
public class Sale_shares_Action extends org.apache.struts.action.Action {
    
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

        Sale_shares_Bean bean1=(Sale_shares_Bean)form;
        User_Data_Table udt=(User_Data_Table) request.getSession().getAttribute("client");

        System.out.print(bean1.getTotal2());
        String event_id[]=bean1.getEvent_id();
        String share_count[]=bean1.getShare_count();
        String rate[]=bean1.getRate();
        String sell_count[]=bean1.getSell_count();

        int balance=Integer.parseInt(udt.getBalance());

        int n = event_id.length;
        for(int i=0;i<n;i++){
        if(Integer.parseInt(share_count[i])<Integer.parseInt(sell_count[i])){
        request.getSession().setAttribute("error","You Entered More shares to sell than you Have for "+event_id[i]);
        return mapping.getInputForward();
        }
        }

        ResultSet rs;
        int share_rem,share_cnt;
        for(int i=0;i<n;i++){
        String query="select * from event where event_id='"+event_id[i]+"'";


        rs=DBOperation.getRecord(query);
        if(rs.next()){
        share_rem=(Integer.parseInt(rs.getString("share_remaining"))+Integer.parseInt(sell_count[i]));
        query="update event set share_remaining='"+share_rem+"'";
        DBOperation.DBUpdate(query);

        share_cnt=(Integer.parseInt(share_count[i])-Integer.parseInt(sell_count[i]));
        query="update user_share_detail set share_count='"+share_cnt+"' where id='"+udt.getId()+"' and event_id='"+event_id[i]+"'";

        DBOperation.DBUpdate(query);


        balance+=Integer.parseInt(sell_count[i])*Integer.parseInt(rate[i]);

        }

        }
        if(udt.getType().equalsIgnoreCase("faculty")){
        String query="update faculty set balance='"+balance+"' where email='"+udt.getId()+"'";
        DBOperation.DBUpdate(query);

        }
        else{
        String query="update user_group set balance='"+balance+"' where id='"+udt.getId()+"'";
        DBOperation.DBUpdate(query);

        }
        udt.setBalance(balance+"");
        request.getSession().setAttribute("client",udt);
        return mapping.findForward(SUCCESS);
    }
}
