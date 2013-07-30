/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package user.action;

import hibernate.CmnUserMst;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.io.FileUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;
import user.dao.UserPersonalDtlDAO;
import user.dao.UserPersonalDtlDAOImpl;
import user.form.UserPersonalDtlForm;
import user.model.UserPersonalDtls;

/**
 *
 * @author SACHIN PATEL
 */
public class UserPersonalDtlAction extends org.apache.struts.action.Action {

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
        UserPersonalDtlDAO lObjUserPersonalDtlDAO = new UserPersonalDtlDAOImpl();
        UserPersonalDtls lObjUserPersonalDtl = new UserPersonalDtls();
        CmnUserMst lObjCmnUserMst = new CmnUserMst();
        SimpleDateFormat simpleDateFmt = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
        Calendar cal = Calendar.getInstance();
        UserPersonalDtlForm userPersonalDtlForm = (UserPersonalDtlForm)form;
        try
        {
            HttpSession session = request.getSession();
            
            ServletContext context = session.getServletContext();
            String filePath = context.getRealPath("/");
            if (userPersonalDtlForm.getUserPhoto() != null) {
                File fileToCreate = new File(filePath, userPersonalDtlForm.getUserPhoto().getName());
                System.out.println("userPersonalDtlForm.getUserPhoto().geturi..."+userPersonalDtlForm.getUserPhoto().getPath());
                
                FileUtils.copyFile(userPersonalDtlForm.getUserPhoto(), fileToCreate);
                lObjUserPersonalDtl.setPersonPhoto(filePath + userPersonalDtlForm.getUserPhoto());
            }
            lObjCmnUserMst = (CmnUserMst) session.getAttribute("cmnUserMst");
            
            lObjUserPersonalDtl.setPersonName(userPersonalDtlForm.getPersonName());
            lObjUserPersonalDtl.setDateOfBirth(simpleDateFmt.parse(userPersonalDtlForm.getDateOfBirth()));
            lObjUserPersonalDtl.setGender(userPersonalDtlForm.getGender());
            lObjUserPersonalDtl.setPrimaryLangauge(userPersonalDtlForm.getPrimaryLangauge());
            lObjUserPersonalDtl.setSecondaryLanguage(userPersonalDtlForm.getSecondaryLanguage());
            lObjUserPersonalDtl.setInterests(userPersonalDtlForm.getInterests());
            lObjUserPersonalDtl.setCurrentCity(userPersonalDtlForm.getCurrentCity());
            lObjUserPersonalDtl.setCreatedUserId(lObjCmnUserMst.getUserId());
            lObjUserPersonalDtl.setCreatedDate(cal.getTime());
            lObjUserPersonalDtlDAO.saveUserPersonalDtls(lObjUserPersonalDtl);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return mapping.findForward(SUCCESS);
    }
}
