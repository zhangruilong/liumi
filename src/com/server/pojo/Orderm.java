package com.server.pojo;

import java.sql.Date;
/**
 * 充值记录 实体类
 *@author ZhangRuiLong
 */
public class Orderm
{
   /**
    * ID,主键
    */
   private String ordermid; 
   /**
    * 编码
    */
   private String ordermcode;   
   /**
    * 描述
    */
   private String ordermdetail;   
   /**
    * 充值号码
    */
   private String ordermphone;   
   /**
    * 充值时间
    */
   private String ordermdate;   
   /**
    * 充值套餐
    */
   private String ordermgoods;   
   /**
    * 充值金额
    */
   private String ordermmoney;   
   /**
    * 归属地
    */
   private String ordermplace;   
   /**
    * 用户
    */
   private String ordermcustomer;   
   /**
    * 状态
    */
   private String ordermstatue;   
    //属性方法	    
     /**
	 *设置主键"ID"属性
	 *@param ordermid 实体的Ordermid属性
	 */
	public void setOrdermid(String ordermid)
	{
		this.ordermid = ordermid;
	}
	
	/**
	 *获取主键"ID"属性
	 */
	public String getOrdermid()
	{
		return this.ordermid;
	}

	/**
	 *设置"编码"属性
	 *@param ordermcode 实体的Ordermcode属性
	 */
	public void setOrdermcode(String ordermcode)
	{
		this.ordermcode = ordermcode;
	}
	
	/**
	 *获取"编码"属性
	 */
	public String getOrdermcode()
	{
		return this.ordermcode;
	}	   

	/**
	 *设置"描述"属性
	 *@param ordermdetail 实体的Ordermdetail属性
	 */
	public void setOrdermdetail(String ordermdetail)
	{
		this.ordermdetail = ordermdetail;
	}
	
	/**
	 *获取"描述"属性
	 */
	public String getOrdermdetail()
	{
		return this.ordermdetail;
	}	   

	/**
	 *设置"充值号码"属性
	 *@param ordermphone 实体的Ordermphone属性
	 */
	public void setOrdermphone(String ordermphone)
	{
		this.ordermphone = ordermphone;
	}
	
	/**
	 *获取"充值号码"属性
	 */
	public String getOrdermphone()
	{
		return this.ordermphone;
	}	   

	/**
	 *设置"充值时间"属性
	 *@param ordermdate 实体的Ordermdate属性
	 */
	public void setOrdermdate(String ordermdate)
	{
		this.ordermdate = ordermdate;
	}
	
	/**
	 *获取"充值时间"属性
	 */
	public String getOrdermdate()
	{
		return this.ordermdate;
	}	   

	/**
	 *设置"充值套餐"属性
	 *@param ordermgoods 实体的Ordermgoods属性
	 */
	public void setOrdermgoods(String ordermgoods)
	{
		this.ordermgoods = ordermgoods;
	}
	
	/**
	 *获取"充值套餐"属性
	 */
	public String getOrdermgoods()
	{
		return this.ordermgoods;
	}	   

	/**
	 *设置"充值金额"属性
	 *@param ordermmoney 实体的Ordermmoney属性
	 */
	public void setOrdermmoney(String ordermmoney)
	{
		this.ordermmoney = ordermmoney;
	}
	
	/**
	 *获取"充值金额"属性
	 */
	public String getOrdermmoney()
	{
		return this.ordermmoney;
	}	   

	/**
	 *设置"归属地"属性
	 *@param ordermplace 实体的Ordermplace属性
	 */
	public void setOrdermplace(String ordermplace)
	{
		this.ordermplace = ordermplace;
	}
	
	/**
	 *获取"归属地"属性
	 */
	public String getOrdermplace()
	{
		return this.ordermplace;
	}	   

	/**
	 *设置"用户"属性
	 *@param ordermcustomer 实体的Ordermcustomer属性
	 */
	public void setOrdermcustomer(String ordermcustomer)
	{
		this.ordermcustomer = ordermcustomer;
	}
	
	/**
	 *获取"用户"属性
	 */
	public String getOrdermcustomer()
	{
		return this.ordermcustomer;
	}	   

	/**
	 *设置"状态"属性
	 *@param ordermstatue 实体的Ordermstatue属性
	 */
	public void setOrdermstatue(String ordermstatue)
	{
		this.ordermstatue = ordermstatue;
	}
	
	/**
	 *获取"状态"属性
	 */
	public String getOrdermstatue()
	{
		return this.ordermstatue;
	}	   
	public Orderm() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Orderm(
		String ordermid
	 	,String ordermcode
	 	,String ordermdetail
	 	,String ordermphone
	 	,String ordermdate
	 	,String ordermgoods
	 	,String ordermmoney
	 	,String ordermplace
	 	,String ordermcustomer
	 	,String ordermstatue
		 ){
		super();
		this.ordermid = ordermid;
	 	this.ordermcode = ordermcode;
	 	this.ordermdetail = ordermdetail;
	 	this.ordermphone = ordermphone;
	 	this.ordermdate = ordermdate;
	 	this.ordermgoods = ordermgoods;
	 	this.ordermmoney = ordermmoney;
	 	this.ordermplace = ordermplace;
	 	this.ordermcustomer = ordermcustomer;
	 	this.ordermstatue = ordermstatue;
	}
}

