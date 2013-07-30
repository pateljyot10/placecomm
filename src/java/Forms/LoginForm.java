/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Forms;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author admin
 */
public class LoginForm extends org.apache.struts.action.ActionForm {
    
    private String loginUsername;
    private String loginPassword;
    private String signupUsername;
    private String signupPassword;

    public String getLoginPassword() {
        System.out.println("Hi, inside getloginPassword...");
        return loginPassword;
    }

    public void setLoginPassword(String loginPassword) {
        System.out.println("Hi, inside setloginPassword...");
        this.loginPassword = loginPassword;
    }

    public String getLoginUsername() {
        return loginUsername;
    }

    public void setLoginUsername(String loginUsername) {
        this.loginUsername = loginUsername;
    }

    public String getSignupPassword() {
        return signupPassword;
    }

    public void setSignupPassword(String signupPassword) {
        this.signupPassword = signupPassword;
    }

    public String getSignupUsername() {
        return signupUsername;
    }

    public void setSignupUsername(String signupUsername) {
        this.signupUsername = signupUsername;
    }




    /**
     *
     */

    public LoginForm() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (getLoginUsername()== null || getLoginUsername().length() < 1) {
            errors.add("username", new ActionMessage("error.name.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        return errors;
    }
}
