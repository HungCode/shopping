/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package facade;

import entity.SkillBook;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author laptopfpt.com.vn
 */
@Local
public interface SkillBookFacadeLocal {

    void create(SkillBook skillBook);

    void edit(SkillBook skillBook);

    void remove(SkillBook skillBook);

    SkillBook find(Object id);

    List<SkillBook> findAll();

    List<SkillBook> findRange(int[] range);

    int count();
    
}
