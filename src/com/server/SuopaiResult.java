package com.server;

public class SuopaiResult {

	String jobId;
	String status;
	String statusTime;
	String remark;
	String orderId;
	public String getJobId() {
		return jobId;
	}
	public void setJobId(String jobId) {
		this.jobId = jobId;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getStatusTime() {
		return statusTime;
	}
	public void setStatusTime(String statusTime) {
		this.statusTime = statusTime;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public SuopaiResult() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SuopaiResult(String jobId, String status, String statusTime, String remark, String orderId) {
		super();
		this.jobId = jobId;
		this.status = status;
		this.statusTime = statusTime;
		this.remark = remark;
		this.orderId = orderId;
	}
	
	
}
