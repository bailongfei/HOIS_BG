<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resouces/js/bootstrap/css/bootstrap.min.css">
       <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resouces/js/bootstrap/css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resouces/JQuery/css/datepicker.css">
	<script src="${pageContext.request.contextPath}/resouces/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resouces/js/bootstrap/js/bootstrap.min.js"></script>
	<!--最基础jQuery.js都是基于这个  -->
	<script type="text/javascript" src="resouces/jquery-1.11.3.min.js"></script>
	<!-- 异步转换参数js -->
	<script type="text/javascript" src="resouces/jqueryExt.js"></script>
	<!-- 上传文件js -->
	<script type="text/javascript" src="resouces/jquery.form.js"></script>
    <!-- 时间插件 -->
    
    <script src="${pageContext.request.contextPath}/resouces/JQuery/js/plugins/moment.min.js"></script>
    <script src="${pageContext.request.contextPath}/resouces/JQuery/js/datepicker.all.js"></script>
  </head>
  
  <body>
         <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			 <button type="button" class="btn btn-info btn-default btn-block">
			    <form class="form-horizontal"   id="form1" enctype="multipart/form-data">
			      <!-- <div class="form-group">
								<label for="description" class="col-sm-2 control-label">排班</label>
								<div class="col-sm-4">
					
										<select class="weeks form-control"  name="weeksId">
        	                            </select>
								</div>
					</div> -->
					<label for="description" class="col-sm-1 control-label">检查类型</label>
					<div class="col-md-2 column">
					    <!-- <input type="text" id="IdNumbers" onblur="getAge()" class="form-control" name="idnumbers" placeholder="请输入"> -->
					   <select class="check form-control" id="changeid" onchange="querycheck()" name="checkname">
					   </select>
					</div>
					<!-- <label for="description" class="col-sm-1 control-label">楼层</label>
					<div class="col-md-2 column">
					   <select class="floors form-control" id="changelc" onchange="queryScheduleItem()" name="lcksName">
					   </select>
					</div> -->
					<label for="description" class="col-sm-1 control-label">排班日期</label>
					<div class="col-md-2 column">
					   <input type="month" id="month1" class="form-control" name="" >
					</div>
					<!-- <label for="description" class="col-sm-1 control-label">至</label> -->
					<div class="col-md-2 column">
					   <input type="month" id="month2" class="form-control" name="" >
					</div>
					<div class="col-md-2 column" id="buttons">
			             <input type="button" id="" data-toggle="modal" data-target="#myModal" class="btn btn-default" value="添加">
		            </div>
					<!-- <label for="description" class="col-sm-1 control-label"></label>
					<div class="col-md-2 column">
					   <input type="text" id="" class="form-control" name="" placeholder="请输入">
					   
					</div> -->
					
			    </form>
			 </button>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-12 column">
			<table class="table table-hover">
      <thead >
       <tr class="success">
         <th>检查编号</th>
         <th>检查类型</th>
         <th>检查日期</th>
         <th>检查星期</th>
         <th>检查总人数</th>
         <th>已检查人数</th>
         <th>未检查人数</th>
        </tr>
      </thead>
      <tbody id="tbody">
           
      </tbody>
    </table>
		</div>
	</div>
	<!-- <div class="row clearfix">
		<div class="col-md-12 column">
			 <button type="button" class="btn btn-default btn-success btn-block active">保存</button>
		</div>
	</div> -->
