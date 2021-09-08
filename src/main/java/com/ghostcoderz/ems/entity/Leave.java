package com.ghostcoderz.ems.entity;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="leave")
public class Leave 
{
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String reason;
	private String desc;
	private Date startDate;
	private Date endDate;
	@Column(name="status",columnDefinition = "varchar2(30) default 'Requested'")
	private String status;
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="EMP_Id")
	private Employee employee;
	
	public Leave() {}

	public Leave(int id, String reason, String desc, Date startDate, Date endDate, String status) {
		this.id = id;
		this.reason = reason;
		this.desc = desc;
		this.startDate = startDate;
		this.endDate = endDate;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
}
