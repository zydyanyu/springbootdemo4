<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/29
  Time: 9:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="http://localhost:8080/springbootdemo4/"></base>
    <title>Title</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<form id="myRegister" method="post">
    员工号: <input type="text" name="empNo"><br>
    名字: <input type="text" name="name"><br>
    密码: <input type="text" name="password"><br>
    性别: <input type="text" name="sex"><br>
    身份证: <input type="text" name="idCard"><br>
    角色: <input type="text" name="role"><br>
    手机号码: <input type="text" name="tel"><br>
    邮箱: <input type="text" name="email"><br>
    地址: <input type="text" name="address"><br>
    籍贯: <input type="text" name="nativePlace"><br>
    名族: <input type="text" name="national"><br>
    学历: <input type="text" name="educationBg"><br>
    毕业院校: <input type="text" name="school"><br>
    开户银行: <input type="text" name="bank"><br>
    银行卡号: <input type="text" name="bankAccount"><br>
    <button id="tore">添加</button>
</form>
<form>
    <input name="role" type="text">
    <button id="btrole">提交</button>
</form>

<table class="table table-striped">
    <thead>
    <tr>
        <th>id</th>
        <th>员工号</th>
        <th>名字</th>
        <th>密码</th>
        <th>性别</th>
        <th>身份证</th>
        <th>角色</th>
        <th>手机号码</th>
        <th>邮箱</th>
        <th>地址</th>
        <th>籍贯</th>
        <th>名族</th>
        <th>学历</th>
        <th>毕业院校</th>
        <th>开户银行</th>
        <th>银行卡号</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody id="mytbody2">
    </tbody>
</table>
<%--<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">

        <form class="navbar-form navbar-left" role="search" id="myrole" method="post">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Search" name="role" id="role">
            </div>
            <button id="btrole" class="btn btn-default">提交</button>
        </form>
    </div>
</nav>--%>
<table class="table table-striped">
    <thead>
    <tr>
        <th>id</th>
        <th>员工号</th>
        <th>名字</th>
        <th>密码</th>
        <th>性别</th>
        <th>身份证</th>
        <th>角色</th>
        <th>手机号码</th>
        <th>邮箱</th>
        <th>地址</th>
        <th>籍贯</th>
        <th>名族</th>
        <th>学历</th>
        <th>毕业院校</th>
        <th>开户银行</th>
        <th>银行卡号</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody id="mytbody">
    </tbody>
</table>
<%--修改学生信息--%>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">修改员工信息</h4>
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
                            <input type="text" class="form-control password" id="password" name="password" placeholder="请输入密码">
                        </div>
                    </div><div class="form-group">
                    <label for="firstname" class="col-sm-2 control-label">性别</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control sex" id="sex" name="sex" placeholder="请输入性别">
                    </div>
                </div><div class="form-group">
                    <label for="firstname" class="col-sm-2 control-label">身份证</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control idCard" id="idCard" name="idCard" placeholder="请输入身份证">
                    </div>
                </div><div class="form-group">
                    <label for="firstname" class="col-sm-2 control-label">角色</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control role" id="role" name="role" placeholder="请输入角色">
                    </div>
                </div><div class="form-group">
                    <label for="firstname" class="col-sm-2 control-label">手机号码</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control tel" id="tel" name="tel" placeholder="请输入手机号码">
                    </div>
                </div><div class="form-group">
                    <label for="firstname" class="col-sm-2 control-label">邮箱</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control email" id="email" name="email" placeholder="请输入邮箱">
                    </div>
                </div><div class="form-group">
                    <label for="firstname" class="col-sm-2 control-label">地址</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control address" id="address" name="address" placeholder="请输入地址">
                    </div>
                </div><div class="form-group">
                    <label for="firstname" class="col-sm-2 control-label">籍贯</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control nativePlace" id="nativePlace" name="nativePlace" placeholder="请输入籍贯">
                    </div>
                </div><div class="form-group">
                    <label for="firstname" class="col-sm-2 control-label">名族</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control national" id="national" name="national" placeholder="请输入名族">
                    </div>
                </div><div class="form-group">
                    <label for="firstname" class="col-sm-2 control-label">学历</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control educationBg" id="educationBg" name="educationBg" placeholder="请输入学历">
                    </div>
                </div><div class="form-group">
                    <label for="firstname" class="col-sm-2 control-label">毕业院校</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control school" id="school" name="school" placeholder="请输入毕业院校">
                    </div>
                </div><div class="form-group">
                    <label for="firstname" class="col-sm-2 control-label">开户银行</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control bank" id="bank" name="bank" placeholder="请输入开户银行">
                    </div>
                </div><div class="form-group">
                    <label for="firstname" class="col-sm-2 control-label">银行卡号</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control bankAccount" id="bankAccount" name="bankAccount" placeholder="请输入银行卡号">
                    </div>
                </div>
                </form>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button id="updateaa"  type="button" class="btn btn-primary" data-dismiss="modal">提交更改</button>
                </div>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
