/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package user.form;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import user.model.UserEducationDtls;

/**
 *
 * @author SACHIN PATEL
 */
public class UserEducationDtlForm extends org.apache.struts.action.ActionForm {
    
    List<UserEducationDtls> userEducationDtlList = new ArrayList<UserEducationDtls>();

    public List<UserEducationDtls> getUserEducationDtlList() {
        return userEducationDtlList;
    }

    public void setUserEducationDtlList(List<UserEducationDtls> userEducationDtlList) {
        this.userEducationDtlList = userEducationDtlList;
    }
    
    
     /**
     *
     */
    public UserEducationDtlForm() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
       try
       {
        String[] lStrName = request.getParameterValues("hdnName");
        String[] lStrCity = request.getParameterValues("hdnCity");
        String[] lStrFromYear = request.getParameterValues("hdnFromYear");
        String[] lStrToYear = request.getParameterValues("hdnToYear");
        String[] lStrSpecialization = request.getParameterValues("hdnSpecialization");
        String[] lStrTitle = request.getParameterValues("hdnTitle");
        String[] lStrMajor = request.getParameterValues("hdnMajor");
        String[] lStrMinorMajor = request.getParameterValues("hdnMinorMajor");
        
        UserEducationDtls lObjUserEducationDtl = null;
        for(int lIntCnt=0;lIntCnt<lStrName.length;lIntCnt++)
        {
            lObjUserEducationDtl = new UserEducationDtls();
            lObjUserEducationDtl.setSchoolCollegeName(lStrName[lIntCnt]);
            lObjUserEducationDtl.setSchoolCollegeCity(lStrCity[lIntCnt]);
            lObjUserEducationDtl.setSchoolCollegeFromYear(Long.parseLong(lStrFromYear[lIntCnt]));
            lObjUserEducationDtl.setSchoolCollegeToYear(Long.parseLong(lStrToYear[lIntCnt]));
            lObjUserEducationDtl.setSpecialization(lStrSpecialization[lIntCnt]);
            lObjUserEducationDtl.setGraduationMasterTitle(lStrTitle[lIntCnt]);
            lObjUserEducationDtl.setMajorSubject(lStrMajor[lIntCnt]);
            lObjUserEducationDtl.setOtherMinorMajorSubject(lStrMinorMajor[lIntCnt]);
            userEducationDtlList.add(lObjUserEducationDtl);
        }
        System.out.println("size of education list"+userEducationDtlList.size());
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }
        
        return errors;
    }
}
