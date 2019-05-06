/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package facade;

import entity.Watch;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author laptopfpt.com.vn
 */
@Local
public interface WatchFacadeLocal {

    void create(Watch watch);

    void edit(Watch watch);

    void remove(Watch watch);

    Watch find(Object id);

    List<Watch> findAll();

    List<Watch> findRange(int[] range);

    int count();
    
}
