 <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
    table {
	border:2px solid #000;
	border-collapse: collapse;
}
   tr{
   border:1px solid #000;
   }
   td{
   border:1px solid #000;
   text-align: center;
   }
   #room{
     border: 1px solid #000; 
     height: 100px;
     width: 80px;
     
   }
   
   #table1 li{
    border: 1px solid #000; 
   height:50px;
   width:100px;
   float: left;
   list-style: none;
   
   }
   #top_table{
   height: 80px;
   width: 100%;
   border: 1px solid #000;
   background-image: url("Hilton/images/top_hilton.jpg");
   }
   .house li{
   cursor:pointer;
   border: 1px solid #000; 
   height:150px;
   width:100px;
   float: left;
   list-style: none;
   }
   #form1,#form2,#form3,#form4{
   display: none;
   index:3;
   position: absolute;
   left: 300px;
   top: 200px;
   background: #FCFCFC;
   height: 300px;
   width: 700px;
   /* 圆角 */
   text-align:center;
border:2px solid #a1a1a1;
padding:10px 40px; 
background:#dddddd;
border-radius:25px;
-moz-border-radius:25px;
/* 阴影 */
box-shadow:0px 0px  10px 5px #000;
   }
   #form3 ul li{
   float:left;
   list-style:none;
   float:left;
   overflow:auto;
   }
  /*  */
  #form1_div2,#form3_div2,#form3_div3{
  display: none;
  }
  
  </style>
  <script type="text/javascript" src="Hilton/js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript">
     $(document).ready(
        function(){
          $(".r1").click(
            function(){
              $("#form1").show();
            }
          );
          $(".r2").click(
            function(){
              $("#form2").show();
            }
          );
          $(".r3").click(
            function(){
              $("#form3").show();
            }
          );
          $(".r4").click(
            function(){
              $("#form4").show();
            }
          );
          $(".close").click(
            function(){
              $("#form1,#form2,#form3,#form4").hide();
            }
          );
          
        }
     );
     $(document).ready(function(){
    	  $("#form1_an2").click(function(){
    	    $("#form1_div2").show();
    	    $("#form1_div1").hide();
    	  });
    	  $("#form1_an1").click(function(){
    		  $("#form1_div2").hide();
      	    $("#form1_div1").show();
    	  });
    	  $("#form3_an1").click(function(){
    		  $("#form3_div3").hide();
      	      $("#form3_div2").hide();
      	      $("#form3_div1").show();
    	  });
    	  $("#form3_an2").click(function(){
    		  $("#form3_div3").hide();
      	      $("#form3_div2").show();
      	      $("#form3_div1").hide();
    	  });
    	  $("#form3_an3").click(function(){
    		  $("#form3_div3").show();
      	      $("#form3_div2").hide();
      	      $("#form3_div1").hide();
    	  });
    	});
  </script>
  </head>
  
  <body>
  <div id="top_table">
  <table>
      <ul id="table1">
        <li class="tab1"><a href="room_select.action?method=all">查询所有</a></li>
        <li class="tab1"><a href="room_select.action?method=ad">查询A栋</a></li>
        <li class="tab1"><a href="room_select.action?method=bd">查询B栋</a></li>
        <li class="tab1"><a href="room_select.action?method=a1">查询A栋1层</a></li>
        <li class="tab1"><a href="room_select.action?method=a2">查询A栋2层</a></li>
        <li class="tab1"><a href="room_select.action?method=b1">查询B栋1层</a></li>
        <li class="tab1"><a href="room_select.action?method=b2">查询B栋2层</a></li>
      </ul>
   </table>
   </div>
   <!-- 点击状态为1（空房）的房间显示的操作框------入住登记 -->
   <div id="form1">
      <input type="button" id="form1_an1" value="预定登记"/>-----------------------------<input type="button" id="form1_an2" value="入住登记"/>---<input type="button" class="close" value="×">
     <div id="form1_div1">
   <form action="addResvations.action" method="post">
       <table>
         <tr>
           
            <td>客房编号<input type="text" name="roomed" id="yuding_roomId"></td>
         </tr>
          <tr>
         	<td>顾客姓名<input type="text" name="ctName" class="ro1"><span id="sp1" style="color:red;"></span></td>
         	<td>顾客年龄<input type="text" name="ctAge" class="age"><span id="age"></span></td>
         </tr>
          <tr>
         	<td>顾客性别&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="ctSex" value="男"/>男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="ctSex" value="女"/>女</td>
         	<td>顾客电话<input type="text" name="ctPhone" class="ro2"><span id="sp2"></span></td>
         </tr>
          <tr>
         	<td>顾客证件<input type="text" name="ctCard" class="ro3"><span id="sp3"></span></td>
         	<td><input type="submit" value="提交预定"/></td>
         </tr>
       </table>
    </form>
    </div>
     <div id="form1_div2">
     
   <form action="addCustomer.action">
       <table>
           <tr>
              
              <td colspan="3"><input type="button" class="close" value="关闭"></input></td>
           </tr>
           <tr>
              <td>顾客名字<input type="text" name="c.ctName" class="ro1"/><span id="sp1" style="color:red;"></span></td>
              <!-- <td>顾客性别<input type="text" name="c.ctSex"/></td> -->
              <td>
                 <input type="radio" name="c.ctSex" value="男" checked="checked"/>男 <input type="radio" name="c.ctSex" value="女"/>女
              </td>
              <td>顾客年龄<input type="text" name="c.ctAge"/></td>
           </tr>
           <tr>
              <td>证件类型
                   <select name="c.ppId">
                     <c:forEach items="${papers}" var="p">
                         <option value="${p.ppId}">${p.ppName}</option>
                     </c:forEach>
                   </select>
               </td>
              <td>证件号码<input type="text" name="c.ctCard"/></td>
              <td>顾客地址<input type="text" name="c.ctAddress"/></td>
           </tr>
           <tr>
              <td>联系电话<input type="text" name="c.ctPhone"/></td>
              <td>顾客照片<input type="text" name="c.ctImage"/></td>
           </tr>
           <tr>
              <td>营销人
                   <select name="c.ocId">
                     <c:forEach items="${list_off}" var="c">
                         <option value="${c.ocId}">${c.oczsName}</option>
                     </c:forEach>
                   </select>
               </td>
              <!-- <td>营销人<input type="text" name="c.ocId"/></td> -->
              <td>入住日期<input type="date" name="c.rsCheckTime"/></td>
           </tr>
           <tr>
              <td>离开日期<input type="date" name="c.rsLeaveTime"/></td>
              <td>入住时常<input type="text" name="c.predicTime"/></td>
           </tr>
           <tr>
              <td>顾客人数<input type="number" name="c.ctNumber"/></td>
              <td>押金金额<input type="text" id="yj" name="c.rsPrice"></input></td>
           </tr>
           <tr>
              <td>房间编号<input type="text" id="houseId" name="c.roomId"/></td>
              <td><input type="submit" value="登记入住"/></td>
           </tr>
       </table>
   </form>
   </div>
   </div>
   <div id="form2">
       
   <input type="button" class="close">
        <form action="addCustomer.action">
       <table>
           <tr>
              
              <td colspan="3"><input type="button" class="close" value="关闭"></input></td>
           </tr>
           <tr>
              <td>顾客名字<input type="text" name="c.ctName" id="ctName_yd"/></td>
              <!-- <td>顾客性别<input type="text" name="c.ctSex"/></td> -->
              <td>
                 <input type="radio" name="c.ctSex" value="男" checked="checked"/>男 <input type="radio" name="c.ctSex" value="女"/>女
              </td>
              <td>顾客年龄<input type="text" name="c.ctAge" id="ctAge_yd"/></td>
           </tr>
           <tr>
              <td>证件类型
                   <select name="c.ppId">
                     <c:forEach items="${papers}" var="p">
                         <option value="${p.ppId}">${p.ppName}</option>
                     </c:forEach>
                   </select>
               </td>
              <td>证件号码<input type="text" name="c.ctCard" id="ctCard_yd"/></td>
              <td>顾客地址<input type="text" name="c.ctAddress" id="ctAddress_yd"/></td>
           </tr>
           <tr>
              <td>联系电话<input type="text" name="c.ctPhone" id="ctPhone_yd"/></td>
              <td>顾客照片<input type="text" name="c.ctImage" id="ctImage_yd"/></td>
           </tr>
           <tr>
              <td>营销人
                   <select name="c.ocId">
                     <c:forEach items="${list_off}" var="c">
                         <option value="${c.ocId}">${c.oczsName}</option>
                     </c:forEach>
                   </select>
               </td>
              <!-- <td>营销人<input type="text" name="c.ocId"/></td> -->
              <td>入住日期<input type="date" name="c.rsCheckTime"/></td>
           </tr>
           <tr>
              <td>离开日期<input type="date" name="c.rsLeaveTime"/></td>
              <td>入住时常<input type="text" name="c.predicTime"/></td>
           </tr>
           <tr>
              <td>顾客人数<input type="number" name="c.ctNumber"/></td>
              <td>押金金额<input type="text" id="yj_yd" name="c.rsPrice"></input></td>
           </tr>
           <tr>
              <td>房间编号<input type="text" name="c.roomId" id="roomId_yd"/></td>
              <td><input type="submit" value="登记入住"/></td>
           </tr>
       </table>
   </form>
   </div>
   <!--  点击状态3（已入住状态）房间的时候显示------换房和结账 -->
   <div id="form3">
       <input type="button" id="form3_an1" value="结账"/>------------<input type="button" id="form3_an2" value="换房"/>------<input type="button" id="form3_an3" value="消费"/>--<input type="button" class="close">
     <div id="form3_div1">
         <form action="bill.action" method="post">
           <table>
            
            <tr>
               <td>顾客姓名<input type="text" id="ctname" name="ctName"/></td>
               <td>房间消费<input type="text" name="billRoomMoney" id="billRoomMoney"/></td>
               <td>增加消费<input type="text" name="billSpend" id="xiaofei"/></td>
            </tr>
            
            <tr>
               
               <td>已付押金<input type="text" id="yajin" name="billPaidMoney"/></td>
               <td>应收金额<input type="text" name="billMoney" id="ysje"/></td>
            </tr>
            <tr>
               <td>已结款<input type="text" name="billPayMnoey" id="yjk"/></td>
               <td>找零总额<input type="text" name="billChange" id="zl"/></td>
               <td>房间编号<input type="text" name="roomId" id="billRoomId"/></td>
            </tr>
            <tr>
               <td>结账时间<input type="text" name="billTime"/></td>
               <td>操作员<input type="text" id="ocId1" name="ocId"/></td>
               <td>支付方式<input type="text" name="modeOfPayment"/></td>
            </tr>
            <tr>
               <td><input type="submit" value="结账"/></td>
            </tr>
            </table>
      </form>
        </div>
           <div id="form3_div2">
             <form action="updateBill.action">
              <table>
                <tr>
                <td>原房间ID<input id="yid" type="text" name="r.roomId"/></td>---->
                <td>更换到
                 <select name="roomId1">
                  <c:forEach items="${list}" var="list">
                    <option value="${list.roomed}">${list.roomNumber}</option>
                  </c:forEach>
                </select>
                 </td>
                <td><input type="submit" value="确认更换"/></td> 
               </tr>
              </table>
              </form>
             </div>
             <div id="form3_div3">
                 <table>
                    <tr>
                        <td>商品编号</td>
                        <td>商品名称</td>
                        <td>商品类型</td>
                        <td>商品单价</td>
                        <td colspan="2">数量</td>
                        <td>操作</td>
                    </tr> 
                    <c:forEach items="${list_sp1}" var="sp">
                    <tr>  
                      <form action="addSpinfoSpend.action">
                        <td><input type="text" name="spId" value="${sp.spId}" readonly="readonly" style="border: 0px;" size="5px"/></td>
                        <td><input type="text" value="${sp.spName}" readonly="readonly" style="border: 0px" size="15px"/></td>
                        <td><input type="text" value="${sp.sptName}" readonly="readonly" style="border: 0px" size="15px"/></td>
                        <td><input type="text" value="${sp.spPrice}" readonly="readonly" style="border: 0px" size="15px"/></td>
                        <td><input type="text" name="ssNumber" id="mc" style="border: 1px solid blue" colspan="2"/></td>
                        <td><input type="text" class="spfo_roomId" name="roomId" style="display: none;"/></td>
                        <%-- <td><input type="text" value="${sp.rtNumber}" id="lkc"/></td> --%>
                        <!-- <td><input type="text" id="xkc" /></td> -->
                        <td><input type="submit" value="收入归集"/></td>
                       </form>
                    </tr>   
                    </c:forEach>      
                 </table>
                 </div>
   </div>
   <!--  点击状态4（打扫状态）房间的时候显示-->
   <div id="form4">
   <input type="button" class="close">
   <form action="clearRoom.action" method="post">
   <table>
       <span>请与楼层内清洁人员确认打扫完毕！</span>
       <tr>
          <td><input type="text" name="roomId" id="dsRoomId" style="display: none;"></td>
          <td><input type="submit" value="可供"/></td>
       </tr>
   </table>
   </form>
   </div>
   
   <div>
     <!--------------------------四种房间类型如下--------------------->
     <c:forEach items="${list}" var="list">
         <!-- 遍历出来房间状态为1：空房状态的房间 -->
        <c:if test="${list.roomFlag==1}">
             <ul class="house">
               <li class="r1" onclick="rs1('${list.roomed}','${list.preinstallMoney}')" style="background: #AB82FF">
                 <span>空房</span><br>  
                 <span>${list.roomNumber}</span><br>
                 <span>${list.rtName}</span><br>
                 <span>￥：${list.overheadPrice}</span><br>
                 <span>${list.rpName}${list.floorName }${list.roomed}</span><br>
               </li>
             </ul>
        </c:if>
        <!-- 遍历出来房间状态为2：预定中状态的房间 -->
        <c:if test="${list.roomFlag==2}">
             <ul class="house">
               <li class="r2" onclick="rs2('${list.roomed}')" style="background: #43CD80">
                 <span>已预定</span><br>
                 <span>${list.roomNumber}</span><br>
                 <span>${list.rtName}</span><br>
                 <span>￥：${list.overheadPrice}</span><br>
                 <span>${list.rpName}${list.floorName }${list.roomed}</span><br>
               </li>
             </ul>
        </c:if>
        <!-- 遍历出来房间状态为3：已入住状态的房间 -->
        <c:if test="${list.roomFlag==3}">
             <ul  class="house">
               <li class="r3" onclick="rs3('${list.roomed}')" style="background: #FF69B4">
                 <span>已入住</span><br>
                 <span>${list.roomNumber}</span><br>
                 <span>${list.rtName}</span><br>
                 <span>￥：${list.overheadPrice}</span><br>
                 <span>${list.rpName}${list.floorName }${list.roomed}</span><br>
               </li>
             </ul>
        </c:if>
        <!-- 遍历出来房间状态为4：打扫状态的房间 -->
        <c:if test="${list.roomFlag==4}">
             <ul class="house" >
               <li class="r4" onclick="rs4('${list.roomed}')" style="background: #5F9EA0">
                 <span>打扫中</span><br>
                 <span>${list.roomNumber}</span><br>
                 <span>${list.rtName}</span><br>
                 <span>￥：${list.overheadPrice}</span><br>
                 <span>${list.rpName}${list.floorName}${list.roomed}</span><br>
               </li>
             </ul>
        </c:if>
     </c:forEach>
   </div>
   
   </body>
   <script type="text/javascript">
    function rs1(node1,node2){
        $("#houseId").val(node1);
        $("#yuding_roomId").val(node1);
        $("#yj").val(node2);
     };
     
     function rs4(node){
    	$("#dsRoomId").val(node); 
     };
     function rs2(node){
    	 $.ajax({
    		 type: "post",
        	 url: "reserva.action",
        	 data:{roomId:node},
        	 dataType:"json",
        	 success:function(data){
        		 alert(data[0].roomed);
        		$("#roomId_yd").val(data[0].roomed);
        		$("#ctNameyd").val();
        		$("#ctAge_yd").val(data[0].ctAge);
        		$("#ctPhone_yd").val(data[0].ctPhone);
        		$("ctCard_yd").val(data[0].ctCard);
        	 }
    	 })
     };
     
     function rs3(node){
         $("#yid").val(node);
         $.ajax({
             type: "POST",
             url: "selectReg.action",
             data:{roomId:node},
             dataType:"json", 
             success: function(data){
                      $("#ctname").val(data[0].ctName);
                      $("#yajin").val(data[0].rsPrice);
                      $("#ocId1").val(data[0].ocId);
                     /*把房间价钱附加给#ysje input框 */
                      $("#billRoomMoney").val(data[0].overheadPrice*data[0].predicTime);
                     /*声明变量  */
                      var billRoomMoney=$("#billRoomMoney").val();
                      /* var ysje=data[0].overheadPrice; */
                      var xiaofei=$("#xiaofei").val();
                      var yajin=$("#yajin").val();
                      /*js中“+”默认为字符串拼接，但是把两个值都乘以1就可以实现相加了  */
                      var yandx=billRoomMoney*1+xiaofei*1-yajin*1;
                      /*再把相加的值给#ysje的input框 。。。。。。  */
                      $("#ysje").val(yandx);
                     /*  $("#ysje").val(yandx); */
                }
          });
         $.ajax({
             type: "POST",
             url: "selectSpinfo.action",
             /* data:"json", */
             data:{roomId:node},
             dataType:"json", 
             success: function(data){
            	 
                }
          });
         $.ajax({
             type: "POST",
             url: "selectSpinfoSpend.action",
             /* data:"json", */
             data:{roomId:node},
             dataType:"json", 
             success: function(data){
            	 /*消费数量乘以消费单价得消费商品金额  */
            	 var sum=0;
            	 for (var int = 0; int < data.length; int++) {
					sum+=data[int].spPrice*data[int].ssNumber;	
				}
            	 $("#xiaofei").val(sum);
            	 
                }
          });
         $(".spfo_roomId").val(node);
         $("#billRoomId").val(node);
         
      };
      //////ajax
     $("#yjk").blur(function(){
    	 var yjk=$("#yjk").val();
    	 var zl=$("#zl").val();
    	 var ysje=$("#ysje").val();
    	 $("#zl").val(yjk*1-ysje*1);
    	 
     });
    
     $("#mc").blur(function(){
    	 var mc=$("#mc").val();
    	 var lkc=$("#lkc").val();
    	 $("#xkc").val(lkc*1-mc*1);
     })
   </script>
   <script type="text/javascript">
      
       $(".ro1").blur(
    		     function(){
    			   var age=$(".ro1").val();
    			   var reg=/^[\u4E00-\u9FA5A-Za-z0-9_]+$/;
    			   if(reg.test(age)){
    				  $("#sp1").html("");
    				   return true;
    		           }else{
    				   $("#sp1").html("姓名必须填写");
    				   return false;} });
       $(".ro2").blur(function(){
    	   var rom=$(".ro2").val();
    	   /* var sp=/^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/; */
    	   var sp=/^1[3|4|5|7|8][0-9]{9}$/;
    	   if(sp.test(rom)){
    		   $("#sp2").html("");
    		   return true;
    	   }else{
    		   $("#sp2").html("手机号必须为11位").css("color","red");
    		   return false;
    	   }
       });
       $(".age").blur(function(){
    	   var rom=$(".age").val();
    	   var sp=/^(1[89]|[2-8][0-9]|90)$/;
    	   if(sp.test(rom)){
    		   $("#age").html("");
    		   return true;
    	   }else{
    		   $("#age").html("年龄格式错误").css("color","red");/*18-90*/
    		   return false;
    	   }
       });
       $(".ro3").blur(function(){
    	   var rom=$(".ro3").val();
    	   var sp=/^\d{15}|\d{18}$/;
    	   if(sp.test(rom)){
    		   $("#sp3").html("");
    		   return true;
    	   }else{
    		   $("#sp3").html("证件格式错误").css("color","red");
    		   return false;
    	   }
       });
   </script>
   
</html>
