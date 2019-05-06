/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package facade;

import entity.VipCustomer;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author laptopfpt.com.vn
 */
@Local
public interface VipCustomerFacadeLocal {

    void create(VipCustomer vipCustomer);

    void edit(VipCustomer vipCustomer);

    void remove(VipCustomer vipCustomer);

    VipCustomer find(Object id);

    List<VipCustomer> findAll();

    List<VipCustomer> findRange(int[] range);

    int count();
    
}
