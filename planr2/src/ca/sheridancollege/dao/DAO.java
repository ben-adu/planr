package ca.sheridancollege.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import ca.sheridancollege.beans.Customer;
import ca.sheridancollege.beans.Inventory;
import ca.sheridancollege.beans.User;

public class DAO {
	
	private ArrayList<Customer>customerList=new ArrayList<Customer>();
	private ArrayList<Inventory>inventoryList = new ArrayList<Inventory>();

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
	
	public void createItem(Inventory inventory)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		session.save(inventory);
		
		session.getTransaction().commit();
		session.close();
		
	}
	
	public void saveItem(Inventory inventory)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		session.saveOrUpdate(inventory);
		
		session.getTransaction().commit();
		session.close();
	}
	
	public void  setInventoryList(ArrayList<Inventory>inventoryList)
	{
		this.inventoryList = inventoryList; 
	}
	
	public List<Inventory> getItemList()
	{
		Session session= sessionFactory.openSession();
		session.beginTransaction();
		
		Query query = session.createNamedQuery("Inventory.getItemList");
		List<Inventory> inventoryList = query.getResultList();
		
		session.getTransaction().commit();
		session.close();
		return inventoryList;
	}
	
	public void deleteInventory (int id)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		Inventory inventory =(Inventory) session.get(Inventory.class, id);
		session.delete(inventory);
		
		session.getTransaction().commit();
		session.close();
	}
	
	public Inventory getInventoryById(int id)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		Inventory inventory = (Inventory) session.getNamedQuery("Inventory.byId").setParameter("id", id).getResultList().get(0);
		
		return inventory;
	}
}
