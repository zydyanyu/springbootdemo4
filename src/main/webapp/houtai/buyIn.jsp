<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/7/29
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>采购申请</title>
    <base href="http://localhost:8080/springbootdemo4/"></base>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
<button id="submit">提交</button>
     <form role="form" class="form-inline">
         <div class="form-group">
             <label for="orderid">流水号</label>
             <input type="text" class="form-control" id="procurementNo" >
         </div>
         <div class="form-group">
             <label for="caigoudate">申请日期</label>
             <input type="text" class="form-control" id="purchaseTime" >
         </div>
         <div class="form-group">
             <label for="caigouperson">申请人</label>
             <input type="text" class="form-control" id="applicant" value="${userInfo.username}">
         </div>
         <div class="form-group">
             <label for="caigoudept">申请部门</label>
             <input type="text" class="form-control" id="applyDepartment" >
         </div>

     </form>
         <button id="btn">添加商品</button>
         <table  class="table">
             <thead>
                 <tr>
                     <th>商品编号</th>
                     <th>商品名称</th>
                     <th>商品规格</th>
                     <th>采购单价</th>
                     <th>销售单价</th>
                     <th>建议零售价</th>
                     <th>产地</th>
                     <th>计量单位</th>
                     <th>数量</th>
                     <th>小计</th>
                     <th>操作</th>
                 </tr>
             </thead>
             <tbody id="mytbd">


             </tbody>

         </table>


</body>
</html>
<script>
    var num=0;//区分到底是第几行
    //点击添加商品时
      $("#btn").click(function(){
           var tr="<tr>"
             tr+="<td></td>";
          tr+="<td><select class='goodsname'><option>--选择商品--</option></select></td>";
          tr+="<td></td>";
          tr+="<td></td>";
          tr+="<td></td>";
          tr+="<td></td>";
          tr+="<td></td>";
          tr+="<td></td>";
          tr+="<td><input></td>";
          tr+="<td></td>";

          tr+="<td><button class='btn'>删除</button></td>";
            tr+="</tr>";
            //新增的tr追加到
             $("#mytbd").append(tr)
               getGoods();
      });


      //动态读取商品信息
    var goodsinfo;
  function getGoods(){
         $.ajax({
             url:"goods/selectGoods",
             contextType:"application/json",
             type:"post",
             dataType:"json",
             success:function(data) {
                 goodsinfo=data;
                 //清空下拉框中的子元素

                 for (var i in data) {
                     var option = "<option value='" + data[i].goodNo + "'>" + data[i].goodName + "</option>";
                     $("#mytbd .goodsname").eq(num).append(option);//当前行只会影响，不会影响其他行

                 }
                 num++;//每添一行num自增1

             }
         })
  }
//因为下拉框时动态生成的，所有不能直接使用change,B必须使用时间绑定
    //下拉框改变时，将对应的商品信息查询出来记载到对应的td中
$("#mytbd").on("change",".goodsname",function(){
   //循环进行匹配
    for(var i in goodsinfo){
        if($(this).val()==goodsinfo[i].goodNo){
             //$(this).parent().prev().text();
            // $(this).parent().next().text(goodsinfo[i].typeName);
             $(this).parent().parent().children("td").eq(0).text(goodsinfo[i].goodNo);
            $(this).parent().parent().children("td").eq(2).text(goodsinfo[i].goodSpecs);
            $(this).parent().parent().children("td").eq(3).text(goodsinfo[i].purchasePrice);
            $(this).parent().parent().children("td").eq(4).text(goodsinfo[i].salePrice);
            $(this).parent().parent().children("td").eq(5).text(goodsinfo[i].retailPrice);
            $(this).parent().parent().children("td").eq(6).text(goodsinfo[i].originPlace);
            $(this).parent().parent().children("td").eq(7).text(goodsinfo[i].unit);
            $(this).parent().parent().children("td").eq(9).text(goodsinfo[i].productCount);
        }

    }

})

    //删除
    $("#mytbd").on("click",".btn",function(){
        if(confirm("是否删除?")) {
            $(this).parent().parent().remove();
            num--;
        }

    })

    //键盘抬起时，小计发生变化
    $("#mytbd").on("keyup","input",function(){
        var inprice= $(this).parent().parent().children("td").eq(3).text();
        var num= $(this).val();
        $(this).parent().next().text(inprice*num);
    })

    //点击提交按钮时
    $("#submit").click(function(){
        var procurementNo=$("#procurementNo").val();//订单号
        var purchaseTime=$("#purchaseTime").val();//申请日期
        var applicant=$("#applicant").val();//采购人
        var applyDepartment=$("#applyDepartment").val();//申请部门
        var goodsarr=new Array();//采购商品的集合
        //获取所有的订单详情
        $("#mytbd tr").each(function(){
            //每一行都是一个对象
            var goods=new Object();
            goods.goodNo=$(this).children("td").eq(0).text();
            goods.procurementNo=procurementNo;
            goods.goodsNum=$(this).find("input").val();
            goods.productCount=$(this).children("td").eq(9).text();
            goodsarr.push(goods);//将当前对象存放到数组中
        })
        var jsonstr={"procurementNo":procurementNo,"purchaseTime":purchaseTime,"applicant":applicant,"applyDepartment":applyDepartment,"goods":goodsarr}
        alert(JSON.stringify(jsonstr))

    })


</script>