</div>
    
    
    <!-- 模态框弹出录入内容 -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content" style="width:860px;">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">
							&times;
							<!-- 关闭按钮 -->
						</button>
						<h4 class="modal-title" id="modalTitle1">排班明细</h4>
						         <center>
								      <div class="c-datepicker-date-editor J-datepickerTime-range mt10">
								          <i class="c-datepicker-range__icon kxiconfont icon-clock"></i>
								          <input placeholder="开始日期" id="startTime" name="" class="c-datepicker-data-input" value="">
								          <span class="c-datepicker-range-separator">-</span>
								          <input placeholder="结束日期" id="endTime" name="" class="c-datepicker-data-input" value="">
								        </div>
								       
								   </center>
					</div>
					<div class="modal-body">
					  <!--form提交表单  -->
						<form class="form-horizontal"   id="forms" enctype="multipart/form-data">
						     <table class="tabledblclick table table-bordered">
								  
								   <caption>
								   
								   </caption>
								  
								  <thead>
								    <tr>
								      <th><input type="checkbox"  class="xzjsjesss" id=""  name="checkall" ></th>
								      <th>检查类型</th>
								      <th><center>检查时间</center></th>
								      <th>检查人数</th>
								      <th>已检人数</th>
								      <th>未检人数</th>
								      <th colspan="2">
								        <input type='button' id="addHang" onclick="addHang()" class='btn btn-default btn-xs'  value='增加'>
								        <input  type="button" value="删除"   class="btn btn-info btn-xs"  id="scry" >
								      </th>
								    </tr>
								  </thead>
								  <tbody id="tbodys">
								     <tr>
									        <td><input type='checkbox' class='xzjsje' value='0'  name='checkbox' readonly='readonly'></td>
									        <td><select class='check form-control'  name='checkId0'></select></td>
									        <td><input type='text' style='font-size:15px' size='11'  class='' id='' name='startTime0' readonly='readonly'>
									              <input type='text' style='font-size:15px'  size='11'  class='' id='' name='endTime0' readonly='readonly'>
									              <input type='hidden' class='weeksId' id='' name='weeksId0' ></td>
									        <td><input type='text'  size='6'  class='zrs' id='' name='cellNumbers0' >
									              <input type='hidden' class='' id='' name='cseweeks0' ></td>
									        <td><input type='text'  size='6'  class='yjrs' id='' name='cellsdnop0' ></td>
									        <td><input type='text'  size='6'  class='wjrs' id='' name='cellNotp0' ></td>
									        <td><input type='button'     class='updateTime btn btn-default btn-sm' value='时间检索'></td>
									        
							        </tr>
								  </tbody>
								</table>
				
							 <input type="button"    id="saveCheckScl"  data-toggle='modal' data-target='#myModal' class="btn btn-primary btn-sm" value="保存"> 
						</form>

					</div>
					<div class="modal-footer">
						
						<button type="button" id="buttonguan"  class="up btn btn-default" data-dismiss="modal">关闭
						</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>
    
  </body>
