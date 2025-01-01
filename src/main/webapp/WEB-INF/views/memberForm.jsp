<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 등록</title>
    <style>
        form {
            width: 400px;
            margin: 0 auto;
        }
        label {
            display: block;
            margin-top: 10px;
        }
        input, select, textarea {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
        }
        button {
            margin-top: 20px;
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<h2 style="text-align:center;">회원 등록</h2>
<form action="/member/insert" method="post">
    <label for="id">아이디</label>
    <input type="text" id="id" name="id" required>

    <label for="pass">비밀번호</label>
    <input type="password" id="pass" name="pass" required>

    <label for="name">이름</label>
    <input type="text" id="name" name="name" required>

    <label for="phone">전화번호</label>
    <input type="text" id="phone" name="phone" required>

    <label for="age">나이</label>
    <input type="number" id="age" name="age" required>

    <label for="gender">성별</label>
    <select id="gender" name="gender" required>
        <option value="">선택</option>
        <option value="남성">남성</option>
        <option value="여성">여성</option>
    </select>

    <label for="email">이메일</label>
    <input type="email" id="email" name="email" required>

    <label for="address">주소</label>
    <textarea id="address" name="address" required></textarea>

    <label for="profile">프로필 파일명</label>
    <input type="text" id="profile" name="profile" placeholder="예: profile.jpg">

    <button type="submit">등록</button>
</form>
</body>
</html>
