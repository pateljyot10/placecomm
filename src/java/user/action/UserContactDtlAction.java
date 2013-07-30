/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package user.action;

import hibernate.CmnUserMst;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import user.dao.UserContactDtlDAO;
import user.dao.UserContactDtlDAOImpl;
import user.form.UserContactDtlForm;
import user.model.UserContactDtls;

/**
 *
 * @author SACHIN PATEL
 */
public class UserContactDtlAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";

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
        
        UserContactDtlDAO lObjUserContactDtlDAO = new UserContactDtlDAOImpl();
        UserContactDtls lObjUserContactDtl = new UserContactDtls();
        Calendar cal = Calendar.getInstance();
        SimpleDateFormat simpleDateFmt = new SimpleDateFormat("yyyy-MM-dd");
        
        try
        {
            HttpSession session = request.getSession();
            CmnUserMst lObjCmnUserMst = (CmnUserMst) session.getAttribute("cmnUserMst");
            
            UserContactDtlForm userContactDtlForm = (UserContactDtlForm) form;
            lObjUserContactDtl.setMobileNo(userContactDtlForm.getMobileNo());
            lObjUserContactDtl.setHomeContactNo(userContactDtlForm.getHomeContactNo());
            lObjUserContactDtl.setWorkPhoneNo(userContactDtlForm.getWorkPhoneNo());
            lObjUserContactDtl.setUniversityWebmailId(userContactDtlForm.getUniversityWebmailId());
            lObjUserContactDtl.setPersonalEmailId(userContactDtlForm.getPersonalEmailId());
            lObjUserContactDtl.setWebsite(userContactDtlForm.getWebsite());
            lObjUserContactDtl.setBlog(userContactDtlForm.getBlog());
            lObjUserContactDtl.setPermanentAddress(userContactDtlForm.getPermanentAddress());
            lObjUserContactDtl.setCurrentAddress(userContactDtlForm.getCurrentAddress());
            if (userContactDtlForm.getUserContactId() != null) {
                
                lObjUserContactDtl.setUserContactId(userContactDtlForm.getUserContactId());
                lObjUserContactDtl.setUpdatedUserId(lObjCmnUserMst.getUserId());
                lObjUserContactDtl.setUpdatedDate(cal.getTime());
                lObjUserContactDtl.setCreatedUserId(userContactDtlForm.getCreatedUserId());
                lObjUserContactDtl.setCreatedDate(simpleDateFmt.parse(userContactDtlForm.getCreatedDate()));
            }
            else
            {
                lObjUserContactDtl.setCreatedUserId(lObjCmnUserMst.getUserId());
                lObjUserContactDtl.setCreatedDate(cal.getTime());
            }
            
            lObjUserContactDtlDAO.saveUserContactDtls(lObjUserContactDtl);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return mapping.findForward(SUCCESS);
    }
}