</html>
<script>
$(function(){
   queryTbGoods();
   queryTbGoodsType();
});
 /* 查询商品表 */
 function queryTbGoods(){
      var name=$("#goodsNames").val();
      var tyName=$("#typeNames").val();
      /* alert(name+":参数:"+tyName); */
    $.ajax({
       url:"goods/queryTbGoods",
       type:"post",
       data:{"goodsName":name,"typeName":tyName},
       dataType:"json",
       success:function(data){
         $("#tbody").empty();
         $.each(data,function(key,obj){
         /* alert(obj.typeId.typeName); */
            var tr="<tr>";
                 tr+="<td>"+obj.goodsId+"</td>";
                 tr+="<td>"+obj.goodsName+"</td>";
                 tr+="<td>"+obj.typeName+"</td>";
                 tr+="<td>"+obj.goodsDesc+"</td>";
                 tr+="<td>"+obj.goodsUnitPrice+"</td>";
                 /* tr+="<td><img style=' width:80px; height:80px;' src='"+obj.goodsImageName+"'/></td>"; */
                 tr+="<td>"+obj.sellCount+"</td>";
                 tr+="<td>"+obj.goodsDate+"</td>";
                 tr+="<td><input type='button'  id="+obj.goodsId+" data-toggle='modal' data-target='#myModal' title="+obj.goodsId+"  class='findById btn btn-default' value='修改'></td>";
                 tr+="<td><input type='button' id="+obj.goodsId+"  class='delete btn btn-default' value='删除'></td>";
                 tr+="</tr>";
                 $("#tbody").append(tr);
         });
       }
    });
 }
 /*查询商品类型  */
 function queryTbGoodsType(){
   $.ajax({
     url:"goods/queryTbGoodsType",
     type:"post",
     data:"",
     dataType:"json",
     success:function(data){
       for(var i=0;i<data.length;i++){
         var obj=data[i];
         $(".sele").append("<option value='"+obj.typeId+"'>"+obj.typeName+"</option>");
       }
     }
   });
 }
 /* 添加修改之前清空form表单 */
   $(document).on("click",".emptys",function(){
          $("#goodsId").val("");
           $("#goodsName").val("");
           $("#goodsDesc").val("");
           $("#goodsUnitPrice").val("");
           $("#sellCount").val("");
           $("#goodsDate").val("");
  });
  /*添加修改  */
 $(document).on("click","#saveUploadOrUpdate",function(){
    /* alert($("#form1").serialize()); */
     $.ajax({
       url:"goods/saveOrUpdateTbgoods",
       type:"post",
       data:$("#form1").serialize(),
       dataType:"text",
       success:function(data){
         alert(data);
         queryTbGoods();
       }
     });
 });
 /*修改前查询  */
 $(document).on("click",".findById",function(){
    var id=this.id;
    
    $.ajax({
       url:"goods/findByIdTbGoods",
       type:"post",
       data:{"goodsId":id},
       dataType:"json",
       success:function(data){
           $("#goodsId").val(data.goodsId);
           $("#goodsName").val(data.goodsName);
           $("#goodsDesc").val(data.goodsDesc);
           $("#goodsUnitPrice").val(data.goodsUnitPrice);
           $("#sellCount").val(data.sellCount);
           $("#goodsDate").val(data.goodsDate);
       }
    });
 });
 $(document).on("click",".delete",function(){
   var id=this.id;
   if (confirm("您确定要删除此信息吗？")){
   $.ajax({
      url:"goods/deleteGoods",
      type:"post",
      data:{"goodsId":id},
      dataType:"text",
      success:function(data){
        alert(data);
        queryTbGoods();
      }
   });
   }else{
     return false;
   }
 });
 /* ------------------排班---------------------- */
 $(function(){
    queryWeeks();
    
  });
 function querycheck(){
      /* var weeksName=$('#changeid option:selected').html(); */
      var checkId=$('#changeid option:selected').val();
      var month1=$("#month1").val();
       var month2=$("#month2").val();
       //alert(checkId+month1+month2);
       /* if(month2.substr(6,1)-month1.substr(6,1)==1){}else{
         alert("请选择日期格式为一个月!");
       } */
          $.ajax({
       url:"CheckSchedule/getCse/"+checkId+"/"+month1+"/"+month2,
       type:"get",
       data:{"checkId":checkId,"startTime":month1,"endTime":month2},
       dataType:"json",
       success:function(data){
        if(data==''){
         alert("暂无数据!");
        };
          $("#tbody").empty();
          //alert(data);
          //var sum=0;
          $.each(data,function(key,obj){
             var tr="<tr>";
                 tr+="<td>"+obj.cseid+"</td>";
                 tr+="<td>"+obj.checkType.checkname+"</td>";
                 tr+="<td>"+obj.cseweeks+"</td>";
                 tr+="<td>"+obj.weeks.weeksname+"</td>";
                 tr+="<td>"+obj.csetype+"</td>";
                 tr+="<td>"+parseFloat(obj.csetype-obj.cseyvyve)+"</td>";
                 tr+="<td>"+obj.cseyvyve+"</td>";
                 tr+="</tr>";
                 $("#tbody").append(tr);  
                 //sum+=data1[0].charges;
         });
          
       }
    });
       
   
 }
 /* 增加行号 */
 
 var i=1;
    //var stuId;
    $(document).on("click","#addHang",function(){
        queryWeeks();
        var tr="<tr class='tr'>"
        +"<td><input type='checkbox' class='xzjsje'  name='checkbox' readonly='readonly'></td>"
        +"<td><select class='check form-control'  name='checkId"+i+"'></select></td>"
        +"<td><input type='text' style='font-size:15px' size='11'  class='' id='' name='startTime"+i+"' readonly='readonly'>"+
              "<input type='text' style='font-size:15px'  size='11'  class='' id='' name='endTime"+i+"' readonly='readonly'>"+
              "<input type='hidden' class='weeksId' id='' name='weeksId"+i+"' ></td>"
        +"<td><input type='text'  size='6'  class='zrs' id='' name='cellNumbers"+i+"' >"+
              "<input type='hidden' class='' id='' name='cseweeks"+i+"' ></td>"
        +"<td><input type='text'  size='6'  class='yjrs' id='' name='cellsdnop"+i+"' ></td>"
        +"<td><input type='text'  size='6'  class='wjrs' id='' name='cellNotp"+i+"' ></td>"
        tr+="<td><input type='button'     class='updateTime btn btn-default btn-sm' value='时间检索'>&nbsp</td>";
        /* +"<td><input type='text'  size='6'  class='yhje' id='' name='list["+i+"].grjczes' readonly='readonly'></td>" */
        +"</tr>"
        $("#tbodys").append(tr); 
       /*  var checkId=$('#changeid option:selected').html(); */
        /* var id=$(".stuId").val();
        var ids=parseFloat(id)+parseFloat(i);
        stuId=this;
        $(stuId).parent().siblings("#tbody").children().eq(i).children().eq(0).children().val(ids); */
        /* 动态改变模态框的高度 */
			 /* var ht=parseInt(500);
			 var gh=(i+1)*parseInt(35);
			 var gds=ht+gh;
			$("#wh").height(gds); */
        /* 添加人数 */
        //var rs=$(".bjrs").val();
       /*  var rsss=(i+parseInt(1));
        $(".bjrs").val(rsss); */
        i++;//行号增加
    });
