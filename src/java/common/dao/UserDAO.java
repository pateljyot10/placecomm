    /*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package common.dao;

import java.util.List;
import hibernate.CmnRoleActivationMpg;
import hibernate.CmnUserMst;
import hibernate.CmnUserRoleRlt;

/**
 *
 * @author SACHIN PATEL
 */
public interface UserDAO {
    
   void createUser(CmnUserMst cmnUserMst) throws Exception;
   
   void insertUserRoleMpgDtl(CmnUserRoleRlt cmnUserRoleRlt) throws Exception;
   
   List<CmnUserMst> validateUserName(String lStrUserName) throws Exception;
   
   List<CmnRoleActivationMpg> validateActivationCode(String lStrActivationCode) throws Exception;
}
