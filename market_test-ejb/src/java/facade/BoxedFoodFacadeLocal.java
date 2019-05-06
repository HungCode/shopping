/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package facade;

import entity.BoxedFood;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author laptopfpt.com.vn
 */
@Local
public interface BoxedFoodFacadeLocal {

    void create(BoxedFood boxedFood);

    void edit(BoxedFood boxedFood);

    void remove(BoxedFood boxedFood);

    BoxedFood find(Object id);

    List<BoxedFood> findAll();

    List<BoxedFood> findRange(int[] range);

    int count();
    
}
