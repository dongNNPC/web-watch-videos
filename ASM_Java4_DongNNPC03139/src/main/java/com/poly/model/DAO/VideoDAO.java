package com.poly.model.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import com.poly.model.Video;
import com.poly.util.JpaUtils;

public class VideoDAO {
	// kết nối cơ sử dữ liệu
	private EntityManager em = JpaUtils.getEntityManager();

	@Override
	protected void finalize() throws Throwable {
		em.close();
		super.finalize();
	}

	public Video create(Video entity) {
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

	public Video update(Video entity) {

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

	public Video remove(String id) {
		try {
			em.getTransaction().begin();
			Video entity = this.findById(id);
			// xoá
			em.remove(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public Video findById(String id) {
		Video entity = em.find(Video.class, id);
		return entity;
	}

	public List<Video> findAll() {
		String jpql = "SELECT v FROM Video v";
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		List<Video> list = query.getResultList();
		return list;
	}

	public List<Video> findAllPage(int page, int size) {
		String jpql = "SELECT v FROM Video v"; // câu lênh sql
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		query.setFirstResult(page * size);
		query.setMaxResults(size);
		List<Video> list = query.getResultList(); // trả dữ liệu về 1 cái list
		return list;

	}

	public List<Video> findAllRamdom(int id) {
		TypedQuery<Video> query = em.createNamedQuery("Report.random10", Video.class);
		query.setParameter("id", id);
		List<Video> list = query.getResultList(); // trả dữ liệu về 1 cái list
		return list;
	}
}
