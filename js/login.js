$(function() { 
     
   $(".input").blur(function() {
	   var inputName = $(this).attr("name");
	   invokeValidateFunction(inputName);
   });
	    
   $(".input").focus(function() {
	   var inputName = $(this).attr("name");
	   var str=inputName.replace(/loginUser./,"");
	   $("#" + str + "Error").css("display", "none");
   });
	    
	     /*
		 	 * 5. 如果<label>有内容，那么显示，没有不显示。
		 */
   $(".labelError").each(function() {
	   if($(this).text()) {
		   $(this).css("display", "");
	   } else {
		   $(this).css("display", "none");
	   }
   });
	    
} ) ; 

    function invokeValidateFunction(inputName) {
	 var str=inputName.replace(/loginUser./,"");
	 var functionName = "validate" + str;
	 return eval(functionName + "()");	
    }


    function validateusername() {
     var bool=true;
   	 var value = $("#username").val();
   	 if(!value) {
   	    $("#usernameError").css("display", "");
   		$("#usernameError").text("用户名不能为空！");
   		bool=false;
   	 } else if(value.length < 3 || value.length > 20) {
   		$("#usernameError").css("display", "");
   		$("#usernameError").text("用户名长度在3 ~ 20之间！");
   		bool=false;
   	}
   	  return bool;
    } 
    
    
    /**
     * 
       校验密码
     */
    function validatepassword() {
	var bool = true;
	$("#passwordError").css("display", "none");
	var value = $("#password").val();
    if(!value) {
		$("#passwordError").css("display", "");
		$("#passwordError").text("密码不能为空！");
	bool = false;
	} else if(value.length < 3 || value.length > 20) {
		$("#passwordError").css("display", "");
		$("#passwordError").text("密码长度在3 ~ 20之间！");
		bool = false;
	}
	return bool;
    }
    
    /**
     * 校验验证码
     */
    function validateimageValue() {
    	var bool = true;
    	$("#imageValueError").css("display", "none");
    	var value = $("#imageValue").val();
    	if(!value) {//非空校验
    		$("#imageValueError").css("display", "");
    		$("#imageValueError").text("验证码不能为空！");
    		bool = false;
    	} else if(value.length != 4) {//长度不为4就是错误的
    		$("#imageValueError").css("display", "");
    		$("#imageValueError").text("错误的验证码！");
    		bool = false;
    	} else {//验证码是否正确
    		$.ajax({
    			cache: false,
    			async: false,
    			type: "POST",
    			dataType: "json",
    			data: {imageValue: value},
    			url: "user!checkImageValue.action",
    			success: function(flag) {
    				if(!flag) {
    					$("#imageValueError").css("display", "");
    					$("#imageValueError").text("验证码错误！");
    					bool = false;									}
    			}
    		});
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
    		})
    		return bool;
       }