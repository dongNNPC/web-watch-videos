package com.poly.model.DAO;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.model.Share;
import com.poly.util.JpaUtils;

public class ShareDao {
	// kết nối cơ sử dữ liệu
	private EntityManager em = JpaUtils.getEntityManager();

	@Override
	protected void finalize() throws Throwable {
		em.close();
		super.finalize();
	}

	public Share create(Share entity) {
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

	public Share update(Share entity) {

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

	public Share remove(String id) {
		try {
			em.getTransaction().begin();
			Share entity = this.findById(id);
			// xoá
			em.remove(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public Share findById(String id) {
		Share entity = em.find(Share.class, id);
		return entity;
	}

	public List<Share> findAll() {
		String jpql = "SELECT s FROM Share s";
		TypedQuery<Share> query = em.createQuery(jpql, Share.class);
		List<Share> list = query.getResultList();
		return list;
	}

}
