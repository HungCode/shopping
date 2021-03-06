/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package facade;

import entity.WomenFashion;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author laptopfpt.com.vn
 */
@Local
public interface WomenFashionFacadeLocal {

    void create(WomenFashion womenFashion);

    void edit(WomenFashion womenFashion);

    void remove(WomenFashion womenFashion);

    WomenFashion find(Object id);

    List<WomenFashion> findAll();

    List<WomenFashion> findRange(int[] range);

    int count();
    
}
