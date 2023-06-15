<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container mt-5">
    <form>
      <div class="mb-3 mt-3">
        <label for="userName" class="form-label">userName:</label>
        <input type="text" class="form-control" id="userName">
      </div>
      <div class="mb-3">
        <label for="password" class="form-label">Password:</label>
        <input type="password" class="form-control" id="password">
      </div>
      <div class="mb-3 mt-3">
        <label for="email" class="form-label">Email:</label>
        <input type="email" class="form-control" id="email" >
      </div>
      <div class="form-check mb-3">
        <label class="form-check-label">
          <input class="form-check-input" type="checkbox" name="remember"> Remember me
        </label>
      </div>
    </form>
    <button onclick="join();" class="btn btn-primary">가입</button>
</div>
<%@ include file="../layout/footer.jsp"%>
<script src="/js/joinForm.js"></script>
<script>
cardList();
</script>
</html>