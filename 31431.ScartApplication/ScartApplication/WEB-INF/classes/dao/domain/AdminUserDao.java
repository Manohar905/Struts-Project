package dao.domain;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;
import dao.HibernateUtil.HibernateUtil;
import dao.tables.Adminuser;

public class AdminUserDao {
	@SessionTarget
	Session session=null;
	@TransactionTarget
	Transaction transaction = null;

	@SuppressWarnings("unchecked")
	public List<Adminuser> findUser(Adminuser user) {
		session = HibernateUtil.getSessionfactory().openSession();
		List<Adminuser> users = new ArrayList<Adminuser>();
		try {
			transaction = session.beginTransaction();
			Query query = session
					.createQuery("from Adminuser where userid = :userid and password = :password");
			query.setParameter("userid", user.getUserid());
			query.setParameter("password", user.getPassword());
			users = query.list();
			transaction.commit();
		} catch (Exception e) {
			e.getMessage();
			e.toString();
			transaction.rollback();
		} finally {
			session.close();
		}
		return users;
	}
}