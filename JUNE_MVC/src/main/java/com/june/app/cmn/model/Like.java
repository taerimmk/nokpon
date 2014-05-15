
package com.june.app.cmn.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

import com.june.app.cmn.model.Pagination;

/**
 * Simple JavaBean domain object representing an person.
 * 
 * @author Ken Krebs
 */
@Entity
@Table(name = "BBS_LIKE")
public class Like extends Pagination {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "LIKE_ID")
	private Integer likeId;

	
	@Column(name = "LIKE_CNT")
	@NotNull
	private Integer likeCnt;

	public Integer getLikeId() {
		return likeId;
	}

	public void setLikeId(Integer likeId) {
		this.likeId = likeId;
	}


	public Integer getLikeCnt() {
		return likeCnt;
	}

	public void setLikeCnt(Integer likeCnt) {
		this.likeCnt = likeCnt;
	}

	@Override
	public String toString() {
		return "Like [likeId=" + likeId + ", likeCnt=" + likeCnt + "]";
	}

	
	
}
