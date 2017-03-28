package ca.sheridancollege.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import ca.sheridancollege.beans.Tracker;

public class DAO
{
	SessionFactory sessionFactory = new Configuration().configure("ca/sheridancollege/config/hibernate.cfg.xml")
			.buildSessionFactory();
	
	//This method inserts data into the database
	public void populate(Tracker tracker)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		session.saveOrUpdate(tracker);
		
		session.getTransaction().commit();
		session.close();
	}
	
	//query by department
	public List<Tracker> queryErrorByDepartment(String department)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		Query query= session.getNamedQuery("Tracker.byDepartment");
		query.setParameter("department", department);
		
		List<Tracker> errorList = (List<Tracker>) query.getResultList();
		
		session.getTransaction().commit();
		session.close();
		return errorList;
	}


}
