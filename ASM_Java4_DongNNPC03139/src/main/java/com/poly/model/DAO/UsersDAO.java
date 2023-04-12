package com.poly.model.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.model.User;
import com.poly.model.Video;
import com.poly.util.JpaUtils;

public class UsersDAO {
	// kết nối cơ sử dữ liệu
	private EntityManager em = JpaUtils.getEntityManager();

	@Override
	protected void finalize() throws Throwable {
		em.close();
		super.finalize();
	}

	public User create(User entity) {
		try {
			em.getTransaction().begin();
			// tạo mới
			em.persist(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public User update(User entity) {

		try {
			em.getTransaction().begin();
			// cập nhật
			em.merge(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public User remove(String id) {
		try {
			em.getTransaction().begin();
			User entity = this.findById(id);
			// xoá
			em.remove(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public User findById(String id) {
		User entity = em.find(User.class, id);
		return entity;
	}

	public List<User> findAll() {
		String jpql = "SELECT u FROM User u";
		TypedQuery<User> query = em.createQuery(jpql, User.class);
		List<User> list = query.getResultList();
		return list;
	}

	public List<User> findAllPage(int page, int size) {
		String jpql = "SELECT u FROM User u"; // câu lênh sql
		TypedQuery<User> query = em.createQuery(jpql, User.class);
		query.setFirstResult(page * size);
		query.setMaxResults(size);
		List<User> list = query.getResultList(); // trả dữ liệu về 1 cái list
		return list;

	}

}
