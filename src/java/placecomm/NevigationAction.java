/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package placecomm;

import theAssignment.*;
import hibernate.AssgGroupMst;
import hibernate.AssgMst;
import hibernate.QzQuestions;
import hibernate.QzQuizes;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author admin
 */
public class NevigationAction extends DispatchAction  {

    /* forward name="success" path="" */
    private static final String COMPANY = "company";
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
    
    public ActionForward nevigate(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        System.out.println("Inside the Nevigation Handler");
      return mapping.findForward(COMPANY);
     
    }
                         
    
    
   
    
   
    
}
