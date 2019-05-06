/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package facade;

import entity.EmployeeAccount;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author laptopfpt.com.vn
 */
@Local
public interface EmployeeAccountFacadeLocal {

    void create(EmployeeAccount employeeAccount);

    void edit(EmployeeAccount employeeAccount);

    void remove(EmployeeAccount employeeAccount);

    EmployeeAccount find(Object id);

    List<EmployeeAccount> findAll();

    List<EmployeeAccount> findRange(int[] range);

    int count();
    
}
