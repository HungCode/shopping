/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package facade;

import entity.Television;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author laptopfpt.com.vn
 */
@Local
public interface TelevisionFacadeLocal {

    void create(Television television);

    void edit(Television television);

    void remove(Television television);

    Television find(Object id);

    List<Television> findAll();

    List<Television> findRange(int[] range);

    int count();
    
}
