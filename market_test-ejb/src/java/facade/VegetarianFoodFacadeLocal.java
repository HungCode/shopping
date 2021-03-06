/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package facade;

import entity.VegetarianFood;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author laptopfpt.com.vn
 */
@Local
public interface VegetarianFoodFacadeLocal {

    void create(VegetarianFood vegetarianFood);

    void edit(VegetarianFood vegetarianFood);

    void remove(VegetarianFood vegetarianFood);

    VegetarianFood find(Object id);

    List<VegetarianFood> findAll();

    List<VegetarianFood> findRange(int[] range);

    int count();
    
}