/*  */    
 $(document).on("blur",".zrs",function(){
   var zrss=$(this).val();
   var yjrss=$(this).parent().parent().children().eq(4).children().val();
   var wjrss=parseFloat(zrss-yjrss);
   $(this).parent().parent().children().eq(5).children().val(wjrss);
   
  
});
$(document).on("blur",".yjrs",function(){
   var yjrs=$(this).val();
   var zrs=$(this).parent().parent().children().eq(3).children().val();
   var wjrs=parseFloat(zrs-yjrs);
   $(this).parent().parent().children().eq(5).children().val(wjrs);
   /* alert(yjrs+":"+zrs+":"+wjrs); */
  
});

 /* 修改时间 */
 $(document).on("click",".updateTime",function(){
    
    var startTime=$("#startTime").val();
    var endTime=$("#endTime").val();
    
    /* var Time=$(this).parent().parent().children().eq(2).children().val();
    alert(Time); */
    var weeksId=new Date(startTime).getDay();/* 获取星期几 */
   if(startTime.length>0&&endTime.length>0&&startTime.substr(0,10)==endTime.substr(0,10)){
      $(this).parent().parent().children().eq(2).children().val(startTime);
      $(this).parent().parent().children().eq(2).children().next().val(endTime);
      $(this).parent().parent().children().eq(2).children().next().next().val(weeksId);
      $(this).parent().parent().children().eq(3).children().next().val(endTime.substr(0,10));
      //alert("已修改时间段!");
    }else{
      alert("请选择正确时间段!");
      
    }

 });
 /* 添加排班 */
  $(document).on("click","#saveCheckScl",function(){
    
     if($('input[name="checkbox"]:checked').length>0){
         /* 选择个数 */
        var checkData=$('input[name="checkbox"]:checked').length;
        $(".xzjsjesss").val(checkData);
        /* var time;
        for(int i=0;i<checkData;i++){
          time=$('input[name="checkbox"]:checked').parent().parent().children().eq(2).children().val();
          if(time==$('input[name="checkbox"]:checked').parent().parent().children().eq(2).children().val()){
              alert("相等");
          }else{
             alert("不相等");
          }
        } */
         //saveCheckScl
         
        $.ajax({
                url:"${pageContext.request.contextPath}/CheckSchedule/saveCheckScl",
                type:"post",
                data:$("#forms").serialize(),
                dataType:"json",
                success:function(data){
                   alert(data);
                   querycheck();
                }
            });
     }else{
       alert("请选择添加!");
     }
     
  });
      

 <!-- start 全选/全不选 -->
		
	$('input[name="checkall"]').on("click",function(){
		if($(this).is(':checked')){
			$('input[name="checkbox"]').each(function(){
				$(this).prop("checked",true);
			});
		}else{
			$('input[name="checkbox"]').each(function(){
				$(this).prop("checked",false);
			});
		}
	});
		
		<!-- end 全选/全不选 -->
    $(document).on("click","#scry",function(){
         if($('input[name="checkbox"]:checked').val()==0){
               alert("第一行不能删除!");
             }else{
         if(confirm("你确定真的要删除嘛")){
        $('input[name="checkbox"]:checked').each(function(){
            //alert(this.id);
             //单条删除//提示框
            
               $(this).parent("td").parent("tr").remove(); /* 删除行数 */
             
                 
                 
        }); 
        }
       };
    }); 
 
  function queryWeeks(){
   var checkName=$("#changeid").val();
  /*  data:{"checkName":checkName},
  var obj=$("#roleForm").serializeObject();//将表单数据转换json对象
      async:true,
      contentType:"application/json;charset=utf-8",//发送的内容类型utf-8
      data:JSON.stringify(obj),//将json对象转换成json字符串 */
   //url:"checkType/get/"+"1",
   var geturl="http://www.xh.com/HS_jcpb/webservice/queryCheckType/getCheckType";
   
   $.ajax({
     url:"checkType/get/"+"1",
     type:"get",
     async:true,
      contentType:"application/json;charset=utf-8",//发送的内容类型utf-8
      data:JSON.stringify(checkName),//将json对象转换成json字符串 */
     dataType:"json",
     success:function(data){
       
     //alert(data);
      
       $(".check").empty();
           /* $(".check").append("<option value=''>-------请选择------</option>"); */
       $.each(data,function(val,obj){
           $(".check").append("<option value='"+obj.checkid+"'>"+obj.checkname+"</option>");
       });
       querycheck();
     }
   });
 };
 //获取日期
   var now = new Date();
   //var day = ("0" + now.getDate()).slice(-2);//格式化日，如果小于9，前面补0
   var month = ("0" + (now.getMonth() + 1)).slice(-2);
   //var today = now.getFullYear()+"-"+(month)+"-"+(day) ;
   var today = now.getFullYear()+"-"+(month);
   $("#month1").val(today);
    var month2=("0" + (now.getMonth() + 1+1)).slice(-2);
   var today2= now.getFullYear()+"-"+(month2);
   $("#month2").val(today2);
