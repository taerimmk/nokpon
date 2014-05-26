package com.june.app.board.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

import com.june.app.cmn.model.Like;
import com.june.app.cmn.model.Pagination;
import com.june.app.user.model.UserInfo;

/**
 * Simple JavaBean domain object representing an person.
 * 
 * @author Ken Krebs
 */
@Entity
@Table(name = "BBS_COMMENT")
public class Comment extends Pagination {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "NTT_ID")
	private Integer nttId;

	@Column(name = "P_NTT_ID", updatable=false)
	@NotNull
	private Integer pNttId;
	
	@Column(name = "TO_USER_ID")
	private Integer toUserId;
	
	@Column(name = "NTT_CN")
	private Integer nttCn;
	
	@Column(name = "ANSWER_YN")
	private Integer answerYn;
	
	@Column(name = "SORT_ORDR")
	private Integer sortOrdr;
	
	@Column(name = "USE_YN")
	private Integer useYn;
	
	@Column(name = "ATCH_FILE_ID")
	private String atchFile_id;
	
	@Column(name = "REGI_DATE", updatable=false)
	private Date regiDate;
	
	@Column(name = "REGI_ID", updatable=false)
	private Integer regiId;
	
	@Column(name = "UPDT_DATE")
	private Date updtDate;
	
	@Column(name = "UPDT_ID")
	private Integer updtId;
	
	@Column(name = "BBS_DIV")
	@NotEmpty
	private String bbsDiv;

	@OneToOne()
	@JoinColumn(name = "LIKE_ID", insertable = false, updatable = false)
	private Like like;
	
	@ManyToOne()
    @JoinColumn(name = "REGI_ID", insertable=false,updatable=false)
    private UserInfo user;
	
	@ManyToOne()
    @JoinColumn(name = "TO_USER_ID", insertable=false,updatable=false)
    private UserInfo toUser;

	public Integer getNttId() {
		return nttId;
	}

	public void setNttId(Integer nttId) {
		this.nttId = nttId;
	}

	public Integer getpNttId() {
		return pNttId;
	}

	public void setpNttId(Integer pNttId) {
		this.pNttId = pNttId;
	}

	public Integer getToUserId() {
		return toUserId;
	}

	public void setToUserId(Integer toUserId) {
		this.toUserId = toUserId;
	}

	public Integer getNttCn() {
		return nttCn;
	}

	public void setNttCn(Integer nttCn) {
		this.nttCn = nttCn;
	}

	public Integer getAnswerYn() {
		return answerYn;
	}

	public void setAnswerYn(Integer answerYn) {
		this.answerYn = answerYn;
	}

	public Integer getSortOrdr() {
		return sortOrdr;
	}

	public void setSortOrdr(Integer sortOrdr) {
		this.sortOrdr = sortOrdr;
	}

	public Integer getUseYn() {
		return useYn;
	}

	public void setUseYn(Integer useYn) {
		this.useYn = useYn;
	}

	public String getAtchFile_id() {
		return atchFile_id;
	}

	public void setAtchFile_id(String atchFile_id) {
		this.atchFile_id = atchFile_id;
	}

	public Date getRegiDate() {
		return regiDate;
	}

	public void setRegiDate(Date regiDate) {
		this.regiDate = regiDate;
	}

	public Integer getRegiId() {
		return regiId;
	}

	public void setRegiId(Integer regiId) {
		this.regiId = regiId;
	}

	public Date getUpdtDate() {
		return updtDate;
	}

	public void setUpdtDate(Date updtDate) {
		this.updtDate = updtDate;
	}

	public Integer getUpdtId() {
		return updtId;
	}

	public void setUpdtId(Integer updtId) {
		this.updtId = updtId;
	}

	public Like getLike() {
		return like;
	}

	public void setLike(Like like) {
		this.like = like;
	}

	public UserInfo getUser() {
		return user;
	}

	public void setUser(UserInfo user) {
		this.user = user;
	}

	public UserInfo getToUser() {
		return toUser;
	}

	public void setToUser(UserInfo toUser) {
		this.toUser = toUser;
	}

	@Override
	public String toString() {
		return "Comment [nttId=" + nttId + ", pNttId=" + pNttId + ", toUserId="
				+ toUserId + ", nttCn=" + nttCn + ", answerYn=" + answerYn
				+ ", sortOrdr=" + sortOrdr + ", useYn=" + useYn
				+ ", atchFile_id=" + atchFile_id + ", regiDate=" + regiDate
				+ ", regiId=" + regiId + ", updtDate=" + updtDate + ", updtId="
				+ updtId + ", like=" + like + ", user=" + user + ", toUser="
				+ toUser + "]";
	}
	
	
}
