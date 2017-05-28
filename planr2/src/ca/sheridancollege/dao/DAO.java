package ca.sheridancollege.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import ca.sheridancollege.beans.Customer;
import ca.sheridancollege.beans.User;

public class DAO {
	
	private ArrayList<Customer>customerList=new ArrayList<Customer>();

	SessionFactory sessionFactory = new Configuration()
			.configure("ca/sheridancollege/config/hibernate.cfg.xml")
			.buildSessionFactory();

	public User findByUserName(String username) {
		List<User> users = sessionFactory.openSession()
			.createQuery("from User where username=:username")
			.setParameter("username", username)
			.getResultList();

		if (users.size() > 0) return users.get(0);
		else return null;
	}
	
	public void createUser(User user) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		session.save(user);

		session.getTransaction().commit();
		session.close();
	}
	
	public void transaction()
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
	}
	
	public void setCustomerList(ArrayList<Customer>customerList)
	{
		this.customerList=customerList;
	}
	
	public void saveCustomer(Customer customer)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		session.saveOrUpdate(customer);
		
		session.getTransaction().commit();
		session.close();
	}
	
	
	
	public List<Customer> getCustomerList()
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		
		Query query = session.createNamedQuery("Customer.getCustomerList");
		List<Customer> customerList= query.getResultList();
		
		session.getTransaction().commit();
		session.close();
		return customerList;
	}
	
	public void deleteCustomer(int id)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		Customer customer=(Customer)session.get(Customer.class, id); 
		session.delete(customer);
		
		session.getTransaction().commit();
		session.close();
	}
	
	public Customer getByID(int id)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		Customer customer= (Customer) session.getNamedQuery("Customer.byId").setParameter("id", id).getResultList().get(0);
		
		return customer;
		
		
		
	}
}
