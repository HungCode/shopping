/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package facade;

import entity.PupularCustomer;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author laptopfpt.com.vn
 */
@Local
public interface PupularCustomerFacadeLocal {

    void create(PupularCustomer pupularCustomer);

    void edit(PupularCustomer pupularCustomer);

    void remove(PupularCustomer pupularCustomer);

    PupularCustomer find(Object id);

    List<PupularCustomer> findAll();

    List<PupularCustomer> findRange(int[] range);

    int count();
    
}
