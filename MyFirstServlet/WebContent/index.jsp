<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	这是我的第一个servlet
	<a href=servlet/HelloServlet>doGet()方法进入</a><br/>
	
	<input type="text" id="firstnumber" name="firstnumber">
	
	<input type="button" value="点击触发事件" onclick="toFixed();"/><br/>
	
	<a href=index.html>进入图片轮播页面</a><br/>
	
	<table>
		<tr>姓名:
			<td><input type="text" id="name" value=""/></td>
		</tr>
		<tr>密码:
			<td><input type="text" id="password" value=""/></td>
		</tr>
		<tr>证件:
			<td><input type="text" id="certid" value=""/></td>
		</tr>
	</table>
	
	<input type="button" value="导出" onclick="toExport();"/><br/>
</body>

<script language="javascript"> 
function toFixed(){
	var value = new Number(document.getElementById("firstnumber").value);
	alert(value);
	alert("保留两位小数："+value.toFixed(2));
	alert("保留四位小数："+value.toFixed(4));
	document.getElementById("firstnumber").value=value.toFixed(4);
}

function createWord(filePath){
	 var fso = new ActiveXObject("Scripting.FileSystemObject");   //加载控件
	 var f1 = fso.OpenTextFile(filePath,2,true);
	 f1.WriteLine(document.body.outerHTML); 
	 f1.colse();
}

function openDoc(filePath){
	try{
		var objWord = new ActiveXObject("Word.Application");
		objWord.Visible=true;
		objWord.Visible=true;
		objWord.Documents.Open(filePath);
	}catch(e){
		alert(e.name+' '+e.number+' '+e.message);
	}
}

function OpenWps(filePath){
	var wpsApp = new ActiveXObject("WPS.Application");
	wpsApp.Visible=true;
	wpsApp.Documents.Open(filePath);
}

function toExport(){
	 var filePath = "d:\\temp\\01.doc";
	 createWord(filePath);
	 openDoc(filePath);
	 //alert(document.body.outerHTML);
	
}
</script>

</html>