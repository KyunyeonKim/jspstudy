<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회원 검색</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>회원 검색</h2>
    <form action="/members/search" method="get">
        <div class="form-check">
            <input type="radio" class="form-check-input" id="male" name="gender" value="남성" checked>
            <label class="form-check-label" for="male">남성</label>
        </div>
        <div class="form-check">
            <input type="radio" class="form-check-input" id="female" name="gender" value="여성">
            <label class="form-check-label" for="female">여성</label>
        </div>
        <button type="submit" class="btn btn-primary mt-3">검색</button>
    </form>

    <h3 class="mt-5">검색 결과</h3>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>아이디</th>
            <th>이름</th>
            <th>전화번호</th>
            <th>나이</th>
            <th>성별</th>
            <th>이메일</th>
            <th>주소</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="member" items="${members}">
            <tr>
                <td>${member.id}</td>
                <td>${member.name}</td>
                <td>${member.phone}</td>
                <td>${member.age}</td>
                <td>${member.gender}</td>
                <td>${member.email}</td>
                <td>${member.address}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
