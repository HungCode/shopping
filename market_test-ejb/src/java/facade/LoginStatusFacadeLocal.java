/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package facade;

import entity.LoginStatus;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author laptopfpt.com.vn
 */
@Local
public interface LoginStatusFacadeLocal {

    void create(LoginStatus loginStatus);

    void edit(LoginStatus loginStatus);

    void remove(LoginStatus loginStatus);

    LoginStatus find(Object id);

    List<LoginStatus> findAll();

    List<LoginStatus> findRange(int[] range);

    int count();
    
}
