/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package facade;

import entity.Salary;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author laptopfpt.com.vn
 */
@Stateless
public class SalaryFacade extends AbstractFacade<Salary> implements SalaryFacadeLocal {
    @PersistenceContext(unitName = "market_test-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public SalaryFacade() {
        super(Salary.class);
    }
    
}
