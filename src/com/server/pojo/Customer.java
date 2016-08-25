package com.server.pojo;

import java.sql.Date;
/**
 * 客户 实体类
 *@author ZhangRuiLong
 */
public class Customer
{
   /**
    * ID,主键
    */
   private String customerid; 
   /**
    * 编码
    */
   private String customercode;   
   /**
    * 描述
    */
   private String customerdetail;   
   /**
    * 手机号码
    */
   private String customerphone;   
   /**
    * 归属地
    */
   private String customerplace;   
   /**
    * 注册时间
    */
   private String customerdate;   
   /**
    * 用户名
    */
   private String customername;   
   /**
    * 密码
    */
   private String customerpassword;   
   /**
    * 积分
    */
   private String customerpoint;   
   /**
    * openid
    */
   private String openid;   
   /**
    * 状态
    */
   private String customerstatue;   
    //属性方法	    
     /**
	 *设置主键"ID"属性
	 *@param customerid 实体的Customerid属性
	 */
	public void setCustomerid(String customerid)
	{
		this.customerid = customerid;
	}
	
	/**
	 *获取主键"ID"属性
	 */
	public String getCustomerid()
	{
		return this.customerid;
	}

	/**
	 *设置"编码"属性
	 *@param customercode 实体的Customercode属性
	 */
	public void setCustomercode(String customercode)
	{
		this.customercode = customercode;
	}
	
	/**
	 *获取"编码"属性
	 */
	public String getCustomercode()
	{
		return this.customercode;
	}	   

	/**
	 *设置"描述"属性
	 *@param customerdetail 实体的Customerdetail属性
	 */
	public void setCustomerdetail(String customerdetail)
	{
		this.customerdetail = customerdetail;
	}
	
	/**
	 *获取"描述"属性
	 */
	public String getCustomerdetail()
	{
		return this.customerdetail;
	}	   

	/**
	 *设置"手机号码"属性
	 *@param customerphone 实体的Customerphone属性
	 */
	public void setCustomerphone(String customerphone)
	{
		this.customerphone = customerphone;
	}
	
	/**
	 *获取"手机号码"属性
	 */
	public String getCustomerphone()
	{
		return this.customerphone;
	}	   

	/**
	 *设置"归属地"属性
	 *@param customerplace 实体的Customerplace属性
	 */
	public void setCustomerplace(String customerplace)
	{
		this.customerplace = customerplace;
	}
	
	/**
	 *获取"归属地"属性
	 */
	public String getCustomerplace()
	{
		return this.customerplace;
	}	   

	/**
	 *设置"注册时间"属性
	 *@param customerdate 实体的Customerdate属性
	 */
	public void setCustomerdate(String customerdate)
	{
		this.customerdate = customerdate;
	}
	
	/**
	 *获取"注册时间"属性
	 */
	public String getCustomerdate()
	{
		return this.customerdate;
	}	   

	/**
	 *设置"用户名"属性
	 *@param customername 实体的Customername属性
	 */
	public void setCustomername(String customername)
	{
		this.customername = customername;
	}
	
	/**
	 *获取"用户名"属性
	 */
	public String getCustomername()
	{
		return this.customername;
	}	   

	/**
	 *设置"密码"属性
	 *@param customerpassword 实体的Customerpassword属性
	 */
	public void setCustomerpassword(String customerpassword)
	{
		this.customerpassword = customerpassword;
	}
	
	/**
	 *获取"密码"属性
	 */
	public String getCustomerpassword()
	{
		return this.customerpassword;
	}	   

	/**
	 *设置"积分"属性
	 *@param customerpoint 实体的Customerpoint属性
	 */
	public void setCustomerpoint(String customerpoint)
	{
		this.customerpoint = customerpoint;
	}
	
	/**
	 *获取"积分"属性
	 */
	public String getCustomerpoint()
	{
		return this.customerpoint;
	}	   

	/**
	 *设置"openid"属性
	 *@param openid 实体的Openid属性
	 */
	public void setOpenid(String openid)
	{
		this.openid = openid;
	}
	
	/**
	 *获取"openid"属性
	 */
	public String getOpenid()
	{
		return this.openid;
	}	   

	/**
	 *设置"状态"属性
	 *@param customerstatue 实体的Customerstatue属性
	 */
	public void setCustomerstatue(String customerstatue)
	{
		this.customerstatue = customerstatue;
	}
	
	/**
	 *获取"状态"属性
	 */
	public String getCustomerstatue()
	{
		return this.customerstatue;
	}	   
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Customer(
		String customerid
	 	,String customercode
	 	,String customerdetail
	 	,String customerphone
	 	,String customerplace
	 	,String customerdate
	 	,String customername
	 	,String customerpassword
	 	,String customerpoint
	 	,String openid
	 	,String customerstatue
		 ){
		super();
		this.customerid = customerid;
	 	this.customercode = customercode;
	 	this.customerdetail = customerdetail;
	 	this.customerphone = customerphone;
	 	this.customerplace = customerplace;
	 	this.customerdate = customerdate;
	 	this.customername = customername;
	 	this.customerpassword = customerpassword;
	 	this.customerpoint = customerpoint;
	 	this.openid = openid;
	 	this.customerstatue = customerstatue;
	}
}

