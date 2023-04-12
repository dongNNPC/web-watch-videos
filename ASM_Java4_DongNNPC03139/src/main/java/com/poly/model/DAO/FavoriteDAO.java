package com.poly.model.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.poly.model.Favorite;
import com.poly.util.JpaUtils;

public class FavoriteDAO {
	// kết nối cơ sử dữ liệu
	private EntityManager em = JpaUtils.getEntityManager();

	@Override
	protected void finalize() throws Throwable {
		em.close();
		super.finalize();
	}

	public Favorite create(Favorite entity) {
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

	public Favorite update(Favorite entity) {

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

	public Favorite remove(int id) {
		try {
			em.getTransaction().begin();
			Favorite entity = this.findById(id);
			// xoá
			em.remove(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public Favorite findById(int id) {
		Favorite entity = em.find(Favorite.class, id);
		return entity;
	}

	public List<Favorite> findAll() {
		String jpql = "SELECT f FROM Favorite f";
		TypedQuery<Favorite> query = em.createQuery(jpql, Favorite.class);
		List<Favorite> list = query.getResultList();
		return list;
	}

	public List<Favorite> findAllVideoIdByUser(String id) {
		String jpql = "SELECT f FROM Favorite f WHERE f.user.id =:id"; // câu lênh sql
		TypedQuery<Favorite> query = em.createQuery(jpql, Favorite.class);
		query.setParameter("id", id);
		List<Favorite> list = query.getResultList(); // trả dữ liệu về 1 cái list
		return list;
	}
}
