package com.server.poco;

/**
 * 客户 实体类的常量
 *@author ZhangRuiLong
 */
public class CustomerPoco
{
   /**
    * 实体中文名
    */
   public static String NAME = "客户";
   /**
    * 实体表名
    */
   public static String TABLE = "Customer";
   /**
    * 实体主键
    */
   public static String[] KEYCOLUMN = {"customerid"};
   /**
    * 实体中文字段
    */
   public static String[] CHINESENAME = {
   		"ID",
	 	"编码",
	 	"描述",
	 	"手机号码",
	 	"归属地",
	 	"注册时间",
	 	"用户名",
	 	"密码",
	 	"积分",
	 	"openid",
	 	"状态",
	};
	/**
	 * 实体英文字段
	 */
   public static final String[] FIELDNAME = {
   		"customerid",
	 	"customercode",
	 	"customerdetail",
	 	"customerphone",
	 	"customerplace",
	 	"customerdate",
	 	"customername",
	 	"customerpassword",
	 	"customerpoint",
	 	"openid",
	 	"customerstatue",
   };
   /**
    * 实体排序
    */
   public static final String ORDER = " customerid desc ";
   /**
	 * 要模糊查询字段
	 */
   public static final String[] QUERYFIELDNAME = {
   		"customerid",
	 	"customercode",
	 	"customerdetail",
	 	"customerphone",
	 	"customerplace",
	 	"customerdate",
	 	"customername",
	 	"customerpassword",
	 	"customerpoint",
	 	"openid",
	 	"customerstatue",
   };
}

