<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원가입</h2>
	<form id="joinForm" method="post" action="${pageContext.request.contextPath}/joinMember">
		<table border="1">
            <!-- 아이디 -->
            <tr>
                <td>아이디</td>
                <td><input type="text" name="id" id="id"></td>
            </tr>
            <!-- 비밀번호 -->
            <tr>
                <td>
                    <div>비밀번호</div>
                    <div>비밀번호확인</div>
                </td>
                   <td>
			        <div><input type="password" name="pw" id="pw"></div>
			        <div><input type="password" name="pwCheck" id="pwCheck"></div>
			    </td>

            </tr>
            <!-- 이름 -->
            <tr>
                <td>이름</td>
                <td><input type="text" name="name" id="name" value="개똥벌레~~"></td>
            </tr>
            <!-- 생일 -->
            <tr>
                <td>생일</td>
                <td><input type="date" name="birth" id="birth"></td>
            </tr>
            <!-- 나이 -->
            <tr>
                <td>나이</td>
                <td><input type="number" name="age"></td>
            </tr>
            <!-- 성별 -->
            <tr>
                <td>성별</td>
                <td>
                    <input type="radio" name="gender" value="M" required>남
					<input type="radio" name="gender" value="F">여
                </td>
            </tr>
            <!-- 취미 -->
            <tr>
                <td>취미</td>
                <td>
                    <input type="checkbox" name="hobby"  value="여행">여행
                    <input type="checkbox" name="hobby"  value="게임">게임
                    <input type="checkbox" name="hobby"  value="등산">등산
                </td>
            </tr>
            <!-- 메일주소 -->
            <tr>
                <td>메일</td>
                <td>
                    <span><input type="text" name="emailId"></span>
                    <span>@</span>
                    <select name="emailAddr" id="emailAddr">
                        <option value="">선택</option>
                        <option value="naver.com">naver.com</option>
                        <option value="daum.com">daum.net</option>
                        <option value="gmail.com">gmail.com</option>
                    </select>
                </td>
            </tr>
            <!-- 메모 -->
            <tr>
                <td>메모</td>
                <td>
                    <textarea cols="50" rows="5" name="memo" id="memo">친구가 없네~~</textarea>
                </td>
            </tr>
        </table>
        <button type="button" onclick="join()">회원가입</button>
        </form>
     <script type="text/javascript">
     	function join() {
    	    if (document.querySelector('#id').value.length < 2) {
    	        alert('아이디는 2자 이상이어야 합니다.');
    	    } else if (document.querySelector('#pw').value.length < 4) {
    	        alert('비밀번호는 4자 이상이어야 합니다.');
    	    } else if (document.querySelector('#pw').value != document.querySelector('#pwCheck').value) {
    	        alert('비밀번호가 일치하지 않습니다.');
    	    } else if (document.querySelector('#name').value.length < 2) {
    	        alert('이름 없니?');
    	    } else if (document.querySelector('#birth').value === '') {
    	        alert('생일 잘 모르니?');
    	    } else if (document.querySelector('#age').value.trim() === '' || isNaN(document.querySelector('#age').value) || document.querySelector('#age').value <= 0) {
    	        alert('나이는 양의 숫자여야 합니다.');
    	    } else if (document.querySelectorAll('input[name="gender"]:checked').length == 0) { 
    	        alert('무성이세요?');
    	    } else if (document.querySelectorAll('input[name="hobby"]:checked').length < 2) {
    	        alert('보통 취미는 2개 이상이어야 합니다.');
    	    } else if (document.querySelector('#emailId').value.length < 1 || document.querySelector('#emailAddr').value === '') {
    	        alert('이메일 확인 좀...');
    	    } else if (document.querySelector('#memo').value.length < 1) {
    	        alert('메모좀....');
    	    } else {
    	        document.querySelector('#joinForm').submit();
    	    }
    	}

</script>
</body>
</html>