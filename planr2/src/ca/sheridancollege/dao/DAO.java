package ca.sheridancollege.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import ca.sheridancollege.beans.Customer;
import ca.sheridancollege.beans.Event;
import ca.sheridancollege.beans.Inventory;
import ca.sheridancollege.beans.Map;
import ca.sheridancollege.beans.User;
import ca.sheridancollege.beans.UserRole;

public class DAO {
	
	private ArrayList<Customer>customerList=new ArrayList<Customer>();
	private ArrayList<Inventory>inventoryList = new ArrayList<Inventory>();
	private ArrayList<Map> mapList = new ArrayList<Map>();

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
	
	public void createUser(User user, UserRole userRole) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		session.save(user);
		session.save(userRole);

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
	
	public void saveEvent(Event event)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		session.saveOrUpdate(event);
		
		session.getTransaction().commit();
		session.close();
	}
	
	public List<Event> getEventList()
	{
		Session session= sessionFactory.openSession();
		session.beginTransaction();
		
		Query query = session.createNamedQuery("Event.getEventList");
		List<Event> eventList = query.getResultList();
		
		session.getTransaction().commit();
		session.close();
		return eventList;
	}
	public void deleteEvent (int id)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		Event event =(Event) session.get(Event.class, id);
		session.delete(event);
		
		session.getTransaction().commit();
		session.close();
	}
	
	public void saveMap(Map map)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		session.saveOrUpdate(map);
		session.getTransaction().commit();
		
		session.close();
	}

	public ArrayList<Map> getMapList()
	{
		return mapList;
	}

	public void setMapList(ArrayList<Map> mapList)
	{
		this.mapList = mapList;
	}
	

	
	
}
