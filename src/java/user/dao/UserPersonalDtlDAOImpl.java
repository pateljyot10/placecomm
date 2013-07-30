/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package user.dao;

import common.helper.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import user.model.UserPersonalDtls;

/**
 *
 * @author SACHIN PATEL
 */
public class UserPersonalDtlDAOImpl implements UserPersonalDtlDAO{

    @Override
    public void saveUserPersonalDtls(UserPersonalDtls userPersonalDtl) throws Exception {
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            Transaction tx = session.beginTransaction();
            session.save(userPersonalDtl);
            tx.commit();

        } catch (Exception e) {
            throw e;
        } finally {
            session.close();
        }
    }
    
}
