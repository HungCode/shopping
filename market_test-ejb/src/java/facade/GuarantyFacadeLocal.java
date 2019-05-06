/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package facade;

import entity.Guaranty;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author laptopfpt.com.vn
 */
@Local
public interface GuarantyFacadeLocal {

    void create(Guaranty guaranty);

    void edit(Guaranty guaranty);

    void remove(Guaranty guaranty);

    Guaranty find(Object id);

    List<Guaranty> findAll();

    List<Guaranty> findRange(int[] range);

    int count();
    
}
