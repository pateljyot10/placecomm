/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package GroupDiscussion;

import hibernate.ChatPad;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.json.simple.JSONObject;

/**
 *
 * @author admin
 */
public class GDCreateAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */


    /**
     * This is the action called from the Struts framework.
     *
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
        
        
        String chatPadName=request.getParameter("gdSubject");
        String chatPadDesc=request.getParameter("gdDesc");
        
        System.out.println(chatPadName);
        System.out.println(chatPadDesc);
        
        int gdId= insertGD_DB(new ChatPad(chatPadName, chatPadDesc));
        
            JSONObject jsonResult = new JSONObject();
            jsonResult.put("gdId", gdId);
            jsonResult.toJSONString();
            response.setContentType("application/json");
            System.out.println(jsonResult.toJSONString().toString());
            response.getWriter().write(jsonResult.toJSONString());
        
            return null;
    }

    private int insertGD_DB(ChatPad chatPad) {
        
        SessionFactory factory=hibernate.HibernateUtil.getSessionFactory();
        Session session=factory.openSession();    
        
        Transaction tx=null;
    // Insert message with Pad ID 1 and User Id Generated by JavaScript ex.1
        try{
        tx=session.beginTransaction();
        //session.save(pad);
        //session.save(user);
        session.save(chatPad);
        System.out.println("PAD ID is +++ "+chatPad.getChatPadId());
        tx.commit();
        session.close();
        return chatPad.getChatPadId();
        }catch(Exception ex){
        tx.rollback();
        session.close();
        ex.printStackTrace();
        return -1;
        }
    }
}
