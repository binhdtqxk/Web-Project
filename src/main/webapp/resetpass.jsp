<%@ page import="entity.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
  <link rel="stylesheet" type="text/css" href="assets/css/resetpass.css">
  <link rel="stylesheet" type="text/css" href="assets/css/style.css">
  <link rel="stylesheet" href="assets/icon/themify-icons/themify-icons.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300&display=swap" rel="stylesheet">

  <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> -->

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Đổi mật khẩu</title>
</head>

<body>

<c:import url="header.jsp"/>
<!-- Map web -->

<div class="map">
  <ul class="sub-map">
    <li><a href="index.jsp" title="Trang chủ" class="home">Trang chủ > </a></li>
    <li>
      <p class="cur-position">Đổi mật khẩu</p>
    </li>
  </ul>
</div>

<!-- Login -->
<div id="login">
  <div class="text-center margin-bottom-30">
    <h1 class="title-head">Đổi mật khẩu</h1>
  </div>

  <form method="post" action="UpdatePass" id="customer_login" accept-charset="UTF-8"
        class="has-validation-callback"><input name="FormType" type="hidden" value="customer_login"><input
          name="utf8" type="hidden" value="true">

    <div class="form-signup clearfix">

      <label for="email-login">Email<span class="required">*</span></label>
      <input autocomplete="off" placeholder="Nhập Địa chỉ Email" type="email" id="email-login"
             class="form-control" value="" name="email" required=""
             data-validation="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,63}$"
             data-validation-error-msg="Email sai định dạng">


      <label for="pw-old">Mật khẩu cũ<span class="required">*</span></label>
      <input autocomplete="off" placeholder="Nhập Mật khẩu cũ" type="password" id="pw-old"
             class="form-control" value="" name="passwordOld"
             data-validation-error-msg="Không được để trống" data-validation="required">

      <label for="pw-new">Mật khẩu mới<span class="required">*</span></label>
      <input autocomplete="off" placeholder="Nhập Lại Mật Khẩu cũ" type="password" id="pw-new"
             class="form-control" value="" name="passwordOld"
             data-validation-error-msg="Không được để trống" data-validation="required">

      <div class="pull-xs-left text-center" style="margin-top: 15px;">
        <button class="btn btn-style btn-blues" type="submit" value="Doi mat khau">Đặt lại mật khẩu</button>
      </div>
      <div class="clearfix"></div>
      <p class="text-center">
        <a href="forgotpass.jsp" class="btn-link-style" onclick="showRecoverPasswordForm();"
           title="Quên mật khẩu?">Quên mật khẩu?</a>
      </p>
      <div class="text-login text-center">
        <p>
          Quay lại <a href="index.jsp" title="Trang chu">tại đây.</a>
        </p>
      </div>
    </div>
  </form>
</div>
<c:import url="footer.jsp"/>

</body>

</html>