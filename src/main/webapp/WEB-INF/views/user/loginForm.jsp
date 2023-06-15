<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container mt-5" style="display:flex;justify-content: space-around;">
<div class="card" style="width:500px">
  <div class="card-body">
  <form action="/login" method="POST">
      <div class="mb-3 mt-3">
        <label for="userName" class="form-label">아이디:</label>
        <input type="text" class="form-control" name="username" id="username">
      </div>
      <div class="mb-3">
        <label for="password" class="form-label">비밀번호:</label>
        <input type="password" class="form-control" name="password" id="password">
      </div>
      <p>아직 계정이 없으신가요?<a href="/join">회원가입</a>을 먼저 해주세요.</p>
      <button class="btn btn-primary">로그인</button>
    </form>
  </div>
</div>
</div>
<%@ include file="../layout/footer.jsp"%>
<script src="/js/user.js"></script>
</html>