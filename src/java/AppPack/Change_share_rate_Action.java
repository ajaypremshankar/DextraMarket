/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package AppPack;

import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForward;

/**
 *
 * @author ajay prem shankar
 */
public class Change_share_rate_Action extends org.apache.struts.action.Action {
    
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
        Change_share_rate_Bean bean=(Change_share_rate_Bean)form;
        
        Event_Data ed=(Event_Data)request.getSession().getAttribute("client");
        try{
        int i=Integer.parseInt(bean.getNew_rate());
        }
        catch(NumberFormatException e){
         request.getSession().setAttribute("error","You entered non-numeric Value As NEW RATE");
            return mapping.getInputForward();

        }

        String query="update event set rate='"+bean.getNew_rate()+"' where event_id='"+ed.getEvent_id()+"'";
        if(DBOperation.DBUpdate(query)>0){
        ed.setRate(bean.getNew_rate());
        
        query="select * from user_share_detail where event_id='"+ed.getEvent_id()+"'";
        ResultSet rs=DBOperation.getRecord(query);

        ArrayList<String> id=new ArrayList<String>();
        ArrayList<String> rate=new ArrayList<String>();
        ArrayList<String> count=new ArrayList<String>();
        while(rs.next()){
        id.add(rs.getString("id"));
        rate.add(rs.getString("rate"));
        count.add(rs.getString("share_count"));
        query="update user_share_detail set rate='"+bean.getNew_rate()+"' where event_id='"+rs.getString("event_id")+"'";
        DBOperation.DBUpdate(query);
        }

        ResultSet rs1;
        for(int i=0;i<id.size();i++){
        query="select type from user_login where id='"+id.get(i)+"'";
        rs=DBOperation.getRecord(query);
        if(rs.next()){
        if(rs.getString("type").equalsIgnoreCase("group")){
        query="select balance from user_group where id='"+id.get(i)+"'";
        rs1=DBOperation.getRecord(query);
        rs1.next();
        int balance=Integer.parseInt(rs1.getString("balance"))+(Integer.parseInt(bean.getNew_rate())-Integer.parseInt(rate.get(i)))*Integer.parseInt(count.get(i));

        query="update user_group set balance='"+balance+"' where id='"+id.get(i)+"'";
        DBOperation.DBUpdate(query);

        }
        else{
        query="select balance from faculty where id='"+id.get(i)+"'";
        rs1=DBOperation.getRecord(query);
        rs1.next();
        int balance=Integer.parseInt(rs1.getString("balance"))+(Integer.parseInt(bean.getNew_rate())-Integer.parseInt(rate.get(i)))*Integer.parseInt(count.get(i));

        query="update user_group set balance='"+balance+"' where id='"+id.get(i)+"'";
        DBOperation.DBUpdate(query);

        }
        }
        }
        request.getSession().setAttribute("error","Rate reflected SUCCESSFULLY ..");
        return mapping.findForward(SUCCESS);

        }
        
        else{
        request.getSession().setAttribute("error","Something went Wrong");
            return mapping.getInputForward();
        
        }
        }
}
