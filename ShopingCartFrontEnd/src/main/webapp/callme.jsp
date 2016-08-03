<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  </head>
  <style>
  body
  {
  	background-image: url(file:///C:/Users/admin/Desktop/contactback.jpg);
  	background-size: cover;
  }
  </style>
  <body>
<h2 style= "padding: 25px;border: 1px;border-radius: 8px; solid black;background-color:#334d4d;font-family: fantasy;color:#ffffff">CONTACT US</h2>
<form action="http://www.SnapHost.com/captcha/send.aspx" id="ContactUsCaptchaWebForm" method="post" onsubmit="return ValidateForm(this);">
<input name="skip_WhereToSend" type="hidden" value="your@email.com" />
<input name="skip_SnapHostID" type="hidden" value="XDXMMWTETRAM" />
<input name="skip_WhereToReturn" type="hidden" value="http://www.YourWebsiteAddress.com/ThankYouPage.htm" />
<input name="skip_Subject" type="hidden" value="Contact Us Form" />
<input name="skip_ShowUsersIp" type="hidden" value="1" />
<input name="skip_SendCopyToUser" type="hidden" value="1" />
<script type="text/javascript">
function ValidateForm(frm) {
if (frm.Name.value == "") {alert('Name is required.');frm.Name.focus();return false;}
if (frm.FromEmailAddress.value == "") {alert('Email address is required.');frm.FromEmailAddress.focus();return false;}
if (frm.FromEmailAddress.value.indexOf("@") < 1 || frm.FromEmailAddress.value.indexOf(".") < 1) {alert('Please enter a valid email address.');frm.FromEmailAddress.focus();return false;}
if (frm.Comments.value == "") {alert('Please enter comments or questions.');frm.Comments.focus();return false;}
if (frm.skip_CaptchaCode.value == "") {alert('Enter web form code.');frm.skip_CaptchaCode.focus();return false;}
return true; }
function ReloadCaptchaImage(captchaImageId) {
var obj = document.getElementById(captchaImageId);
var src = obj.src;
var date = new Date();
var pos = src.indexOf('&rad=');
if (pos >= 0) { src = src.substr(0, pos); }
obj.src = src + '&rad=' + date.getTime();
return false; }
</script>
<table border="0" cellpadding="5" cellspacing="0" width="600">
<tr>
<td><b style="font-family: Comic Sans MS, cursive, sans-serif;color:#ffffff">NAME*:</b></td>
<td><input name="Name" type="text" maxlength="60" style="width:350px;"></td>
</tr><tr>
<td><b style="font-family: Comic Sans MS, cursive, sans-serif;color:#ffffff">MOBILE NUMBER*:</b></td>
<td><input name="PhoneNumber" type="text" maxlength="43" style="width:350px;" /></td>
</tr><tr>
<td><b style="font-family: Comic Sans MS, cursive, sans-serif;color:#ffffff">EMAIL ADDRESS*:</b></td>
<td><input name="FromEmailAddress" type="text" maxlength="60" style="width:350px;" /></td>
</tr><tr>
<td><b style="font-family: Comic Sans MS, cursive, sans-serif;color:#ffffff">COMMENTS AND QUESTIOINS*:</b></td>
<td><textarea name="Comments" rows="7" cols="40" style="width:350px;"></textarea></td>
</tr><tr>
<td colspan="2" align="center"> <br />
<table border="0" cellpadding="0" cellspacing="0">
<tr><td colspan="2" style="padding-bottom:18px;">

<a href="http://www.snaphost.com/captcha/" alt="create email form" title="create email form" style="color:#ffffff">
create email form</a></td></tr>
<tr valign="top"><td> <i style="font-family: Comic Sans MS, cursive, sans-serif;color:#ffffff">ENTER WEB FORM CODE*:</i>
<input name="skip_CaptchaCode" type="text" style="width:80px;" maxlength="6" />
</td><td>
<a href="http://www.snaphost.com/captcha/ReadyForms/ContactUsForm.aspx"><img id="CaptchaImage" alt="Contact Us form" title="HTML code for Contact Us form"
style="margin-left:20px;"
src="http://www.SnapHost.com/captcha/CaptchaImage.aspx?id=XDXMMWTETRAM&ImgType=2" /></a><br />
<a href="#" onclick="return ReloadCaptchaImage('CaptchaImage');"><span style="font-size:12px;">reload image</span></a> </td></tr style="font-family: Comic Sans MS, cursive, sans-serif;color:#ffffff">
</table> <br />
* - REQUIRED FIELDS. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<input name="skip_Submit" type="submit" value="Submit" />
</td></tr>
</table><br />
</form>
</body>
</html>