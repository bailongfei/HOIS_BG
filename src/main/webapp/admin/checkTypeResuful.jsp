<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'checkTypeResuful.jsp' starting page</title>
    
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
    <style type="text/css">
      #tbodyweeks tr td{
            width:100px;
			height:100px;
			background:#0deca2;
			border: 5px solid #d2d2d2;
      }
    </style>
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
			             <input type="button" id="" class="btn btn-default" value="检索">
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
			<table class="checktable table table-hover">
				<thead>
					<tr class="success">
					  <th>星期日</th>
					  <th>星期一</th>
					  <th>星期二</th>
					  <th>星期三</th>
					  <th>星期四</th>
					  <th>星期五</th>
					  <th>星期六</th>
					  <!-- <th colspan="2">操作</th> -->
					</tr>
				</thead>
				<tbody id="tbodyweeks">
				    <tr id="tr1">
					  <td>1</td>
					  <td data-toggle="modal" data-target="#myModal" id="td1">2</td>
					  <td data-toggle="modal" data-target="#myModal" id="td2">3</td>
					  <td data-toggle="modal" data-target="#myModal" id="td3">4</td>
					  <td data-toggle="modal" data-target="#myModal" id="td4">5</td>
					  <td data-toggle="modal" data-target="#myModal" id="td5">6</td>
					  <td>7</td>
					</tr>
					<tr id="tr2">
					  <td>8</td>
					  <td data-toggle="modal" data-target="#myModal" id="td1">9</td>
					  <td data-toggle="modal" data-target="#myModal" id="td2">10</td>
					  <td data-toggle="modal" data-target="#myModal" id="td3">11</td>
					  <td data-toggle="modal" data-target="#myModal" id="td4">12</td>
					  <td data-toggle="modal" data-target="#myModal" id="td5">13</td>
					  <td>14</td>
					</tr>
					<tr id="tr3">
					  <td>15</td>
					  <td data-toggle="modal" data-target="#myModal" id="td1">16</td>
					  <td data-toggle="modal" data-target="#myModal" id="td2">17</td>
					  <td data-toggle="modal" data-target="#myModal" id="td3">18</td>
					  <td data-toggle="modal" data-target="#myModal" id="td4">19</td>
					  <td data-toggle="modal" data-target="#myModal" id="td5">20</td>
					  <td>21</td>
					</tr>
					<tr id="tr4">
					  <td>22</td>
					  <td data-toggle="modal" data-target="#myModal" id="td1">23</td>
					  <td data-toggle="modal" data-target="#myModal" id="td2">24</td>
					  <td data-toggle="modal" data-target="#myModal" id="td3">25</td>
					  <td data-toggle="modal" data-target="#myModal" id="td4">26</td>
					  <td data-toggle="modal" data-target="#myModal" id="td5">27</td>
					  <td>28</td>
					</tr>
					<tr id="tr5">
					  <td>29</td>
					  <td data-toggle="modal" data-target="#myModal" id="td1">30</td>
					  <td data-toggle="modal" data-target="#myModal" id="td2">31</td>
					  <td data-toggle="modal" data-target="#myModal" id="td3">32</td>
					  <td data-toggle="modal" data-target="#myModal" id="td4">33</td>
					  <td data-toggle="modal" data-target="#myModal" id="td5">34</td>
					  <td>35</td>
					</tr> 
				</tbody>
			</table>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-12 column">
			 <button type="button" class="btn btn-default btn-success btn-block active">保存</button>
		</div>
	</div>
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
								      <th>检查类型</th>
								      <th><center>检查时间</center></th>
								      <th>检查人数</th>
								      <th>已检人数</th>
								      <th>未检人数</th>
								      <th colspan="2">操作
								        <input type='button' id="addHang"  class='btn btn-default btn-sm'  value='增加检查'>
								      </th>
								    </tr>
								  </thead>
								  <tbody id="tbodys">
								     
								  </tbody>
								</table>
				
							<!-- <input type="button"    id="saveUploadOrUpdate" data-toggle='modal' data-target='#myModal' class="btn btn-primary" value="保存"> -->
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
    queryWeeks();
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
 
 function querycheck(){
      /* var weeksName=$('#changeid option:selected').html(); */
      var checkId=$('#changeid option:selected').val();
      var month1=$("#month1").val();
       var month2=$("#month2").val();
       //alert(checkId+month1+month2);
       if(month2.substr(6,1)-month1.substr(6,1)==1){
          $.ajax({
       url:"CheckSchedule/get/"+checkId+"/"+month1+"/"+month2,
       type:"get",
       data:{"checkId":checkId,"startTime":month1,"endTime":month2},
       dataType:"json",
       success:function(data){
        if(data==''){
         alert("暂无数据!");
        };
          $("#tbodyweeks tr td").empty();
         //alert(data);
         /* $.each(data,function(key,obj){
             var td="<td>";
                 td+="<span>检查日期:"+obj.endTime.substr(0,10)+"</span><br><span>检查总人数:"+obj.cellNumbers+"</span>";
                 td+="</td>";
                 $("#tr1").append(td);  
                 
         }); */
          for(var i=0;i<data.length;i++){
             var obj=data[i];
             if(obj.weeksname=="星期一"){
               var td="<br><span>日期:<i>"+obj.cseweeks.substr(2,10)+"</i></span><br>";
                 td+="<span>总人数:"+obj.cseType+"</span><br>";
                 td+="<span>可约人数:"+obj.cseyvyve+"</span><br>";
                 $("#tr1 #td1").append(td); 
             }
             if(obj.weeksname=="星期二"){
               var td="<br><span>日期:<i>"+obj.cseweeks.substr(2,10)+"</i></span><br>";
                 td+="<span>总人数:"+obj.cseType+"</span><br>";
                 td+="<span>可约人数:"+obj.cseyvyve+"</span><br>";
                 $("#tr1 #td2").append(td); 
             }
             if(obj.weeksname=="星期三"){
               var td="<br><span>日期:<i>"+obj.cseweeks.substr(2,10)+"</i></span><br>";
                 td+="<span>总人数:"+obj.cseType+"</span><br>";
                 td+="<span>可约人数:"+obj.cseyvyve+"</span><br>";
                 $("#tr1 #td3").append(td); 
             }
             if(obj.weeksname=="星期四"){
               var td="<br><span>日期:<i>"+obj.cseweeks.substr(2,10)+"</i></span><br>";
                 td+="<span>总人数:"+obj.cseType+"</span><br>";
                 td+="<span>可约人数:"+obj.cseyvyve+"</span><br>";
                 $("#tr1 #td4").append(td); 
             }
             if(obj.weeksname=="星期五"){
               var td="<br><span>日期:<i>"+obj.cseweeks.substr(2,10)+"</i></span><br>";
                 td+="<span>总人数:"+obj.cseType+"</span><br>";
                 td+="<span>可约人数:"+obj.cseyvyve+"</span><br>";
                 $("#tr1 #td5").append(td); 
             }
         }
       }
    });
       }else{
         alert("请选择日期格式为一个月!");
       }
   
 }
 /* 添加行 */
   var i=0;
    //var stuId;
    $(document).on("click","#addHang",function(){
    
        var tr="<tr class='tr'>"
        +"<td><input type='checkbox' class='xzjsje'  name='checkbox' readonly='readonly'></td>"
        +"<td><i class='time' style='font-size:14px'></i>"+
          "~"+"<i style='font-size:14px'></i><input type='hidden' value='' class='sdid' /></td>"
        /* +"<td><input type='text' class='percc'  placeholder='请检索时间' readonly='readonly' name='personalaccount"+i+"'><input type='hidden' class='grzhbhs' size='6'  name='grzhbhs"+i+"'></td>"
          */
        +"<td><input type='text'  size='4'  value='' name='cellNumber"+i+"'/></td>"
        +"<td><input type='text'  size='4' value='' name='cellsdnop"+i+"'/></td>"
        +"<td><input type='text'  size='4'  value='' name='cellNotp"+i+"'/></td>" 
        +"<td><input type='button'     class='updateTime btn btn-default btn-sm' value='时间修改'>&nbsp"+
              "<input type='button'     class='savescl btn btn-default btn-sm' value='保存'></td>"
        tr+="<td><input type='button'   class='delete btn btn-default btn-sm' value='删除'></td>";
        /* +"<td><input type='text'  size='6'  class='yhje' id='' name='list["+i+"].grjczes' readonly='readonly'></td>" */
        +"</tr>"
        $("#tbodys").append(tr); 
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
        /* var rsss=(i+parseInt(1));
        $(".bjrs").val(rsss); */
        
        i++;//行号增加
    });
    /* 添加一行 */
    $(document).on("click",".savescl",function(){
        var cseid=$(this).parent().parent().parent().children().children().eq(1).children().next().next().val();
        var startTime=$(this).parent().parent().children().eq(1).children().html();
	    var cellNumber=$(this).parent().parent().children().eq(2).children().val();
	    var cellsdnop=$(this).parent().parent().children().eq(3).children().val();
	    var cellNotp=$(this).parent().parent().children().eq(4).children().val();
	    var endTime=$(this).parent().parent().children().eq(1).children().next().html();
        var weeksId=new Date(startTime).getDay();/* 获取星期几 */
        //alert(weeksId);
        //alert(cseid+":"+startTime+":"+endTime+":"+cellNumber+":"+cellsdnop+":"+cellNotp);
          $.ajax({
       url:"CheckSchedule/saveScl",
       type:"post",
       data:{
           "starttime":startTime,"cellnumbers":cellNumber,
           "endtime":endTime,"cseid":cseid,
           "cellsdnop":cellsdnop,"cellnotp":cellNotp,"weeksId":weeksId
       },
       dataType:"text",
       success:function(data){
         alert(data);
         querycheck();
       }
     });
    });
 /* 卡片双击 */
 $(document).on("click","#tbodyweeks tr td",function(){
    var endtime=$(this).children().eq(1).children().html();
    //$('#myModal').modal();
    var checkId=$('#changeid option:selected').val();
      //alert(checkId+":"+endtime);
      if(endtime){
         
       $.ajax({
       url:"CheckSchedule/getcheck/"+checkId+"/"+endtime,
       type:"get",
       data:{"checkId":checkId,"endtime":endtime},
       dataType:"json",
       success:function(data){
           $("#tbodys").empty();
           //alert(data);
           $.each(data,function(val,obj){
              var tr="<tr>";
                 tr+="<td><i>"+obj.checkName+"</i></td>";
                 
                 tr+="<td><i class='time' style='font-size:14px'>"+obj.startTime+"</i>"+
                 "~"+"<i style='font-size:14px'>"+obj.endTime+"</i><input type='hidden' value="+obj.cseid+" class='sdid' /></td>";
                 tr+="<td>"+obj.cellNumbers+"</td>";
                 tr+="<td>"+obj.cellsdnop+"</td>";
                 tr+="<td><i>"+obj.cellNotp+"</i></td>";
                 /* tr+="<td><img style=' width:80px; height:80px;' src='"+obj.goodsImageName+"'/></td>"; */
                 tr+="<td><input type='button'   title="+obj.cellId+"  class='updateTime btn btn-default btn-sm' value='时间修改'>&nbsp"+
                 "<input type='button'   title="+obj.cellId+"  class='Update btn btn-default btn-sm' value='保存'></td>";
                 tr+="<td><input type='button' id="+obj.cellId+"  class='delete btn btn-default btn-sm' value='删除'></td>";
                 tr+="</tr>";
                 $("#tbodys").append(tr);
           });
       }
    });
    }else{
        $("#tbodys").empty();
        $("#tbodys").append("<tr><td colspan='6'><center><h4>暂无排班信息!</h4></center></td></tr>");
        /* $('#buttonguan').trigger('click');
        alert("暂无排班信息!"); */
      }
 });
 /* 删除排班明细 */
 $(document).on("click",".delete",function(){
    var cellId=this.id;
    if (confirm("您确定要删除此信息吗？")){
   $.ajax({
      url:"CheckSchedule/deleteScl/"+cellId,
      type:"post",
      data:{"cellId":cellId},
      dataType:"text",
      success:function(data){
        alert(data);
        $('#buttonguan').trigger('click');
      }
      ,error:function(data){
         alert("请填写数据操作!");
         $('#buttonguan').trigger('click');
      }
   });
   }else{
     return false;
   }
 });
  /*添加修改  */
 $(document).on("click",".Update",function(){
    /* alert($("#form1").serialize()); */
    var cellId=this.title;
    var startTime=$(this).parent().parent().children().eq(1).children().html();
    var cellNumber=$(this).parent().parent().children().eq(2).html();
    var cellsdnop=$(this).parent().parent().children().eq(3).html();
    var cellNotp=$(this).parent().parent().children().eq(4).children().html();
    var endTime=$(this).parent().parent().children().eq(1).children().next().html();
    var cseid=$(this).parent().parent().children().eq(1).children().next().next().val();
    var dates=new Date(startTime).getDay();/* 获取星期几 */
    //alert(dates+":"+cseid);
    //alert(startTime+"和"+cellNumber+cellsdnop+cellNotp+"和"+endTime);
    /* if($(".time").html(startTime).change()){
      alert("1111");
    }else{
       alert("请先修改时间!");
    } */
     $.ajax({
       url:"CheckSchedule/updateSICS",
       type:"post",
       data:{
           "startTime":startTime,"cellNumbers":cellNumber,
           "cellId":cellId,"endTime":endTime,"cseid":cseid,"weeksId":dates,
           "cellsdnop":cellsdnop,"cellNotp":cellNotp
       },
       dataType:"text",
       success:function(data){
         alert(data);
         querycheck();
       }
     });
 });
 /* 增加行号 */
 
 /* 计算未检查人数 */
 $(document).on("blur",".nums",function(){
    var nums=$(this).val();
      var naxt=$(this).parent().parent().children().eq(3).html();
    if(!isNaN(naxt)){
	  var s=parseFloat(nums-naxt);
	  $(this).parent().parent().children().eq(4).children().html(s);
	 
	}else{
	  var naxts=$(this).parent().parent().children().eq(2).html();
	  var z=parseFloat(naxts-nums);
	   $(this).parent().parent().children().eq(4).children().html(z);
	  
	}
 });
 /* 修改时间 */
 $(document).on("click",".updateTime",function(){
    var Time=$(this).parent().parent().children().eq(1).children().html();
    var startTime=$("#startTime").val();
    var endTime=$("#endTime").val();
   /*  var time=new Date(st.replace("-", "/").replace("-", "/"));
    var start=new Date(tm.replace("-", "/").replace("-", "/")); */
    //alert(Time+"/"+startTime+"/"+endTime);
    //alert(Time.substr(0,10)==endTime.substr(0,10)); 
    if(Time!=null&&Time!=''){
    
    if(startTime.length>0&&endTime.length>0&&Time.substr(0,10)==startTime.substr(0,10)&&Time.substr(0,10)==endTime.substr(0,10)){
      $(this).parent().parent().children().eq(1).children().html(startTime);
      $(this).parent().parent().children().eq(1).children().next().html(endTime);
      //alert("已修改时间段!");
    }else{
      alert("请选择正确时间段!");
      
    }
    
    }else{
      var tm=$(this).parent().parent().parent().children().eq(0).children().eq(1).children().html();
        
        if(startTime.length>0&&endTime.length>0&&tm.substr(0,10)==startTime.substr(0,10)&&tm.substr(0,10)==endTime.substr(0,10)){
	      $(this).parent().parent().children().eq(1).children().html(startTime);
	      $(this).parent().parent().children().eq(1).children().next().html(endTime);
	      //alert("已修改时间段!");
	    }else{
	      alert("请选择正确时间段!");
	      
	    }
    }
    
 });
 /* 输入框修改 */
 $(".tabledblclick").on("dblclick","td",function(){
	if($(this).children("input").length>0||$(this).children("i").length>0){
		return false;
	}
	var tdDom = $(this);
	//保存初始值
	var tdPreText = $(this).text();
	//给td设置宽度和给input设置宽度并赋值
	$(this).width(60).html("<input type='text' class='nums'>").find("input").width(60).val(tdPreText);
	//失去焦点的时候重新赋值
	var inputDom = $(this).find("input");
	inputDom.blur(function(){
		var newText = $(this).val();
		$(this).remove();
		tdDom.text(newText);
	});
	});
 
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