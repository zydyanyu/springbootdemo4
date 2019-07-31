<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/26
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="http://localhost:8080/springbootdemo4/"></base>
    <title>Title</title>
    <link rel="stylesheet" href="css/a.css">
    <script src="js/a.js"></script>
    <script src="js/b.js"></script>
</head>
<body>
<h2>创建模态框（Modal）</h2>
<!-- 按钮触发模态框 -->
<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
    开始演示模态框
</button>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    模态框（Modal）标题
                </h4>
            </div>
            <div class="modal-body">
                <form id="myform2" class="form-horizontal" role="form" method="post">

                    <div class="form-group">
                        <label for="firstname" class="col-sm-2 control-label">id</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control id" id="id" name="id" placeholder="请输入id">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="firstname" class="col-sm-2 control-label">员工号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control empNo" id="empNo" name="empNo" placeholder="请输入员工号">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="firstname" class="col-sm-2 control-label">名字</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control name" id="name" name="name" placeholder="请输入名字">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="firstname" class="col-sm-2 control-label">密码</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control password" id="password" name="password"
                                   placeholder="请输入密码">
                        </div>
                    </div>
                    <%--<div class="form-group">
                        <label for="firstname" class="col-sm-2 control-label">性别</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control sex" id="sex" name="sex" placeholder="请输入性别">
                        </div>--%>
                    <div class="form-group">
                        <label for="firstname" class="col-sm-2 control-label">性别</label>
                        <div class="col-sm-10" id="myradio">

                        </div>
                    </div>

                    <div class="form-group">
                        <label for="firstname" class="col-sm-2 control-label">身份证</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control idCard" id="idCard" name="idCard"
                                   placeholder="请输入身份证">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="firstname" class="col-sm-2 control-label">角色</label>
                        <select name="role" class="form-control" id="myoption">
                            <%--<div class="col-sm-10">
                                <input type="text" class="form-control role" id="role" name="role" placeholder="请输入角色">
                            </div>--%>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="firstname" class="col-sm-2 control-label">手机号码</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control tel" id="tel" name="tel" placeholder="请输入手机号码">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="firstname" class="col-sm-2 control-label">邮箱</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control email" id="email" name="email" placeholder="请输入邮箱">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="firstname" class="col-sm-2 control-label">地址</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control address" id="address" name="address"
                                   placeholder="请输入地址">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="firstname" class="col-sm-2 control-label">籍贯</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control nativePlace" id="nativePlace" name="nativePlace"
                                   placeholder="请输入籍贯">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="firstname" class="col-sm-2 control-label">名族</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control national" id="national" name="national"
                                   placeholder="请输入名族">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="firstname" class="col-sm-2 control-label">学历</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control educationBg" id="educationBg" name="educationBg"
                                   placeholder="请输入学历">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="firstname" class="col-sm-2 control-label">毕业院校</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control school" id="school" name="school"
                                   placeholder="请输入毕业院校">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="firstname" class="col-sm-2 control-label">开户银行</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control bank" id="bank" name="bank" placeholder="请输入开户银行">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="firstname" class="col-sm-2 control-label">银行卡号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control bankAccount" id="bankAccount" name="bankAccount"
                                   placeholder="请输入银行卡号">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary">
                    提交更改
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
</body>
</html>
