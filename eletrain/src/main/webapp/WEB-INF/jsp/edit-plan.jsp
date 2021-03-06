<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>编辑方案</title>
<meta name="description" content="编辑方案">
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath}/assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed"
	href="${pageContext.request.contextPath}/assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/amazeui.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/admin.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/app.css">
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
</head>
<body data-type="generalComponents">
<jsp:include page="head.jsp"></jsp:include>
	<jsp:include page="side.jsp"></jsp:include>
		<div class="tpl-content-wrapper">
			<div class="tpl-portlet-components">
				<div class="portlet-title">
					<div class="caption font-green bold">
						<span class="am-icon-code"></span> 编辑方案
					</div>
				</div>
				<div class="tpl-block ">
					<div class="am-g tpl-amazeui-form">
						<div class="am-u-sm-12 am-u-md-9">
							<form class="am-form am-form-horizontal"
								id="addPlanForm"
								action="${pageContext.request.contextPath }/plan/editPlan?menuId=7"
								method="post">
								<input type="hidden" name="planId" value="${planInfo.planId }"/>
								<input type="hidden" name="sign" value="${planInfo.sign }"/>
								<div class="am-form-group">
									<label for="doc-select-1" class="am-u-sm-3 am-form-label">项目负责人</label>
									<div class="am-u-sm-9">
										<select data-am-selected="{maxHeight: 200}" id="doc-select-1" name="adminId"
											data-validation-message="项目负责人不能为空" required>
											</select> <span
											class="am-form-caret"></span>
									</div>
								</div>
								<div class="am-form-group">
									<label for="user-name" class="am-u-sm-3 am-form-label">方案名称</label>
									<div class="am-u-sm-9">
										<input pattern="^\S*" data-validation-message="方案名称不能为空" id="pnamecheck" value="${planInfo.pname }" type="text" name="pname"
											placeholder="方案名称" required><span id="sp"></span>
									</div>
								</div>
								<div class="am-form-group">
									<label for="user-name" class="am-u-sm-3 am-form-label">培训目标
									</label>
									<div class="am-u-sm-9">
										<textarea onkeyup="ta(this)" rows="8" cols="1" id="user-name" name="planAim"
											placeholder="培训目标" required>${planInfo.planAim }</textarea>
									</div>
								</div>
								
								<div class="am-form-group">
									<label for="user-name" class="am-u-sm-3 am-form-label">培训对象</label>
									<div class="am-u-sm-9">
										<select required data-validation-message="培训对象不能为空" id="classes" name="classIds" multiple data-am-selected="{maxHeight: 200}">
									</select>
								</div>
								</div>
								<div class="am-form-group">
									<label for="user-name" class="am-u-sm-3 am-form-label">培训设备</label>
									<div class="am-u-sm-9">
									<select required data-validation-message="培训设备不能为空" id="devices" name="deviceIds" multiple data-am-selected="{maxHeight: 200}">
									</select>
								</div>
								</div>
								<div class="am-form-group">
									<label for="user-name" class="am-u-sm-3 am-form-label">培训教材</label>
									<div class="am-u-sm-9">
									<select required data-validation-message="培训教材不能为空" id="books" name="bookIds" multiple data-am-selected="{maxHeight: 200}">
									</select>
								</div>
								</div>
								<div class="am-form-group">
									<label for="user-name" class="am-u-sm-3 am-form-label">培训讲师</label>
									<div class="am-u-sm-9">
									<select required data-validation-message="培训讲师不能为空" id="teachers" name="teaIds" multiple data-am-selected="{maxHeight: 200}">
									</select>
								</div>
								</div>
								<div class="am-form-group">
									<label for="user-name" class="am-u-sm-3 am-form-label">能力要求
									</label>
									<div class="am-u-sm-9">
										<textarea onkeyup="ta(this)" rows="8" cols="1" id="user-name" name="ability"
											placeholder="能力要求" required>${planInfo.ability }</textarea>
									</div>
								</div>

								<div class="am-form-group">
									<label for="user-name" class="am-u-sm-3 am-form-label">培训规模</label>
									<div class="am-u-sm-9">
										<input value="${planInfo.scale }" type="text" id="user-name" name="scale"
											placeholder="培训规模" required>
									</div>
								</div>
								<div class="am-form-group">
									<label for="user-name" class="am-u-sm-3 am-form-label">培训方式
									</label>
									<div class="am-u-sm-9">
										<textarea onkeyup="ta(this)" rows="8" cols="1" id="user-name" name="planPattern"
											placeholder="培训方式" required>${planInfo.planPattern }</textarea>
									</div>
								</div>
								<div class="am-form-group">
									<label for="user-name" class="am-u-sm-3 am-form-label">考核方式
									</label>
									<div class="am-u-sm-9">
										<textarea onkeyup="ta(this)" rows="8" cols="1" id="user-name" name="examPattern"
											placeholder="考核方式" required>${planInfo.examPattern }</textarea>
									</div>
								</div>
								<div class="am-form-group">
									<label for="user-name" class="am-u-sm-3 am-form-label">考试名称</label>
									<div class="am-u-sm-9">
										<input maxlength="50" pattern="^\S*" value="${planInfo.examName }" type="text" id="user-name" name="examName"
											placeholder="考试名称" required>
									</div>
								</div>
								<div class="am-form-group">
									<label for="user-name" class="am-u-sm-3 am-form-label">培训内容
									</label>
									<div class="am-u-sm-9">
										<textarea onkeyup="ta(this)" rows="8" cols="1" id="user-name" name="planContent"
											placeholder="培训内容" required>${planInfo.planContent }</textarea>
									</div>
								</div>
								<div class="am-form-group">
									<label for="user-name" class="am-u-sm-3 am-form-label">培训要求
									</label>
									<div class="am-u-sm-9">
										<textarea onkeyup="ta(this)" rows="8" cols="1" id="user-name"
											name="planRequirement" placeholder="培训要求" required>${planInfo.planRequirement }</textarea>
									</div>
								</div>
								<div class="am-modal am-modal-confirm" tabindex="-1"
									id="my-confirm">
									<div class="am-modal-dialog">
										<div id="confirmBox1" class="am-modal-hd"></div>
										<div id="confirmBox2" class="am-modal-bd"></div>
										<div class="am-modal-footer">
											<span class="am-modal-btn" data-am-modal-confirm>确定</span> <span
												class="am-modal-btn" data-am-modal-cancel>取消</span>
										</div>
									</div>
								</div>
								<div class="am-form-group">
									<div class="am-u-sm-9 am-u-sm-push-3">
										<button type="submit" id="addPlan"
											class="am-btn am-btn-primary">修改</button>
										<button type="button" class="am-btn am-btn-primary"
											onclick="javascript:history.back(-1);">返回</button>
									</div>
								</div>
								<div class="am-modal am-modal-no-btn" tabindex="-1" id="your-modal">
							  <div class="am-modal-dialog">
							    <div class="am-modal-hd">提示
							      <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
							    </div>
							    <div id="ts" class="am-modal-bd">
							    </div>
							  </div>
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
<script type="text/javascript">
	$(function() {
		 var content = "<option value='${planInfo.adminId}'>${planInfo.adminName}</option>";
		$.ajax({
			"async" : true,
			"url" : "${pageContext.request.contextPath}/plan/findAdminList",
			"type" : "POST",
			"dataType" : "json",
			"success" : function(data) {
				for (var i = 0; i < data.length; i++) {
					if (data[i].adminId == "${planInfo.adminId}") {
						$("#doc-select-1").html(content);
					}else{
					content += "<option value='"+data[i].adminId+"'>"
							+ data[i].username + "</option>";
					}
				}
				$("#doc-select-1").html(content);
			}
		}); 
		var content1 = "";
		$.ajax({
			"async" : true,
			"url" : "${pageContext.request.contextPath}/plan/findClassesList",
			"type" : "POST",
			"dataType" : "json",
			"success" : function(data1) {
				for (var i = 0; i < data1.length; i++) {
					content1 += "<option name='cids' value='"+data1[i].classesId+"'>"
					+ data1[i].cname + "（" + data1[i].classesNo + "）" +"</option>";
				}
				$("#classes").html(content1);
				 var checkBoxAll =$("option[name='cids']");//获取前缀为checkbox_的所有多选框对象
				 var s = [];
				    var checkArray="${planInfo.classesIds}".match(/\d+/g);//获取多选框需要回显得对应的值集合
				    for(var i=0;i<data1.length;i++){//
                     //获取所有复选框对象的value属性，然后，用checkArray[i]和他们匹配，如果有，则说明他应被选中
                      $.each(checkBoxAll,function(j,checkbox){
                          //获取复选框的value属性
                         var checkValue=$(checkbox).val();
                          if(checkArray[i]==checkValue){
                              $(checkbox).attr("selected",true);
                            s.push(checkArray[i]);  
                        }
                          
                     })
                     $("#classIds").prop("value",s);
                 }
			}
			
		});
		
		var content2 = "";
		$.ajax({
			"async" : true,
			"url" : "${pageContext.request.contextPath}/plan/findDevicesList",
			"type" : "POST",
			"dataType" : "json",
			"success" : function(data2) {
				for (var i = 0; i < data2.length; i++) {
					content2 += "<option name='dids' value='"+data2[i].deviceId+"'>"
					+ data2[i].dname + "</option>";
				}
				$("#devices").html(content2);
				var checkBoxAll =$("option[name='dids']");//获取前缀为checkbox_的所有多选框对象
				var s = [];
			    var checkArray="${planInfo.devIds}".match(/\d+/g);//获取多选框需要回显得对应的值集合
			    for(var i=0;i<checkBoxAll.length;i++){//
                 //获取所有复选框对象的value属性，然后，用checkArray[i]和他们匹配，如果有，则说明他应被选中
                  $.each(checkBoxAll,function(j,checkbox){
                      //获取复选框的value属性
                     var checkValue=$(checkbox).val();
                      if(checkArray[i]==checkValue){
                          $(checkbox).attr("selected",true);
                          s.push(checkArray[i]);
                    	}
                 })
                 $("#deviceIds").prop("value",s);
             }
			}
		});
		var content3 = "";
		$.ajax({
			"async" : true,
			"url" : "${pageContext.request.contextPath}/plan/findBookList",
			"type" : "POST",
			"dataType" : "json",
			"success" : function(data3) {
				for (var i = 0; i < data3.length; i++) {
					content3 += "<option name='bids' value='"+data3[i].bookId+"'>"
					+ data3[i].bname + "（" + data3[i].press + "）" + "</option>";
				}
				$("#books").html(content3);
				var checkBoxAll =$("option[name='bids']");//获取前缀为checkbox_的所有多选框对象
				var s = [];
			    var checkArray="${planInfo.bookIds}".match(/\d+/g);//获取多选框需要回显得对应的值集合
			    for(var i=0;i<checkBoxAll.length;i++){//
                 //获取所有复选框对象的value属性，然后，用checkArray[i]和他们匹配，如果有，则说明他应被选中
                  $.each(checkBoxAll,function(j,checkbox){
                      //获取复选框的value属性
                     var checkValue=$(checkbox).val();
                      if(checkArray[i]==checkValue){
                          $(checkbox).attr("selected",true);
                          s.push(checkArray[i]);
                    }
                 })
                 $("#bookIds").prop("value",s);
             }
			}
		});
		
		var content4 = "";
		$.ajax({
			"async" : true,
			"url" : "${pageContext.request.contextPath}/plan/findTeaList",
			"type" : "POST",
			"dataType" : "json",
			"success" : function(data4) {
				for (var i = 0; i < data4.length; i++) {
					content4 += "<option name='tids' value='"+data4[i].teacherId+"'>"
					+ data4[i].username + "（" + data4[i].loginname + "）" + "</option>";
				}
				$("#teachers").html(content4);
				var checkBoxAll =$("option[name='tids']");//获取前缀为checkbox_的所有多选框对象
				var s = [];
				var checkArray = "${planInfo.teacherIds}".match(/\d+/g);
			    for(var i=0;i<checkBoxAll.length;i++){//
                 //获取所有复选框对象的value属性，然后，用checkArray[i]和他们匹配，如果有，则说明他应被选中
                  $.each(checkBoxAll,function(j,checkbox){
                      //获取复选框的value属性
                     var checkValue=$(checkbox).val();
                    	  if(checkArray[i]==checkValue){
                              $(checkbox).attr("selected",true);
                              s.push(checkArray[i]);
                        }
                 })
                 $("#teaIds").prop("value",s);
             }
			}
		});
	});
</script>
</body>
<script type="text/javascript">
function ta(obj){
	var val=$(obj).val().length;
	if(val>255){
		var $modal = $('#your-modal');
		$modal.modal('open');
		$('#ts').html("最多输入255个字符");
		$(obj).val($(obj).val().substring(0,255))
		}
}
$(document).ready(function() {
	check();
});
function check() {
	$('#pnamecheck').blur(function() {
		var a = $(this).val();
		$.ajax({
			type : "post",//数据发送的方式（post 或者 get）
			traditional : true,
			url : "/plan/checkPname",//要发送的后台地址
			data : {
				"pname" : a
			},//要发送的数据（参数）格式为{'val1':"1","val2":"2"}
			success : function(data) {//ajax请求成功后触发的方法
				if (data == "exist" && a != "${planInfo.pname}") {
					$('#sp').html("方案名称已经存在");
					$('#pnamecheck').prop("value", "");
				} else {
					$('#sp').html("");
				}
			}
		});
	});
}
$(function(){
$("a[menuId='${menuId}']").trigger("click");
})
</script>
</html>