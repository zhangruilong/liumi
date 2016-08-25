Ext.onReady(function() {
	var Customerclassify = "客户";
	var Customertitle = "当前位置:业务管理》" + Customerclassify;
	var Customeraction = "CustomerAction.do";
	var Customerfields = ['customerid'
	        			    ,'customercode' 
	        			    ,'customerdetail' 
	        			    ,'customerphone' 
	        			    ,'customerplace' 
	        			    ,'customerdate' 
	        			    ,'customername' 
	        			    ,'customerpassword' 
	        			    ,'customerpoint' 
	        			    ,'openid' 
	        			    ,'customerstatue' 
	        			      ];// 全部字段
	var Customerkeycolumn = [ 'customerid' ];// 主键
	var Customerstore = dataStore(Customerfields, basePath + Customeraction + "?method=selQuery");// 定义Customerstore
	var CustomerdataForm = Ext.create('Ext.form.Panel', {// 定义新增和修改的FormPanel
		id:'CustomerdataForm',
		labelAlign : 'right',
		frame : true,
		layout : 'column',
		items : [ {
			columnWidth : 1,
			layout : 'form',
			items : [ {
				xtype : 'textfield',
				fieldLabel : 'ID',
				id : 'Customercustomerid',
				name : 'customerid',
				maxLength : 100
			} ]
		}
		, {
			columnWidth : 1,
			layout : 'form',
			items : [ {
				xtype : 'textfield',
				fieldLabel : '编码',
				id : 'Customercustomercode',
				name : 'customercode',
				maxLength : 100
			} ]
		}
		, {
			columnWidth : 1,
			layout : 'form',
			items : [ {
				xtype : 'textfield',
				fieldLabel : '描述',
				id : 'Customercustomerdetail',
				name : 'customerdetail',
				maxLength : 100
			} ]
		}
		, {
			columnWidth : 1,
			layout : 'form',
			items : [ {
				xtype : 'textfield',
				fieldLabel : '手机号码',
				id : 'Customercustomerphone',
				name : 'customerphone',
				maxLength : 100
			} ]
		}
		, {
			columnWidth : 1,
			layout : 'form',
			items : [ {
				xtype : 'textfield',
				fieldLabel : '归属地',
				id : 'Customercustomerplace',
				name : 'customerplace',
				maxLength : 100
			} ]
		}
		, {
			columnWidth : 1,
			layout : 'form',
			items : [ {
				xtype : 'textfield',
				fieldLabel : '注册时间',
				id : 'Customercustomerdate',
				name : 'customerdate',
				maxLength : 100
			} ]
		}
		, {
			columnWidth : 1,
			layout : 'form',
			items : [ {
				xtype : 'textfield',
				fieldLabel : '用户名',
				id : 'Customercustomername',
				name : 'customername',
				maxLength : 100
			} ]
		}
		, {
			columnWidth : 1,
			layout : 'form',
			items : [ {
				xtype : 'textfield',
				fieldLabel : '密码',
				id : 'Customercustomerpassword',
				name : 'customerpassword',
				maxLength : 100
			} ]
		}
		, {
			columnWidth : 1,
			layout : 'form',
			items : [ {
				xtype : 'textfield',
				fieldLabel : '积分',
				id : 'Customercustomerpoint',
				name : 'customerpoint',
				maxLength : 100
			} ]
		}
		, {
			columnWidth : 1,
			layout : 'form',
			items : [ {
				xtype : 'textfield',
				fieldLabel : 'openid',
				id : 'Customeropenid',
				name : 'openid',
				maxLength : 100
			} ]
		}
		, {
			columnWidth : 1,
			layout : 'form',
			items : [ {
				xtype : 'textfield',
				fieldLabel : '状态',
				id : 'Customercustomerstatue',
				name : 'customerstatue',
				maxLength : 100
			} ]
		}
		]
	});
	
	var Customerbbar = pagesizebar(Customerstore);//定义分页
	var Customergrid =  Ext.create('Ext.grid.Panel', {
		height : document.documentElement.clientHeight - 4,
		width : '100%',
		title : Customertitle,
		store : Customerstore,
		bbar : Customerbbar,
	    selModel: {
	        type: 'checkboxmodel'
	    },
	    plugins: {
	         ptype: 'cellediting',
	         clicksToEdit: 1
	    },
		columns : [{xtype: 'rownumberer',width:36}, 
		{// 改
			header : 'ID',
			dataIndex : 'customerid',
			sortable : true, 
			editor: {
                xtype: 'textfield',
                editable: false
            }
		}
		, {
			header : '编码',
			dataIndex : 'customercode',
			sortable : true,  
			editor: {
                xtype: 'textfield'
            }
		}
		, {
			header : '描述',
			dataIndex : 'customerdetail',
			sortable : true,  
			editor: {
                xtype: 'textfield'
            }
		}
		, {
			header : '手机号码',
			dataIndex : 'customerphone',
			sortable : true,  
			editor: {
                xtype: 'textfield'
            }
		}
		, {
			header : '归属地',
			dataIndex : 'customerplace',
			sortable : true,  
			editor: {
                xtype: 'textfield'
            }
		}
		, {
			header : '注册时间',
			dataIndex : 'customerdate',
			sortable : true,  
			editor: {
                xtype: 'textfield'
            }
		}
		, {
			header : '用户名',
			dataIndex : 'customername',
			sortable : true,  
			editor: {
                xtype: 'textfield'
            }
		}
		, {
			header : '密码',
			dataIndex : 'customerpassword',
			sortable : true,  
			editor: {
                xtype: 'textfield'
            }
		}
		, {
			header : '积分',
			dataIndex : 'customerpoint',
			sortable : true,  
			editor: {
                xtype: 'textfield'
            }
		}
		, {
			header : 'openid',
			dataIndex : 'openid',
			sortable : true,  
			editor: {
                xtype: 'textfield'
            }
		}
		, {
			header : '状态',
			dataIndex : 'customerstatue',
			sortable : true,  
			editor: {
                xtype: 'textfield'
            }
		}
		],
		tbar : [{
				text : Ext.os.deviceType === 'Phone' ? null : "新增",
				iconCls : 'add',
				handler : function() {
					CustomerdataForm.form.reset();
					Ext.getCmp("Customercustomerid").setEditable (true);
					createTextWindow(basePath + Customeraction + "?method=insAll", "新增", CustomerdataForm, Customerstore);
				}
			},'-',{
				text : Ext.os.deviceType === 'Phone' ? null : "保存",
				iconCls : 'ok',
				handler : function() {
					var selections = Customergrid.getSelection();
					if (Ext.isEmpty(selections)) {
						Ext.Msg.alert('提示', '请至少选择一条数据！');
						return;
					}
					commonSave(basePath + Customeraction + "?method=updAll",selections);
				}
			},'-',{
				text : Ext.os.deviceType === 'Phone' ? null : "修改",
				iconCls : 'edit',
				handler : function() {
					var selections = Customergrid.getSelection();
					if (selections.length != 1) {
						Ext.Msg.alert('提示', '请选择一条数据！', function() {
						});
						return;
					}
					CustomerdataForm.form.reset();
					Ext.getCmp("Customercustomerid").setEditable (false);
					createTextWindow(basePath + Customeraction + "?method=updAll", "修改", CustomerdataForm, Customerstore);
					CustomerdataForm.form.loadRecord(selections[0]);
				}
			},'-',{
	            text: '操作',
	            menu: {
	                xtype: 'menu',
	                items: {
	                    xtype: 'buttongroup',
	                    columns: 3,
	                    items: [{
	                    	text : "删除",
	        				iconCls : 'delete',
	        				handler : function() {
	        					var selections = Customergrid.getSelection();
	        					if (Ext.isEmpty(selections)) {
	        						Ext.Msg.alert('提示', '请至少选择一条数据！');
	        						return;
	        					}
	        					commonDelete(basePath + Customeraction + "?method=delAll",selections,Customerstore,Customerkeycolumn);
	        				}
	                    },{
	                    	text : "导入",
	        				iconCls : 'imp',
	        				handler : function() {
	        					commonImp(basePath + Customeraction + "?method=impAll","导入",Customerstore);
	        				}
	                    },{
	                    	text : "后台导出",
	        				iconCls : 'exp',
	        				handler : function() {
	        					Ext.Msg.confirm('请确认', '<b>提示:</b>请确认要导出当前数据？', function(btn, text) {
	        						if (btn == 'yes') {
	        							window.location.href = basePath + Customeraction + "?method=expAll"; 
	        						}
	        					});
	        				}
	                    },{
	                    	text : "前台导出",
	        				iconCls : 'exp',
	        				handler : function() {
	        					commonExp(Customergrid);
	        				}
	                    },{
	                    	text : "附件",
	        				iconCls : 'attach',
	        				handler : function() {
	        					var selections = Customergrid.getSelection();
	        					if (selections.length != 1) {
	        						Ext.Msg.alert('提示', '请选择一条数据！', function() {
	        						});
	        						return;
	        					}
	        					var fid = '';
	        					for (var i=0;i<Customerkeycolumn.length;i++){
	        						fid += selections[0].data[Customerkeycolumn[i]] + ","
	        					}
	        					commonAttach(fid, Customerclassify);
	        				}
	                    },{
	        				text : "筛选",
    						iconCls : 'select',
    						handler : function() {
    							Ext.getCmp("Customercustomerid").setEditable (true);
    							createQueryWindow("筛选", CustomerdataForm, Customerstore);
    						}
    					}]
	                }
	            }
			},'->',{
				xtype : 'textfield',
				id : 'queryCustomeraction',
				name : 'query',
				emptyText : '模糊匹配',
				width : 100,
				enableKeyEvents : true,
				listeners : {
					specialkey : function(field, e) {
						if (e.getKey() == Ext.EventObject.ENTER) {
							if ("" == Ext.getCmp("queryCustomeraction").getValue()) {
								Customerstore.load();
							} else {
								Customerstore.load({
									params : {
										query : Ext.getCmp("queryCustomeraction").getValue()
									}
								});
							}
						}
					}
				}
			}
		]
	});
	Customergrid.region = 'center';
	Customerstore.on("beforeload",function(){ 
		Customerstore.baseParams = {
				query : Ext.getCmp("queryCustomeraction").getValue()
		}; 
	});
	Customerstore.load();//加载数据
	var win = new Ext.Viewport({//只能有一个viewport
		resizable : true,
		layout : 'border',
		bodyStyle : 'padding:0px;',
		items : [ Customergrid ]
	});
})
