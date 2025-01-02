<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회원 조회</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>회원 목록</h2>
    <form action="processSelection" method="post">
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>체크박스</th>
                <th>라디오 버튼</th>
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
                    <!-- 체크박스 -->
                    <td>
                        <input type="checkbox" name="selectedMembers" value="${member.id}">
                    </td>
                    <!-- 라디오 버튼 -->
                    <td>
                        <input type="radio" name="selectedMember" value="${member.id}">
                    </td>
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
        <button type="submit" class="btn btn-primary">선택 제출</button>
    </form>
</div>
</body>
</html>
