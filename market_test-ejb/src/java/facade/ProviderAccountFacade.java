/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package facade;

import entity.ProviderAccount;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author laptopfpt.com.vn
 */
@Stateless
public class ProviderAccountFacade extends AbstractFacade<ProviderAccount> implements ProviderAccountFacadeLocal {
    @PersistenceContext(unitName = "market_test-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ProviderAccountFacade() {
        super(ProviderAccount.class);
    }
    
}
