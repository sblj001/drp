<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
	<jsp:include page="/pages/plugins/basepath.jsp"/>
	<script type="text/javascript" src="js/pages/back/admin/emp/emp_add.js"></script>
</head>
<%!
	public static final String EMP_ADD_URL = "" ;
%>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<!-- 导入头部标题栏内容 -->
		<jsp:include page="/pages/plugins/back/include_title_head.jsp" />
		<!-- 导入左边菜单项 -->
		<jsp:include page="/pages/plugins/back/include_menu_item.jsp">
			<jsp:param name="mi" value="9"/>
			<jsp:param name="msi" value="91"/>
		</jsp:include>
		<div class="content-wrapper text-left">
					<div class="panel panel-success">
				<div class="panel-heading">
					<strong><span class="glyphicon glyphicon-user"></span>&nbsp;雇员入职</strong>
				</div>
				<div class="panel-body">
					<form class="form-horizontal" action="<%=EMP_ADD_URL%>" id="myform" method="post" enctype="multipart/form-data">
						<fieldset>
							<!-- 定义输入表单样式，其中id主要用于设置颜色样式 -->
							<div class="form-group" id="midDiv">
								<!-- 定义表单提示文字 -->
								<label class="col-md-3 control-label" for="mid">登录ID：</label>
								<div class="col-md-5">
									<!-- 定义表单输入组件 -->
									<input type="text" id="mid" name="mid" class="form-control"
										placeholder="请输入雇员登录ID">
								</div>
								<!-- 定义表单错误提示显示元素 -->
								<div class="col-md-4" id="midMsg"></div>
							</div>
							<div class="form-group" id="passwordDiv">
								<!-- 定义表单提示文字 -->
								<label class="col-md-3 control-label" for="password">登录密码：</label>
								<div class="col-md-5">
									<!-- 定义表单输入组件 -->
									<input type="text" id="password" name="password" class="form-control"
										placeholder="请输入雇员登录密码">
								</div>
								<!-- 定义表单错误提示显示元素 -->
								<div class="col-md-4" id="passwordMsg"></div>
							</div>
							<div class="form-group" id="nameDiv">
								<!-- 定义表单提示文字 -->
								<label class="col-md-3 control-label" for="name">雇员姓名：</label>
								<div class="col-md-5">
									<!-- 定义表单输入组件 -->
									<input type="text" id="name" name="name" class="form-control"
										placeholder="请输入雇员真实姓名">
								</div>
								<!-- 定义表单错误提示显示元素 -->
								<div class="col-md-4" id="nameMsg"></div>
							</div>
							<div class="form-group" id="phoneDiv">
								<!-- 定义表单提示文字 -->
								<label class="col-md-3 control-label" for="phone">联系电话：</label>
								<div class="col-md-5">
									<!-- 定义表单输入组件 -->
									<input type="text" id="phone" name="phone" class="form-control"
										placeholder="请输入雇员联系电话">
								</div>
								<!-- 定义表单错误提示显示元素 -->
								<div class="col-md-4" id="phoneMsg"></div>
							</div>
							<div class="form-group" id="didDiv">
								<!-- 定义表单提示文字 -->
								<label class="col-md-3 control-label" for="jid">所属部门：</label>
								<div class="col-md-5">
									<select id="did" name="did" class="form-control">
										<option value="">====== 请选择所在部门 ======</option>
										<option value="1">技术部</option>
										<option value="2">财务部</option>
										<option value="3">市场部</option>
									</select>
								</div>
								<!-- 定义表单错误提示显示元素 -->
								<div class="col-md-4" id="didMsg"></div>
							</div>
							<div class="form-group" id="jidDiv">
								<!-- 定义表单提示文字 -->
								<label class="col-md-3 control-label" for="jid">职位类型：</label>
								<div class="col-md-5">
									<select id="jid" name="jid" class="form-control">
										<option value="">====== 请选择雇员职务 ======</option>
										<option value="1">总监</option>
										<option value="2">部门经理</option>
										<option value="3">部门员工</option>
									</select>
								</div>
								<!-- 定义表单错误提示显示元素 -->
								<div class="col-md-4" id="jidMsg"></div>
							</div>
							<div class="form-group" id="picDiv">
								<!-- 定义表单提示文字 -->
								<label class="col-md-3 control-label" for="pic">雇员照片：</label>
								<div class="col-md-5">
									<!-- 定义表单输入组件 -->
									<input type="file" id="pic" name="pic" class="form-control"
										placeholder="请选择雇员照片">
								</div>
								<!-- 定义表单错误提示显示元素 -->
								<div class="col-md-4" id="picMsg"></div>
							</div>
							<!-- 定义输入表单样式，其中id主要用于设置颜色样式 -->
							<div class="form-group" id="noteDiv">
								<!-- 定义表单提示文字 -->
								<label class="col-md-3 control-label" for="note">备注信息：</label>
								<div class="col-md-5">
									<!-- 定义表单输入组件 -->
									<textarea id="note" name="note"
										class="form-control" placeholder="请输入雇员的面试情况" rows="10"></textarea>
								</div>
								<!-- 定义表单错误提示显示元素 -->
								<div class="col-md-4" id="noteMsg"></div>
							</div> 
							<div class="form-group">
								<div class="col-md-5 col-md-offset-3">
									<button type="submit" class="btn btn-primary">增加</button>
									<button type="reset" class="btn btn-warning">重置</button>
								</div>
							</div>
						</fieldset>
					</form>
				</div>
				<div class="panel-footer">
					<jsp:include page="/pages/plugins/alert.jsp"/>
				</div>
			</div>
		</div>
		<!-- 导入公司尾部认证信息 -->
		<jsp:include page="/pages/plugins/back/include_title_foot.jsp" />
		<!-- 导入右边工具设置栏 -->
		<jsp:include page="/pages/plugins/back/include_menu_sidebar.jsp" />
		<div class="control-sidebar-bg"></div>
	</div>
	<jsp:include page="/pages/plugins/back/include_javascript_foot.jsp" />
</body>
</html>
