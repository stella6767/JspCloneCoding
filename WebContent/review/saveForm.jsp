<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>


<textarea id="summernote" class="form-control" rows="5" id="content" name="content"></textarea> //id에 summernote

 <script> //ready 함수 지우고, 바디 밑에 삽입
  	$('#summernote').summernote({
        placeholder: '글을 쓰세요.',
        tabsize: 2,
        height: 400
      });
  </script>