<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta http-equiv="pragma" content="no-cache"/> 
	<meta http-equiv="cache-control" content="no-cache,must-revalidate"/>  
	<meta http-equiv="expires" content="0"/>  
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>html5</title>
	
</head>
<body>
	<div id="formImg" style="width:100%;height: 100%">
		
	</div>
	<script type="text/javascript">
		Ext.onReady(function(){
			var uploadForm = Ext.create('Ext.form.Panel',{
				bodyStyle:'padding:5 5 5 5',
				frame:true,
				height:'100%',
				width:'100%',
				renderTo:"formImg",
				defaults:{
					labelSeparator:':',
					labelWidth:50,
					width:150,
					labelAlign:'left',
					msgTarget:'side'
				},
				items:[{
					xtype:'filefield',
					name:'photo',
					fielLabel:'照片',
					anchor:'100%',
					buttonText:'选择照片'
				}],
				buttons:[{
					text:'上传文件',
					handler:function(){
						var form = uploadForm.getForm();
						form.submit({
							url:'',
							waitMsg:' 正在上传',
							success:function(fp,o){
								alert(1);
							}
						});
					}
				}]
				
			});
		});
		
	</script>
</body>
</html>