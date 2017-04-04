package ca.sheridancollege.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.NamedQuery;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import ca.sheridancollege.beans.User;
import ca.sheridancollege.beans.Wiki;


public class DAO {
	
	private ArrayList<Wiki> wikiList = new ArrayList<Wiki>();

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

	public void setWikiList(ArrayList<Wiki> wikiList)
	{
		this.wikiList = wikiList;
		
	}

	public void saveWiki(Wiki wiki)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		session.saveOrUpdate(wiki);

		session.getTransaction().commit();
		session.close();

	}

	public List<Wiki> getWikiList()
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		Query query = session.createNamedQuery("Wiki.getWikiList");
		List<Wiki> wikiList = query.getResultList();

		session.getTransaction().commit();
		session.close();
		return wikiList;

	}

	public List<Wiki> querybySubject(String subject)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();

//		CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
//		CriteriaQuery<Wiki> criteria = criteriaBuilder.createQuery(Wiki.class);
//
//		Root<Wiki> root = criteria.from(Wiki.class);
//		criteria.where(criteriaBuilder.equal(root.get("subject"), wiki));
		
		Query query = session.getNamedQuery("Wiki.bySubject");
		query.setParameter("subject", subject);

		List<Wiki> wikiList = (List<Wiki>)query.getResultList();

		session.getTransaction().commit();
		session.close();

		return wikiList;

	}

	public void updateWiki(int id)
	{
		Session session= sessionFactory.openSession();
		session.beginTransaction();
		
		
		
		Wiki wiki =(Wiki)session.get(Wiki.class, id);
		session.saveOrUpdate(wiki);
		
		session.getTransaction().commit();
		session.close();
	}

	public void deleteWiki(int id)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		
		
		Wiki wiki =(Wiki)session.get(Wiki.class, id);
		session.delete(wiki);
		
		session.getTransaction().commit();
		session.close();

	}
}