</script>
<script type="text/javascript">
      $(function(){
        var DATAPICKERAPI = {
          // 默认input显示当前月,自己获取后填充
          activeMonthRange: function () {
            return {
              begin: moment().set({ 'date': 1, 'hour': 0, 'minute': 0, 'second': 0 }).format('YYYY-MM-DD HH:mm:ss'),
              end: moment().set({ 'hour': 23, 'minute': 59, 'second': 59 }).format('YYYY-MM-DD HH:mm:ss')
            }
          },
          shortcutMonth: function () {
            // 当月
            var nowDay = moment().get('date');
            var prevMonthFirstDay = moment().subtract(1, 'months').set({ 'date': 1 });
            var prevMonthDay = moment().diff(prevMonthFirstDay, 'days');
            return {
              now: '-' + nowDay + ',0',
              prev: '-' + prevMonthDay + ',-' + nowDay
            }
          },
          // 近n小时计算返回
          shortcutPrevHours: function (hour) {
            var nowDay = moment().get('date');
            var prevHours = moment().subtract(hour, 'hours');
            var prevDate=prevHours.get('date')- nowDay;
            var nowTime=moment().format('HH:mm:ss');
            var prevTime = prevHours.format('HH:mm:ss');
            return {
              day: prevDate + ',0',
              time: prevTime+',' + nowTime,
              name: '近'+ hour+'小时'
            }
          },
          // 注意为函数：快捷选项option:只能同一个月份内的
          rangeMonthShortcutOption1: function () {
            var result = DATAPICKERAPI.shortcutMonth();
            // 近18小时
            var resultTime= DATAPICKERAPI.shortcutPrevHours(18);
            return [{
              name: '昨天',
              day: '-1,-1',
              time: '00:00:00,23:59:59'
            }, {
              name: '这一月',
              day: result.now,
              time: '00:00:00,'
            }, {
              name: '上一月',
              day: result.prev,
              time: '00:00:00,23:59:59'
            }, {
              name: resultTime.name,
              day: resultTime.day,
              time: resultTime.time
            }];
          },
          // 快捷选项option
          rangeShortcutOption1: [{
            name: '最近一周',
            day: '-7,0'
          }, {
            name: '最近一个月',
            day: '-30,0'
          }, {
            name: '最近三个月',
            day: '-90, 0'
          }],
          singleShortcutOptions1: [{
            name: '今天',
            day: '0',
            time: '00:00:00'
          }, {
            name: '昨天',
            day: '-1',
            time: '00:00:00'
          }, {
            name: '一周前',
            day: '-7'
          }]
        };
          //时分秒年月日单个
          $('.J-datepicker').datePicker({
            hasShortcut:true,
            min:'2018-01-01 04:00:00',
            max:'2019-04-29 20:59:59',
            shortcutOptions:[{
              name: '今天',
              day: '0'
            }, {
              name: '昨天',
              day: '-1',
              time: '00:00:00'
            }, {
              name: '一周前',
              day: '-7'
            }],
            hide:function(){
              console.info(this)
            }
          });
          
          //年月日单个
          $('.J-datepicker-day').datePicker({
            hasShortcut: true,
            format:'YYYY-MM-DD',
            shortcutOptions: [{
              name: '今天',
              day: '0'
            }, {
              name: '昨天',
              day: '-1'
            }, {
              name: '一周前',
              day: '-7'
            }]
          });
          
          //年月日范围
          $('.J-datepicker-range-day').datePicker({
            hasShortcut: true,
            format: 'YYYY-MM-DD',
            isRange: true,
            shortcutOptions: DATAPICKERAPI.rangeShortcutOption1
          });

          //十分年月日单个
          $('.J-datepickerTime-single').datePicker({
            format: 'YYYY-MM-DD HH:mm'
          });
          
          //十分年月日范围
          $('.J-datepickerTime-range').datePicker({
            format: 'YYYY-MM-DD HH:mm',
            isRange: true
          });
          
          //时分秒年月日范围，包含最大最小值
          $('.J-datepicker-range').datePicker({
            hasShortcut: true,
            min: '2018-01-01 06:00:00',
            max: '2019-04-29 20:59:59',
            isRange: true,
            shortcutOptions: [{
              name: '昨天',
              day: '-1,-1',
              time: '00:00:00,23:59:59'
            },{
              name: '最近一周',
              day: '-7,0',
              time:'00:00:00,'
            }, {
              name: '最近一个月',
              day: '-30,0',
              time: '00:00:00,'
            }, {
              name: '最近三个月',
              day: '-90, 0',
              time: '00:00:00,'
            }],
            hide: function (type) {
              console.info(this.$input.eq(0).val(), this.$input.eq(1).val());
              console.info('类型：',type)
            }
          });
          //时分秒年月日范围，限制只能选择同一月，比如2018-10-01到2018-10-30
          $('.J-datepicker-range-betweenMonth').datePicker({
            isRange: true,
            between:'month',
            hasShortcut: true,
            shortcutOptions: DATAPICKERAPI.rangeMonthShortcutOption1()
          });
          
          //时分秒年月日范围，限制开始结束相隔天数小于30天
          $('.J-datepicker-range-between30').datePicker({
            isRange: true,
            between: 30
          });
          
          //年月单个
          $('.J-yearMonthPicker-single').datePicker({
            format: 'YYYY-MM',
            min: '2018-01',
            max: '2019-04'
          });
          
          //选择年
          $('.J-yearPicker-single').datePicker({
            format: 'YYYY',
            min: '2018',
            max: '2020'
          });
          
          
      });
    </script>