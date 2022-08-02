
package com.mycompany.artunited.dao;

import com.mycompany.artunited.entities.User;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;


public class UserDao {
    private SessionFactory factory;

    public UserDao(SessionFactory factory) {
        this.factory = factory;
    }
    
    
    //get user by email and password
    
    public User getUserByEmailAndPassword(String email,String password){
        User user=null;
        try{
            String query;
            query = "from User where useEmail=: m and userPassword =: u";
            Session session=this.factory.openSession();
            Query que=(Query) session.createQuery(query);
            que.setParameter("m",email);
            que.setParameter("u",password);
            user=(User)que.setMaxResults(1);
            
            session.close();
        }catch(Exception e){
            e.printStackTrace();
        }
        return user;
    }
}
