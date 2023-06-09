<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>간단 게시판 과제</title>
</head>
<body>
    
    <jsp:include page="../common/header.jsp" />

    <div class="content">
        <br><br>
        <div class="innerOuter">
            <h2>마이 페이지</h2>
            <br>

            <form action="update.me" method="post" accept-charset="utf-8">
                <input type="hidden" name="memberPwd" value="${ loginUser.memberPwd }">
                <input type="hidden" name="memberNo" value="${ loginUser.memberNo }">
                <div class="form-group">
                    <label for="memberId">아이디 : </label>
                    <input type="text" class="form-control" id="memberId" value="${ loginUser.memberId }" name="memberId" readonly> <br>

                    <label for="memberName">이름 : </label>
                    <input type="text" class="form-control" id="memberName" value="${ loginUser.memberName }" name="memberName" required> <br>

                    <label for="email">이메일 : </label>
                    <input type="text" class="form-control" id="email" value="${ loginUser.email }" name="email"> <br>

                    <label for="phone">연락처 : </label>
                    <input type="text" class="form-control" id="phone" value="${ loginUser.phone }" name="phone"> <br>
                </div> 
                <br>
                <div class="btns" align="center">
                    <button type="button" class="btn btn-success" id="myList">작성글확인</button>
                    <button type="submit" class="btn btn-primary">수정하기</button>
                    <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#deleteForm">회원탈퇴</button>
                </div>
            </form>
        </div>
        
        <script>
        	$(function() { // 클릭 시 게시글 상세 조회
        		$("#myList").click(function() {
        			location.href = "myList.bo?mno=" + $(this).parent().parent().children().eq(1).val();
        		});
        	});
        </script>
        <br><br>
        
    </div>

    <!-- 회원탈퇴 버튼 클릭 시 보여질 Modal -->
    <div class="modal fade" id="deleteForm">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">회원 탈퇴</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <form action="delete.me" method="post">
                    <!-- Modal body -->
                    <div class="modal-body">
                        <div align="center">
                            정말로 탈퇴 하시겠습니까? <br>
                        </div>
                        <br>
                            <label for="memberPwd" class="mr-sm-2">비밀번호 : </label>
                            <input type="password" class="form-control mb-2 mr-sm-2" placeholder="Enter Password" id="memberPwd" name="memberPwd"> <br>
                            <input type="hidden" name="memberId" value="${ loginUser.memberId }">
                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer" align="center">
                        <button type="submit" class="btn btn-danger">탈퇴하기</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

	<jsp:include page="../common/footer.jsp" />

</body>
</html>