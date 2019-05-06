/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package facade;

import entity.Computer;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author laptopfpt.com.vn
 */
@Local
public interface ComputerFacadeLocal {

    void create(Computer computer);

    void edit(Computer computer);

    void remove(Computer computer);

    Computer find(Object id);

    List<Computer> findAll();

    List<Computer> findRange(int[] range);

    int count();
    
}