</body>
</html>
<script>

    $(function () {
        query();
    })

    function query() {
        $.ajax({
            url: "emp/selectEmp",
            type: "post",
            dataType: "json",
            success: function (data) {
                alert(222)
                document.getElementById("mytbody").innerHTML="";
                for (var i = 0; i < data.length; i++) {
                    var tr = "<tr>\n" +
                        "    <td>" + data[i].id + "</td>\n" +
                        "    <td>" + data[i].empNo + "</td>\n" +
                        "    <td>" + data[i].name + "</td>\n" +
                        "    <td>" + data[i].password + "</td>\n" ;
                            /*if(data[i].sex==1){
                                tr+="    <td>男</td>\n" ;
                            }else {
                                tr+="    <td>女</td>\n" ;
                            }*/
                    tr+="    <td>" + data[i].sex + "</td>\n" +
                        "    <td>" + data[i].idCard + "</td>\n" +
                        "    <td>" + data[i].roleName + "</td>\n" +
                        "    <td>" + data[i].tel + "</td>\n" +
                        "    <td>" + data[i].email + "</td>\n" +
                        "    <td>" + data[i].address + "</td>\n" +
                        "    <td>" + data[i].nativePlace + "</td>\n" +
                        "    <td>" + data[i].national + "</td>\n" +
                        "    <td>" + data[i].educationBg + "</td>\n" +
                        "    <td>" + data[i].school + "</td>\n" +
                        "    <td>" + data[i].bank + "</td>\n" +
                        "    <td>" + data[i].bankAccount + "</td>\n" +
                        "    <td><button id='mytbd' type=\"button\" class=\"btn btn-primary btn-lg update\" data-toggle=\"modal\" data-target=\"#myModal\">修改</button></td>\n" +
                        "</tr>";
                    $("#mytbody").append(tr);
                }
            }
        })
    };

     btrole.onclick=function(){
            $.ajax({
                url: "emp/selectEmpByRole",
                type: "post",
                dataType: "json",
                data:{"role":1},
                success: function (data) {
                    document.getElementById("mytbody2").innerHTML="";
                    for (var i = 0; i < data.length; i++) {
                        alert(data[i].name)
                        var tr2 = "<tr>\n" +
                            "    <td>" + data[i].id + "</td>\n" +
                            "    <td>" + data[i].empNo + "</td>\n" +
                            "    <td>" + data[i].name + "</td>\n" +
                            "    <td>" + data[i].password + "</td>\n" ;
                        if(data[i].sex==1){
                            tr2+="    <td>男</td>\n" ;
                        }else {
                            tr2+="    <td>女</td>\n" ;
                        }
                        tr2+=
                            "    <td>" + data[i].idCard + "</td>\n" +
                            "    <td>" + data[i].roleName + "</td>\n" +
                            "    <td>" + data[i].tel + "</td>\n" +
                            "    <td>" + data[i].email + "</td>\n" +
                            "    <td>" + data[i].address + "</td>\n" +
                            "    <td>" + data[i].nativePlace + "</td>\n" +
                            "    <td>" + data[i].national + "</td>\n" +
                            "    <td>" + data[i].educationBg + "</td>\n" +
                            "    <td>" + data[i].school + "</td>\n" +
                            "    <td>" + data[i].bank + "</td>\n" +
                            "    <td>" + data[i].bankAccount + "</td>\n" +
                            "    <td><button id='mytbd' type=\"button\" class=\"btn btn-primary btn-lg update\" data-toggle=\"modal\" data-target=\"#myModal\">修改</button></td>\n" +
                            "</tr>";
                        $("#mytbody2").append(tr2);
                    }
                }
            })

    }

    /*将数据插入到input里面*/
    $("#mytbody").on("click",".update",function () {
        $(".id").val($(this).parent().parent().children(0).html());
        $(".empNo").val($(this).parent().parent().find("td").eq(1).html());
        $(".name").val($(this).parent().parent().find("td").eq(2).html());
        $(".password").val($(this).parent().parent().find("td").eq(3).html());
        $(".sex").val($(this).parent().parent().find("td").eq(4).html());
        $(".idCard").val($(this).parent().parent().find("td").eq(5).html());
        $(".role").val($(this).parent().parent().find("td").eq(6).html());
        $(".tel").val($(this).parent().parent().find("td").eq(7).html());
        $(".email").val($(this).parent().parent().find("td").eq(8).html());
        $(".address").val($(this).parent().parent().find("td").eq(9).html());
        $(".nativePlace").val($(this).parent().parent().find("td").eq(10).html());
        $(".national").val($(this).parent().parent().find("td").eq(11).html());
        $(".educationBg").val($(this).parent().parent().find("td").eq(12).html());
        $(".school").val($(this).parent().parent().find("td").eq(13).html());
        $(".bank").val($(this).parent().parent().find("td").eq(14).html());
        $(".bankAccount").val($(this).parent().parent().find("td").eq(15).html());
    })

    /*修改学生信息*/
    updateaa.onclick=function () {
        if(confirm("确认修改？")){
            $.ajax({
                url:"emp/updateEmpById",
                type:"post",
                data:$("#myform2").serialize(),
                dataType:"json",
                success:function (data) {
                    query();
                    $('myModal').modal('hide')
                }
            })
        }
    }

    /*增加userInfo*/
    tore.onclick=function(){
        $.ajax({
            url:"emp/register",
            type:"post",
            dataType:"json",
            data:$("#myRegister").serialize(),//将表单序列化提交，将表单中的数据全部提交
            success: function (data) {
                alert("进入function");
                if (data == true) {
                    alert("增加成功");
                } else {
                    alert("增加失败");
                }
            }
        });
    };
</script>
