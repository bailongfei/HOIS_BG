$.fn.serializeObject = function() {  
    var o = {};  //对象
    var a = this.serializeArray();  //将当前元素 序列化成数组
    $.each(a, function() {   //遍历数组中的每一项
    	//undefined作为条件 ：false
        if (o[this.name]) { //如果指定名称的属性存在,相当于: o[this.name]!=undefined
            if (!o[this.name].push) {//如果该属性未定义，将该属性定义成数组 !undefined
                o[this.name] = [ o[this.name] ];  //初始化成数组
            }  
            o[this.name].push(this.value || '');  //以数组的形式存入元素
        } else {  //如果指定名称的属性不存在 ,以name的值为属性，存入value值
            o[this.name] = this.value || '';  
        }  
    });  
    return o;  
}
////获取表单数据
//$('form').serializeObject();