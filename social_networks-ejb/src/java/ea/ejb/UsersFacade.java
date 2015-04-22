/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ea.ejb;

import ea.entity.Users;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Kasia
 */
@Stateless
public class UsersFacade extends AbstractFacade<Users> {
    @PersistenceContext(unitName = "social_networks-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UsersFacade() {
        super(Users.class);
    }
    
    public boolean findLogin(String email, String password){
        Query q;
        q = em.createNamedQuery("Users.findLogin");
        q.setParameter("email", email);
        q.setParameter("password", password);
        List<Users> logged = q.getResultList();
        return !logged.isEmpty();      
     }
    
    public Users findByEmail(String email){
        Query q;
        q = em.createNamedQuery("Users.findByEmail");
        
        q.setParameter("email",email);
        List<Users> logged = q.getResultList();
        return logged.get(0);
    }
    
    public int findAllUsers(){
        Query q;
        q = em.createNamedQuery("Users.findAll");
        List<Users> logged = q.getResultList();
        return logged.size();
    }
    
}

