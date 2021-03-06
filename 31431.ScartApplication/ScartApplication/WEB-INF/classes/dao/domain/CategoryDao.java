package dao.domain;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import dao.HibernateUtil.HibernateUtil;
import dao.tables.Category;

public class CategoryDao {

	HibernateUtil util = new HibernateUtil();

	public List<String> showCategoryName() {

		Session session = util.getSessionfactory().openSession();
		Transaction transaction = null;
		List<Category> category = new ArrayList<Category>();
		List<String> categoryName = new ArrayList<String>();
		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery("from Category");
			category = query.list();
			Iterator<Category> iterator = category.iterator();
			while(iterator.hasNext()) {
				Category category2 = (Category) iterator.next();
				categoryName.add((String)category2.getCategoryname());
			}
			transaction.commit();

		} catch (HibernateException e) {
			System.out.println("Exception Inside Category Dao");
			e.getMessage();
			e.toString();
			transaction.rollback();
		} finally {
			session.close();
		}
		return categoryName;
	}

	public List showAll() {

		Session session = util.getSessionfactory().openSession();
		Transaction transaction = null;
		List<Category> category = new ArrayList<Category>();
		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery("from Category");
			category = query.list();
			transaction.commit();

		} catch (HibernateException e) {
			System.out.println("Exception Inside Category Dao");
			e.getMessage();
			e.toString();
			transaction.rollback();
		} finally {
			session.close();
		}
		return category;
	}

	public void addCategory(Category category) {
		Session session = util.getSessionfactory().openSession();
		Transaction transaction = null;
		try{
			session.save(category);			
		}
		catch(HibernateException e){
			e.toString();
		}
		session.save(category);
	}
	
	public void delete(int id){
		Session session = util.getSessionfactory().openSession();
		try{
			Query query=session.createQuery("delete Category where categoryid = :categoryid");
			query.setParameter("categoryid", id);
			int result=query.executeUpdate();
			
		}catch(HibernateException e){
			e.toString();
		}
		finally{
			session.close();
		}
	}
	
	public Category viewCategory(int id){
		
		Session session = util.getSessionfactory().openSession();
		Transaction transaction = null;
		Category model=new Category();
		List<Category> category = new ArrayList<Category>();
		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery("from Category where categoryid = :categoryid");
			query.setParameter("categoryid", id);
			category = query.list();
			for (Iterator iterator = category.iterator(); iterator.hasNext();) {
				model = (Category) iterator.next();
				System.out.println(model.getCategoryname());
			}

		} catch (HibernateException e) {
			System.out.println("Exception Inside Category Dao");
			e.getMessage();
			e.toString();
			transaction.rollback();
		} finally {
			session.close();
		}
		return model;
	}
	
	public void updateCategory(Category category){
		Session session = util.getSessionfactory().openSession();
		try{
			Query query=session.createQuery("update Category set categoryname = :categoryname where categoryid = :categoryid");
			query.setParameter("categoryname", category.getCategoryname());
			query.setParameter("categoryid", category.getCategoryid());
			query.executeUpdate();			
		}
		catch(HibernateException e){
			e.toString();
		}
		finally{
			session.close();
		}
		
	}
}