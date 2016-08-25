package com.server.poco;

/**
 * 充值记录 实体类的常量
 *@author ZhangRuiLong
 */
public class OrdermPoco
{
   /**
    * 实体中文名
    */
   public static String NAME = "充值记录";
   /**
    * 实体表名
    */
   public static String TABLE = "Orderm";
   /**
    * 实体主键
    */
   public static String[] KEYCOLUMN = {"ordermid"};
   /**
    * 实体中文字段
    */
   public static String[] CHINESENAME = {
   		"ID",
	 	"编码",
	 	"描述",
	 	"充值号码",
	 	"充值时间",
	 	"充值套餐",
	 	"充值金额",
	 	"归属地",
	 	"用户",
	 	"状态",
	};
	/**
	 * 实体英文字段
	 */
   public static final String[] FIELDNAME = {
   		"ordermid",
	 	"ordermcode",
	 	"ordermdetail",
	 	"ordermphone",
	 	"ordermdate",
	 	"ordermgoods",
	 	"ordermmoney",
	 	"ordermplace",
	 	"ordermcustomer",
	 	"ordermstatue",
   };
   /**
    * 实体排序
    */
   public static final String ORDER = " ordermid desc ";
   /**
	 * 要模糊查询字段
	 */
   public static final String[] QUERYFIELDNAME = {
   		"ordermid",
	 	"ordermcode",
	 	"ordermdetail",
	 	"ordermphone",
	 	"ordermdate",
	 	"ordermgoods",
	 	"ordermmoney",
	 	"ordermplace",
	 	"ordermcustomer",
	 	"ordermstatue",
   };
}

