/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package theAssignment;

import hibernate.AssgGroupMst;
import hibernate.AssgMst;
import hibernate.ChatMsg;
import hibernate.ChatUser;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.upload.FormFile;

/**
 *
 * @author admin
 */
public class CreateAssgForm extends org.apache.struts.action.ActionForm {
    
     private FormFile file;

     private int assgId;
     private String assgTitle;
     private String assgSubject;
     private String assgDetails;
     private Integer assgSubmitType;
     private Date assgSubmitDate;
     private String assgSubmissionDetails;

     
    private List<AssgMst> assgMstList;
    private List<AssgMst> assgMstSubmittedList;
    
    private List<ChatUser> userList;
    private List<ChatUser> rejectUserList;
    
    private List<AssgGroupMst> groupList;
    private List<AssgGroupMst> rejectGroupList;

    public List<AssgMst> getAssgMstSubmittedList() {
        return assgMstSubmittedList;
    }

    public void setAssgMstSubmittedList(List<AssgMst> assgMstSubmittedList) {
        this.assgMstSubmittedList = assgMstSubmittedList;
    }

    public String getAssgTitle() {
        return assgTitle;
    }

    public void setAssgTitle(String assgTitle) {
        this.assgTitle = assgTitle;
    }

    public String getAssgSubject() {
        return assgSubject;
    }

    public void setAssgSubject(String assgSubject) {
        this.assgSubject = assgSubject;
    }

    public String getAssgDetails() {
        return assgDetails;
    }

    public void setAssgDetails(String assgDetails) {
        this.assgDetails = assgDetails;
    }

    public Integer getAssgSubmitType() {
        return assgSubmitType;
    }

    public void setAssgSubmitType(Integer assgSubmitType) {
        this.assgSubmitType = assgSubmitType;
    }

    public Date getAssgSubmitDate() {
        return assgSubmitDate;
    }

    public void setAssgSubmitDate(Date assgSubmitDate) {
        this.assgSubmitDate = assgSubmitDate;
    }

    public String getAssgSubmissionDetails() {
        return assgSubmissionDetails;
    }

    public void setAssgSubmissionDetails(String assgSubmissionDetails) {
        this.assgSubmissionDetails = assgSubmissionDetails;
    }

    
    
    
    
    
    public List<AssgGroupMst> getRejectGroupList() {
        return rejectGroupList;
    }

    public void setRejectGroupList(List<AssgGroupMst> rejectGroupList) {
        this.rejectGroupList = rejectGroupList;
    }
    
    public int getAssgId() {
        return assgId;
    }

    public void setAssgId(int assgId) {
        this.assgId = assgId;
    }

    
    
    
    public List<ChatUser> getRejectUserList() {
        return rejectUserList;
    }

    public void setRejectUserList(List<ChatUser> rejectUserList) {
        this.rejectUserList = rejectUserList;
    }
    
    public List<AssgGroupMst> getGroupList() {
        return groupList;
    }

    public void setGroupList(List<AssgGroupMst> groupList) {
        this.groupList = groupList;
    }
    
    
    
    public List<AssgMst> getAssgMstList() {
        return assgMstList;
    }

    public List<ChatUser> getUserList() {
        return userList;
    }

    public void setUserList(List<ChatUser> userList) {
        this.userList = userList;
    }

    public void setAssgMstList(List<AssgMst> assgMstList) {
        this.assgMstList = assgMstList;
    }

    
	public FormFile getFile() {
	System.out.println("Getting the File");
            return file;
	}
 
	public void setFile(FormFile file) {
            System.out.println("Setting the File");
            this.file = file;
	}
 
    /**
     *
     */
    public CreateAssgForm() {
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
    
    ///////////////////////***************************************
    // Include Errors from the below site                       //
    //http://www.mkyong.com/struts/struts-file-upload-example/  //
    ///////////////////////***************************************
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        System.out.println(request.getParameter("callmethod"));
        ActionErrors errors = new ActionErrors();
//        if (getName() == null || getName().length() < 1) {
//            errors.add("name", new ActionMessage("error.name.required"));
//            // TODO: add 'error.name.required' key to your resources
//        }
        return null;
    }
}
