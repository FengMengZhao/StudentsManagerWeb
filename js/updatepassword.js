  $(function() { 
     
	 	$(".labelError1").each(function() {
	 		if($(this).text()) {
	 			$(this).css("display", "");
	 		} else {
	 			$(this).css("display", "none");
	 		}
	 	});
	   $(".input").blur(function() {
		var inputName = $(this).attr("name");
		invokeValidateFunction(inputName);
	    });
	    
	 	
	     $(".input").focus(function() {
		 var inputName = $(this).attr("name");
		 $("#" + inputName + "Error").css("display", "none");
	     });
	    
	    
	    
	 } ) ; 
       
	 function invokeValidateFunction(inputName) {//调用验证函数
	 var functionName = "validate" + inputName;
	 return eval(functionName + "()");	
     }
     
	
	/**
     * 校验原密码
    */
    function validateoldpassword() {
     var bool = true;
	 $("#oldpasswordError").css("display", "none");
	 var value = $("#oldpassword").val();
	 if(!value) {// 非空校验
		$("#oldpasswordError").css("display", "");
		$("#oldpasswordError").text("原密码不能为空！");
	    bool = false;
		}
	 else if(value.length<3||value.length>20) {//格式校验
		$("#oldpasswordError").css("display", "");
		$("#oldpasswordError").text("密码必须为3-20位！");
		bool = false;
	 } else {//原密码是否正确
		$.ajax({
		cache: false,
		async: false,
			type: "POST",
			dataType: "json",
			data: {oldpassword: value},
			url: "user!CheckPassword.action",
			success: function(flag) {
				if(flag) {
					$("#oldpasswordError").css("display", "");
					$("#oldpasswordError").text("原密码不正确！");
					bool = false;					
				}
			}
		  });		
	  }
	  return bool;
}

 	
	/**
     * 校验新密码
    */
    function validatenewpassword() {
     var bool = true;
	 $("#newpasswordError").css("display", "none");
	 var value = $("#newpassword").val();
	 if(!value) {// 非空校验
		$("#newpasswordError").css("display", "");
		$("#newpasswordError").text("新密码不能为空！");
	    bool = false;
		}
	 else if(value.length<3||value.length>20) {//格式校验
		$("#newpasswordError").css("display", "");
		$("#newpasswordError").text("密码必须为3-20位！");
		bool = false;
	 } 
	  return bool;
}

      	
	/**
     * 校验确认密码
    */
    function validaterepassword() {
     var bool = true;
	 $("#repasswordError").css("display", "none");
	 var value = $("#repassword").val();
	 if(!value) {// 非空校验
		$("#repasswordError").css("display", "");
		$("#repasswordError").text("确认密码不能为空！");
	    bool = false;
		}
	 else if(value.length<3||value.length>20) {//格式校验
		$("#repasswordError").css("display", "");
		$("#repasswordError").text("密码必须为3-20位！");
		bool = false;
	 }  else if(value != $("#newpassword").val()) {//两次输入是否一致
	    $("#repasswordError").css("display", "");
		$("#repasswordError").text("两次输入不一致！");
		bool = false;
	}
	  return bool;
}
    function check(){
		var bool = true;
		$(".input").each(function() {
			var inputName = $(this).attr("name");
			if(!invokeValidateFunction(inputName)) {
				bool = false;
			}
		});
		return bool;
   } 