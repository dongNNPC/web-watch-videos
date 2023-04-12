package com.poly.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The persistent class for the Shares database table.
 * 
 */
@Entity
@Table(name = "Shares")
@NamedQuery(name = "Share.findAll", query = "SELECT s FROM Share s")
public class Share implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Id")
	private int id;

	@Column(name = "Email")
	private String email;

	@Column(name = "ShareDate")
	private String shareDate;

	// bi-directional many-to-one association to User
	@ManyToOne
	@JoinColumn(name = "UserID")
	private User user;

	// bi-directional many-to-one association to Video
	@ManyToOne
	@JoinColumn(name = "VideoID")
	private Video video;

	public Share() {
	}

	public double getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getShareDate() {
		return this.shareDate;
	}

	public void setShareDate(String shareDate) {
		this.shareDate = shareDate;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Video getVideo() {
		return this.video;
	}

	public void setVideo(Video video) {
		this.video = video;
	}

}