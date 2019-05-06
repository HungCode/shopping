/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package facade;

import entity.FastFood;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author laptopfpt.com.vn
 */
@Local
public interface FastFoodFacadeLocal {

    void create(FastFood fastFood);

    void edit(FastFood fastFood);

    void remove(FastFood fastFood);

    FastFood find(Object id);

    List<FastFood> findAll();

    List<FastFood> findRange(int[] range);

    int count();
    
}
